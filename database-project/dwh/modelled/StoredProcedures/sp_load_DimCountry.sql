CREATE PROCEDURE [modelled].[sp_load_DimCountry]
    @process_run_date DATE,
    @process_run_id UNIQUEIDENTIFIER
AS
BEGIN
  DECLARE
      @schema NVARCHAR(20) = 'modelled',
      @table NVARCHAR(20) = 'DimCountry',

      @inserted INT = 0,
      @updated INT = 0,
      @deleted INT = 0,
      @error_number INT = 0,
      @error_message NVARCHAR(4000)

  DECLARE @merge_results TABLE
  (
      action_type VARCHAR(50),
      inserted_ak_country VARCHAR(50) NULL,
      deleted_ak_country VARCHAR(50) NULL
  );

  BEGIN TRY
  BEGIN TRANSACTION

  DROP TABLE IF EXISTS #country_active

  SELECT           
    country.ak_country                        AS [ak_country]
    ,country.name                             AS [country_name]
    ,country.[iso31661alpha2]                 AS [country_iso_31661alpha2]
    ,country.[iso31661alpha3]                 AS [country_iso_31661alpha3]
    ,country.[iso31661numeric]                AS [country_iso_31661numeric]
    ,ref_country.region_NL                    AS [region_NL]                          
    ,ref_country.region_DR                    AS [region_DR]
    ,ref_country.region_OF                    AS [region_OF]
    ,ref_country.region_OW                    AS [region_OW]
    ,ref_country.subregion_OF                 AS [subregion_OF]
    ,HASHBYTES(
      'MD5', 
      CONCAT(
        country.name                       
        ,country.[iso31661alpha2]  
        ,country.[iso31661alpha3]  
        ,country.[iso31661numeric] 
        ,ref_country.region_NL              
        ,ref_country.region_DR
        ,ref_country.region_OF
        ,ref_country.region_OW
        ,ref_country.subregion_OF
      )
    )                                         AS [dwh_hash]
  INTO #country_active
  FROM 
    [processed].[dyn_country] country
  LEFT JOIN
    [reference].[country] ref_country ON
    ref_country.country = country.name
  WHERE
    country.dwh_active = 1

  --- Check if the dimension exists
  IF OBJECT_ID(@schema + '.' + @table) IS NULL
  BEGIN
      DECLARE
          @ThrowMessage NVARCHAR(100)
          = 'The table ' + @schema + '.' + @table
          + ' does not exist.';
      THROW 50000, @ThrowMessage, 1;
  END

  -- Synchronize the target table with refreshed data from source table
  MERGE modelled.DimCountry AS DESTINATION
  USING #country_active AS SOURCE
  ON (DESTINATION.ak_country = SOURCE.ak_country) 
  -- When records are matched, update the records if there is any change, keep valid_from
  -- When dwh_active = 0, update dwh_valid_from
  WHEN MATCHED AND DESTINATION.dwh_hash <> SOURCE.dwh_hash OR DESTINATION.dwh_active = 0
  THEN UPDATE SET 
       DESTINATION.[dwh_process_run_id] = @process_run_id
      ,DESTINATION.[dwh_hash] = SOURCE.dwh_hash
      ,DESTINATION.[dwh_valid_from] = CASE WHEN DESTINATION.dwh_active = 0 THEN @process_run_date ELSE DESTINATION.dwh_valid_from END
      ,DESTINATION.[dwh_valid_to] = NULL
      ,DESTINATION.[dwh_active] = 1
      ,DESTINATION.[country_name] = SOURCE.[country_name]
      ,DESTINATION.[country_iso_31661alpha2] = SOURCE.[country_iso_31661alpha2]
      ,DESTINATION.[country_iso_31661alpha3] = SOURCE.[country_iso_31661alpha3]
      ,DESTINATION.[country_iso_31661numeric] = SOURCE.[country_iso_31661numeric]
      ,DESTINATION.[region_NL] = SOURCE.[region_NL]                 
      ,DESTINATION.[region_DR] = SOURCE.[region_DR]
      ,DESTINATION.[region_OF] = SOURCE.[region_OF]
      ,DESTINATION.[region_OW] = SOURCE.[region_OW]
      ,DESTINATION.[subregion_OF] = SOURCE.[subregion_OF]
      

            
  WHEN NOT MATCHED BY TARGET 
  THEN INSERT 
  (
    dwh_valid_from 
    ,dwh_valid_to
    ,dwh_active
    ,dwh_process_run_id
    ,dwh_hash
    ,ak_country
    ,[country_name]
    ,[country_iso_31661alpha2]
    ,[country_iso_31661alpha3]
    ,[country_iso_31661numeric]
    ,[region_NL]                 
    ,[region_DR]
    ,[region_OF]
    ,[region_OW]
    ,[subregion_OF]
  ) 
  VALUES 
  (
    @process_run_date
    ,NULL
    ,1
    ,@process_run_id
    ,SOURCE.dwh_hash
    ,SOURCE.ak_country
    ,SOURCE.[country_name]
    ,SOURCE.[country_iso_31661alpha2]
    ,SOURCE.[country_iso_31661alpha3]
    ,SOURCE.[country_iso_31661numeric]
    ,SOURCE.[region_NL]                 
    ,SOURCE.[region_DR]
    ,SOURCE.[region_OF]
    ,SOURCE.[region_OW]
    ,SOURCE.[subregion_OF]
  )

  -- When there is a row that exists in target and same record does not exist in source then delete this record target
  WHEN NOT MATCHED BY SOURCE AND DESTINATION.pk_country > 0 AND DESTINATION.dwh_active = 1
    THEN UPDATE SET 
        DESTINATION.[dwh_valid_to] = DATEADD(day, -1 , @process_run_date)
      ,DESTINATION.[dwh_active] = 0

  OUTPUT 
      $action, 
      INSERTED.ak_country,
      DELETED.ak_country
  INTO @merge_results;
  
  COMMIT

  SELECT @deleted = COUNT(deleted_ak_country) FROM @merge_results WHERE action_type = 'DELETE'
  SELECT @inserted = COUNT(inserted_ak_country) FROM @merge_results WHERE action_type = 'INSERT'
  SELECT @updated = COUNT(inserted_ak_country) FROM @merge_results WHERE action_type = 'UPDATE'

  -- Log process result
  EXECUTE [audit].[spInsertDataLogProcessed]
      @process_run_id = @process_run_id,
      @schema = @schema,
      @entity_name = @table,
      @rows_affected_insert = @inserted,
      @rows_affected_update = @updated,
      @rows_affected_delete = @deleted

  END TRY
  BEGIN CATCH
      SET @error_number = ERROR_NUMBER();
      SET @error_message = ERROR_MESSAGE();

      PRINT 'Error number: ' + CAST(@error_number AS NVARCHAR(10));
      PRINT 'Error message: ' + @error_message;
      PRINT 'Error procedure: ' + ERROR_PROCEDURE();
      PRINT 'Error line: ' + CAST(ERROR_LINE() AS NVARCHAR(10));

      IF @@TRANCOUNT > 0
          BEGIN
              ROLLBACK TRANSACTION;
          END

      --  Log process error
      EXECUTE [audit].[spErrorLog]
          @ProcessRunID = @process_run_id,
          @Schema = @schema,
          @EntityName = @table,
          @ErrorCode = @error_number,
          @ErrorDescription = @error_message;
  END CATCH

  -- Summarize process execution
  SELECT
      @process_run_date AS process_run_date,
      @process_run_id AS process_run_id,
      @inserted AS inserted,
      @updated AS updated,
      @deleted AS deleted,
      @error_message AS error_description,
      @error_number AS error_number
END;
