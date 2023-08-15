/*
    Stored Procedure template for dimension or fact with overwrite. 
    
    Full table processing

    - NOT MATCHED IN TARGET : Inserts data for new application key (ak)
    - MATCHED > Updates data for changed hashes :
        > When records are matched, update the records if there is any change, keep valid_from
        > When destination dwh_active = 0, update dwh_valid_from to process date

    - NOT MATCHED IN SOURCE Invalidates data not in temp table (not in source) :
        > Set dwh_active = 0
        > Set dwh_valid_to = filled with DATEADD(day, -1 , @process_run_date)
*/
CREATE PROCEDURE [${schema}].[sp_load_${table}]
    @process_run_date DATE,
    @process_run_id UNIQUEIDENTIFIER
AS
BEGIN
    -- Abort and rollback for all errors, not only the ones captured by BEGIN TRY
    SET XACT_ABORT ON;
    DECLARE
        @schema NVARCHAR(20) = '${schema}',
        @table NVARCHAR(60) = '${table}',

        @inserted INT = 0,
        @updated INT = 0,
        @deleted INT = 0,
        @error_number INT = 0,
        @error_message NVARCHAR(4000)

    BEGIN TRY
        BEGIN TRANSACTION

        DROP TABLE IF EXISTS #temp_table

        -- Insert data from staging table into temp table
        -- and compute the hash. Use the hash to detect changes.
        SELECT
            ${insert_into_temp_table_fields},
            HASHBYTES(
                'MD5',
                ${hashbytes_fields}
            ) AS [dwh_hash]
        INTO #temp_table
        FROM [${source_schema}].[${source_table}]

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
    USING #temp_table AS SOURCE
    ON (DESTINATION.[ak_${field_ak}] = SOURCE.[ak_${field_ak}]) 

    WHEN MATCHED AND DESTINATION.dwh_hash <> SOURCE.dwh_hash OR DESTINATION.dwh_active = 0
    THEN UPDATE SET 
        DESTINATION.[dwh_process_run_id] = @process_run_id
        ,DESTINATION.[dwh_hash] = SOURCE.dwh_hash
        ,DESTINATION.[dwh_valid_from] = CASE WHEN DESTINATION.dwh_active = 0 THEN @process_run_date ELSE DESTINATION.dwh_valid_from END
        ,DESTINATION.[dwh_valid_to] = NULL
        ,DESTINATION.[dwh_active] = 1
        ,DESTINATION.[${insert_into_temp_table_fields}] = SOURCE.[${insert_into_temp_table_fields}]
        --,............
        
    WHEN NOT MATCHED BY TARGET 
    THEN INSERT 
    (
        dwh_valid_from 
        ,dwh_valid_to
        ,dwh_active
        ,dwh_process_run_id
        ,dwh_hash
        ,[ak_${field_ak}]
        ,[${insert_into_temp_table_fields}]
        --............
    ) 
    VALUES 
    (
        @process_run_date
        ,NULL
        ,1
        ,@process_run_id
        ,SOURCE.dwh_hash
        ,[ak_${field_ak}]
        ,[${insert_into_temp_table_fields}]
        -- .........
    )

    WHEN NOT MATCHED BY SOURCE AND DESTINATION.[pk_${field_pk}] > 0 AND DESTINATION.dwh_active = 1
    THEN UPDATE SET 
         DESTINATION.[dwh_valid_to] = DATEADD(day, -1 , @process_run_date)
        ,DESTINATION.[dwh_active] = 0
    OUTPUT 
        $action, 
        INSERTED.[ak_${field_ak}],
        DELETED.[ak_${field_ak}]
    INTO @merge_results;

    COMMIT

    SELECT @deleted = COUNT(DELETED.[ak_${field_ak}]) FROM @merge_results WHERE action_type = 'DELETE'
    SELECT @inserted = COUNT(INSERTED.[ak_${field_ak}]) FROM @merge_results WHERE action_type = 'INSERT'
    SELECT @updated = COUNT(INSERTED.[ak_${field_ak}]) FROM @merge_results WHERE action_type = 'UPDATE'

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
