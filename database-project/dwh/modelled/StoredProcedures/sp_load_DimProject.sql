CREATE PROCEDURE [modelled].[sp_load_DimProject]
    @process_run_date DATE,
    @process_run_id UNIQUEIDENTIFIER
AS
    BEGIN
        DECLARE
            @schema NVARCHAR(20) = 'modelled',
            @table NVARCHAR(20) = 'DimProject',

            @inserted INT = 0,
            @updated INT = 0,
            @deleted INT = 0,
            @error_number INT = 0,
            @error_message NVARCHAR(4000)

        DECLARE @merge_results TABLE
        (
            action_type VARCHAR(50),
            inserted_ak_project VARCHAR(50) NULL,
            deleted_ak_project VARCHAR(50) NULL
        );

        BEGIN TRY
        BEGIN TRANSACTION

        DROP TABLE IF EXISTS #project_active

        SELECT
             [dwh_valid_from]
            ,[dwh_valid_to]
            ,[dwh_active]
            ,[dwh_process_run_id]
            ,HASHBYTES(
                'MD5',
                CONCAT(
                   [projectnumber]
                  ,[name]
                  ,[projectdescription]
                  ,[durationofcontract]
                  ,[chanceofwinningcommercialposition_value]
                  ,[chanceofgoingahead_value]
                  ,[productgroupsnl_value]
                  ,[dredgingcategory_value]
                  ,[tendertype_value]
                )
            )                                                   AS [dwh_hash]
            ,[ak_project]
            ,[projectnumber]                                    AS [project_number]
            ,[name]                                             AS [project_name]
            ,[projectdescription]                               AS [project_description]
            ,[durationofcontract]                               AS [project_contract_duration]
            ,[chanceofwinningcommercialposition_value]          AS [winning_chance_description]
            ,CASE 
                WHEN chanceofwinningcommercialposition_value = 'Low' THEN 5
                WHEN chanceofwinningcommercialposition_value = 'Medium' THEN 15
                WHEN chanceofwinningcommercialposition_value = 'High' THEN 33
                WHEN chanceofwinningcommercialposition_value = 'Very High' THEN 50
                ELSE 0                
            END                                                 AS [winning_chance_percent]
            ,[chanceofgoingahead_value]                         AS [going_ahead_chance_description]
            ,CASE
                WHEN chanceofgoingahead_value = 'Low' THEN 25
                WHEN chanceofgoingahead_value = 'Medium' THEN 50
                WHEN chanceofgoingahead_value = 'High' THEN 75
                WHEN chanceofgoingahead_value = 'Very High' THEN 100
            END                                                 AS [going_ahead_chance_percent]
            ,[productgroupsnl_value]                            AS [productgroups_nl]
            ,[dredgingcategory_value]                           AS [dredging_category]
            ,[tendertype_value]                                 AS [tender_type]

        INTO #project_active
        FROM [processed].[dyn_project]
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
        MERGE modelled.DimProject AS DESTINATION
        USING #project_active AS SOURCE
        ON (DESTINATION.ak_project = SOURCE.ak_project) 
        -- When records are matched, update the records if there is any change, keep valid_from
        -- When dwh_active = 0, update dwh_valid_from
        WHEN MATCHED AND DESTINATION.dwh_hash <> SOURCE.dwh_hash OR DESTINATION.dwh_active = 0
        THEN UPDATE SET 
             DESTINATION.[dwh_process_run_id] = @process_run_id
            ,DESTINATION.[dwh_hash] = SOURCE.dwh_hash
            ,DESTINATION.[dwh_valid_from] = CASE WHEN DESTINATION.dwh_active = 0 THEN @process_run_date ELSE DESTINATION.dwh_valid_from END
            ,DESTINATION.[dwh_valid_to] = NULL
            ,DESTINATION.[dwh_active] = 1
            ,DESTINATION.[project_number] = SOURCE.[project_number]
            ,DESTINATION.[project_name] = SOURCE.[project_name]
            ,DESTINATION.[project_description] = SOURCE.[project_description]
            ,DESTINATION.[project_contract_duration] = SOURCE.[project_contract_duration]
            ,DESTINATION.[winning_chance_percent] = SOURCE.[winning_chance_percent]
            ,DESTINATION.[winning_chance_description] = SOURCE.[winning_chance_description]
            ,DESTINATION.[going_ahead_chance_percent] = SOURCE.[going_ahead_chance_percent]
            ,DESTINATION.[going_ahead_chance_description] = SOURCE.[going_ahead_chance_description]
            ,DESTINATION.[productgroups_nl] = SOURCE.[productgroups_nl]
            ,DESTINATION.[dredging_category] = SOURCE.[dredging_category]
            ,DESTINATION.[tender_type] = SOURCE.[tender_type]
                  
        WHEN NOT MATCHED BY TARGET 
        THEN INSERT 
        (
            dwh_valid_from
            ,dwh_valid_to
            ,dwh_active
            ,dwh_process_run_id
            ,dwh_hash
            ,ak_project
            ,project_number
            ,project_name
            ,project_description
            ,project_contract_duration
            ,winning_chance_percent
            ,winning_chance_description
            ,going_ahead_chance_percent
            ,going_ahead_chance_description
            ,productgroups_nl
            ,dredging_category
            ,tender_type            
        ) 
        VALUES 
        (
            @process_run_date
            ,NULL
            ,1
            ,@process_run_id
            ,SOURCE.dwh_hash
            ,SOURCE.ak_project
            ,SOURCE.[project_number]
            ,SOURCE.[project_name]
            ,SOURCE.[project_description]
            ,SOURCE.[project_contract_duration]
            ,SOURCE.[winning_chance_percent]
            ,SOURCE.[winning_chance_description]
            ,SOURCE.[going_ahead_chance_percent]
            ,SOURCE.[going_ahead_chance_description]
            ,SOURCE.[productgroups_nl]
            ,SOURCE.[dredging_category]
            ,SOURCE.[tender_type]
        )
        -- When there is a row that exists in target and same record does not exist in source then delete this record target
        WHEN NOT MATCHED BY SOURCE AND DESTINATION.pk_project > 0 AND DESTINATION.dwh_active = 1
         THEN UPDATE SET 
             DESTINATION.[dwh_valid_to] = DATEADD(day, -1 , @process_run_date)
            ,DESTINATION.[dwh_active] = 0

        OUTPUT 
            $action, 
            INSERTED.ak_project,
            DELETED.ak_project
        INTO @merge_results;
       
        COMMIT
		
		SELECT @deleted = COUNT(deleted_ak_project) FROM @merge_results WHERE action_type = 'DELETE'
        SELECT @inserted = COUNT(inserted_ak_project) FROM @merge_results WHERE action_type = 'INSERT'
        SELECT @updated = COUNT(inserted_ak_project) FROM @merge_results WHERE action_type = 'UPDATE'

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
