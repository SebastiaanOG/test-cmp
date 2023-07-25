CREATE PROCEDURE [modelled].[sp_load_DimArea]
    @process_run_date DATE,
    @process_run_id UNIQUEIDENTIFIER
AS
    BEGIN
        DECLARE
            @schema NVARCHAR(20) = 'modelled',
            @table NVARCHAR(20) = 'DimArea',

            @inserted INT = 0,
            @updated INT = 0,
            @deleted INT = 0,
            @error_number INT = 0,
            @error_message NVARCHAR(4000)

        DECLARE @merge_results TABLE
        (
            action_type VARCHAR(50),
            inserted_ak_area VARCHAR(50) NULL,
            deleted_ak_area VARCHAR(50) NULL
        );

        BEGIN TRY
        BEGIN TRANSACTION
    
        DROP TABLE IF EXISTS #area_active

        SELECT
             [dwh_valid_from]
            ,[dwh_valid_to]
            ,[dwh_active]
            ,[dwh_process_run_id]
            ,HASHBYTES(
                'MD5', 
                CONCAT(
                    [name]
                    ,areaabbreviation
                    ,businessunitid_value
                    ,ownerid_value
                )
            )                               AS [dwh_hash]
            ,ak_area
            ,[name]                         AS [area_name]
            ,CASE
                WHEN [name] = 'Asia Australia' THEN 'Middle East, West Asia Australia'
                WHEN [name] = 'Dravosa' THEN 'Subsidiaries'
                WHEN [name] = 'Middle East, West Asia' THEN 'Middle East, West Asia Australia'
                WHEN [name] = 'Netherlands' THEN 'Europe'
                WHEN [name] = 'WICKS' THEN 'Subsidiaries'
            ELSE [name]
            END                             AS [area_groupname]
            ,[areaabbreviation]              AS [area_abbrevation]
            ,[businessunitid_value]         AS [area_businessunit]
            ,[ownerid_value]                AS [area_owner]


            ,CASE
                WHEN [name] IN ('Subsidiaries','WICKS','Dravosa') THEN [name] 
                ELSE 'Van Oord' 
            END                             AS [company]
                    
        
        INTO #area_active
        FROM [processed].[dyn_area]
        WHERE dwh_active = 1


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
        MERGE modelled.DimArea AS DESTINATION
        USING #area_active AS SOURCE
        ON (DESTINATION.ak_area = SOURCE.ak_area) 
        -- When records are matched, update the records if there is any change
        WHEN MATCHED AND DESTINATION.dwh_hash <> SOURCE.dwh_hash OR DESTINATION.dwh_active = 0
        THEN UPDATE SET 
             DESTINATION.[dwh_process_run_id] = @process_run_id
            ,DESTINATION.[dwh_hash] = SOURCE.dwh_hash
            ,DESTINATION.[dwh_valid_from] = CASE WHEN DESTINATION.dwh_active = 0 THEN @process_run_date ELSE DESTINATION.dwh_valid_from END
            ,DESTINATION.[dwh_valid_to] = NULL
            ,DESTINATION.[dwh_active] = 1        
            ,DESTINATION.area_name = SOURCE.area_name
            ,DESTINATION.area_groupname = SOURCE.area_groupname
            ,DESTINATION.area_abbrevation = SOURCE.area_abbrevation
            ,DESTINATION.area_businessunit = SOURCE.area_businessunit
            ,DESTINATION.area_owner = SOURCE.area_owner
            ,DESTINATION.company = SOURCE.company
        -- When no records are matched, insert the incoming records from source table to target table
        WHEN NOT MATCHED BY TARGET 
        THEN INSERT 
            (dwh_valid_from, dwh_valid_to, dwh_active, dwh_process_run_id, dwh_hash, ak_area, area_name, area_groupname, area_abbrevation, area_businessunit, area_owner, company) 
        VALUES 
            (@process_run_date, NULL, 1, @process_run_id, SOURCE.dwh_hash, SOURCE.ak_area, SOURCE.area_name, SOURCE.area_groupname, SOURCE.area_abbrevation, SOURCE.area_businessunit, SOURCE.area_owner, SOURCE.company)

        -- When there is a row that exists in target and same record does not exist in source then delete this record target
        WHEN NOT MATCHED BY SOURCE AND DESTINATION.pk_area > 0 AND DESTINATION.dwh_active = 1
         THEN UPDATE SET 
             DESTINATION.[dwh_valid_to] = @process_run_date
            ,DESTINATION.[dwh_active] = 0

        OUTPUT 
            $action, 
            INSERTED.ak_area,
            DELETED.ak_area
        INTO @merge_results;

        COMMIT
		
		SELECT @deleted = COUNT(deleted_ak_area) FROM @merge_results WHERE action_type = 'DELETE'
        SELECT @inserted = COUNT(inserted_ak_area) FROM @merge_results WHERE action_type = 'INSERT'
        SELECT @updated = COUNT(inserted_ak_area) FROM @merge_results WHERE action_type = 'UPDATE'

        -- Log process result
        EXECUTE [audit].[spInsertDataLogProcessed]
            @process_run_id = @process_run_id,
            @schema = @schema,
            @entity_name = @table,
            @rows_affected_insert = @inserted,
            @rows_affected_update = @updated,
            @rows_affected_delete = 0

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
