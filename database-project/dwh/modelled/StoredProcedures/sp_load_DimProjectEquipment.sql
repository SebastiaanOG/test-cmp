CREATE OR ALTER PROCEDURE [modelled].[sp_load_DimProjectEquipment]
    @process_run_date DATE,
    @process_run_id UNIQUEIDENTIFIER
AS
    BEGIN
        DECLARE
            @schema NVARCHAR(20) = 'modelled',
            @table NVARCHAR(20) = 'DimProjectEquipment',

            @inserted INT = 0,
            @updated INT = 0,
            @deleted INT = 0,
            @error_number INT = 0,
            @error_message NVARCHAR(4000)

        DECLARE @merge_results TABLE
        (
            action_type VARCHAR(50),
            inserted_ak_projectequipment VARCHAR(50) NULL,
            deleted_ak_projectequipment VARCHAR(50) NULL
        );

        BEGIN TRY
        BEGIN TRANSACTION

        DROP TABLE IF EXISTS #projectequipment

        SELECT 
            ak_quantitiesequipment            AS [ak_projectequipment],
            [name]                            AS [projectequipment_description],
            groupid_value                     AS [projectequipment_activity],
            workelementid_value               AS [projectequipment_product_services],
            scopeid_value                     AS [projectequipment_scope],
            soiltype_value                    AS [projectequipment_soiltype],
            quantityvo                        AS [dredging_volume],
            unitid_value                      AS [dredging_volume_unit],
            equipmentremarks                  AS [projectequipment_remarks],
            equipmentid_value                 AS [equipment_name]


            --HASHBYTES('MD5', [name])          AS [dwh_hash]
        -- INTO #projectequipment
        FROM processed.dyn_quantitiesequipment
        WHERE dwh_active = 1

        SELECT TOP 10 * FROM processed.dyn_quantitiesequipment

        --- Check if the dimension exists ---
        IF OBJECT_ID(@schema + '.' + @table) IS NULL
        BEGIN
            DECLARE
                @ThrowMessage NVARCHAR(100)
                = 'The table ' + @schema + '.' + @table
                + ' does not exist.';
            THROW 50000, @ThrowMessage, 1;
        END

        -- Synchronize the target table with refreshed data from source table
        MERGE modelled.DimProjectEquipment AS DESTINATION
        USING #projectequipment AS SOURCE
        ON (DESTINATION.ak_projectequipment = SOURCE.ak_projectequipment) 
        -- When records are matched, update the records if there is any change, keep valid_from
        -- When dwh_active = 0, update dwh_valid_from
        WHEN MATCHED AND DESTINATION.dwh_hash <> SOURCE.dwh_hash OR DESTINATION.dwh_active = 0
        THEN UPDATE SET 
             DESTINATION.[dwh_process_run_id] = @process_run_id
            ,DESTINATION.[dwh_hash] = SOURCE.dwh_hash
            ,DESTINATION.[dwh_valid_from] = CASE WHEN DESTINATION.dwh_active = 0 THEN @process_run_date ELSE DESTINATION.dwh_valid_from END
            ,DESTINATION.[dwh_valid_to] = NULL
            ,DESTINATION.[dwh_active] = 1
            ,DESTINATION.[projectequipment_name] = SOURCE.[projectequipment_name]

                  
        WHEN NOT MATCHED BY TARGET 
        THEN INSERT 
            (dwh_valid_from, dwh_valid_to, dwh_active, dwh_process_run_id, dwh_hash, ak_projectequipment, projectequipment_name) 
        VALUES 
            (@process_run_date, NULL, 1, @process_run_id, SOURCE.dwh_hash, SOURCE.ak_projectequipment, SOURCE.projectequipment_name)

        -- When there is a row that exists in target and same record does not exist in source then delete this record target
        WHEN NOT MATCHED BY SOURCE AND DESTINATION.pk_projectequipment > 0 AND DESTINATION.dwh_active = 1
         THEN UPDATE SET 
             DESTINATION.[dwh_valid_to] = DATEADD(day, -1 , @process_run_date)
            ,DESTINATION.[dwh_active] = 0

        -- $action specifies a column of type nvarchar(10) in the OUTPUT clause that returns 
        -- one of three values for each row: 'INSERT', 'UPDATE', or 'DELETE' according to the action that was performed on that row
        OUTPUT 
            $action, 
            INSERTED.ak_projectequipment,
            DELETED.ak_projectequipment
        INTO @merge_results;
       
        COMMIT
		
		SELECT @deleted = COUNT(deleted_ak_projectequipment) FROM @merge_results WHERE action_type = 'DELETE'
        SELECT @inserted = COUNT(inserted_ak_projectequipment) FROM @merge_results WHERE action_type = 'INSERT'
        SELECT @updated = COUNT(inserted_ak_projectequipment) FROM @merge_results WHERE action_type = 'UPDATE'

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
