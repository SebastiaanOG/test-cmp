CREATE PROCEDURE [modelled].[sp_load_FactProjectEquipments]
    @process_run_date DATE,
    @process_run_id UNIQUEIDENTIFIER
AS
    BEGIN
        DECLARE
            @schema NVARCHAR(40) = 'modelled',
            @table NVARCHAR(40) = 'FactProjectEquipments',

            @inserted INT = 0,
            @updated INT = 0,
            @deleted INT = 0,
            @error_number INT = 0,
            @error_message NVARCHAR(4000)

        DECLARE @merge_results TABLE
        (
            action_type VARCHAR(50),
            inserted_ak_equipments VARCHAR(50) NULL,
            deleted_ak_equipments VARCHAR(50) NULL
        );

        BEGIN TRY
        BEGIN TRANSACTION

        DROP TABLE IF EXISTS #project_equipment_fact

        SELECT
            equipments.ak_quantitiesequipment                                                                           AS ak_equipments
            ,equipments.projectid                                                                                       AS ak_project
            ,ISNULL(
                equipments.datefrom
                ,CAST('0001-01-01' as date))                                                                            AS fk_date_from
            ,ISNULL(
                equipments.dateto
                ,CAST('0001-01-01' as date))                                                                            AS fk_date_to

            ,CASE
                WHEN equipments.projectid IS NULL THEN -2
                WHEN dim_project.pk_project IS NULL THEN -1
                ELSE dim_project.pk_project 
            END                                                                                                         AS fk_project
            ,CASE
                WHEN equipments.areaid IS NULL THEN -2
                WHEN dim_area.pk_area IS NULL THEN -1
                ELSE dim_area.pk_area
            END                                                                                                         AS fk_area

            ,CASE
                WHEN equipments.equipmentid IS NULL THEN -2
                WHEN dim_equipmentobject.pk_equipmentobject IS NULL THEN -1
                ELSE dim_equipmentobject.pk_equipmentobject
            END                                                                                                         AS fk_equipmentobject

            ,CASE
                WHEN equipments.equipmenttypeid IS NULL THEN -2
                WHEN dim_equipmenttype.pk_equipmenttype IS NULL THEN -1
                ELSE dim_equipmenttype.pk_equipmenttype
            END                                                                                                         AS fk_equipmenttype

            ,CASE
                WHEN equipments.ak_quantitiesequipment IS NULL THEN -2
                WHEN dim_projectequipment.pk_projectequipment IS NULL THEN -1
                ELSE dim_projectequipment.pk_projectequipment
            END                                                                                                         AS fk_projectequipment

            ,1                                                                                                          AS project_equipments_count

            ,equipments.quantityvo                                                                                      AS dredging_volume

            ,equipments.weeks                                                                                           AS equipment_weeks

            ,7 * equipments.weeks                                                                                       AS equipment_days


        INTO #project_equipment_fact
        FROM [processed].dyn_quantitiesequipment equipments
        LEFT JOIN
            [modelled].DimProject dim_project ON
            dim_project.ak_project = equipments.projectid
        LEFT JOIN
            [modelled].DimEquipmentObject dim_equipmentobject ON
            dim_equipmentobject.ak_equipmentobject = equipments.equipmentid
        LEFT JOIN
            [modelled].DimEquipmentType dim_equipmenttype ON
            dim_equipmenttype.ak_equipmenttype = equipments.equipmenttypeid

        LEFT JOIN
            [modelled].DimProjectEquipment dim_projectequipment ON
            dim_projectequipment.ak_projectequipment = equipments.ak_quantitiesequipment

        LEFT JOIN
            [modelled].DimArea dim_area ON
            dim_area.ak_area = equipments.areaid

        WHERE equipments.dwh_active = 1

        DROP TABLE IF EXISTS #project_equipment_fact_hash

        SELECT 
            ak_equipments
            ,ak_project
            ,fk_date_from
            ,fk_date_to	
            ,fk_project
            ,fk_area
            ,fk_equipmentobject
            ,fk_equipmenttype
            ,fk_projectequipment
            ,project_equipments_count
            ,dredging_volume
            ,equipment_weeks
            ,equipment_days
            ,HASHBYTES('MD5',
                CONCAT(
                     ak_project
                    ,fk_date_from
                    ,fk_date_to	
                    ,fk_project
                    ,fk_area
                    ,fk_equipmentobject
                    ,fk_equipmenttype
                    ,fk_projectequipment
                    ,project_equipments_count
                    ,dredging_volume
                    ,equipment_weeks
                    ,equipment_days
                    )
                ) as dwh_hash
            INTO #project_equipment_fact_hash
            FROM #project_equipment_fact
          

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
        MERGE modelled.FactProjectEquipments AS DESTINATION
        USING #project_equipment_fact_hash AS SOURCE
        ON (DESTINATION.ak_equipments = SOURCE.ak_equipments) 
        -- When records are matched, update the records if there is any change, keep valid_from
        -- When dwh_active = 0, update dwh_valid_from
        WHEN MATCHED AND DESTINATION.dwh_hash <> SOURCE.dwh_hash OR DESTINATION.dwh_active = 0
        THEN UPDATE SET 
             DESTINATION.[dwh_process_run_id] = @process_run_id
            ,DESTINATION.[dwh_hash] = SOURCE.dwh_hash
            ,DESTINATION.[dwh_valid_from] = CASE WHEN DESTINATION.dwh_active = 0 THEN @process_run_date ELSE DESTINATION.dwh_valid_from END
            ,DESTINATION.[dwh_valid_to] = NULL
            ,DESTINATION.[dwh_active] = 1
            ,DESTINATION.ak_equipments = SOURCE.ak_equipments
            ,DESTINATION.ak_project = SOURCE.ak_project
            ,DESTINATION.fk_date_from = SOURCE.fk_date_from
            ,DESTINATION.fk_date_to	 = SOURCE.fk_date_to	
            ,DESTINATION.fk_project = SOURCE.fk_project
            ,DESTINATION.fk_area = SOURCE.fk_area
            ,DESTINATION.fk_equipmentobject = SOURCE.fk_equipmentobject
            ,DESTINATION.fk_equipmenttype = SOURCE.fk_equipmenttype
            ,DESTINATION.fk_projectequipment = SOURCE.fk_projectequipment
            ,DESTINATION.project_equipments_count = SOURCE.project_equipments_count
            ,DESTINATION.dredging_volume = SOURCE.dredging_volume
            ,DESTINATION.equipment_weeks = SOURCE.equipment_weeks
            ,DESTINATION.equipment_days = SOURCE.equipment_days
                  
        WHEN NOT MATCHED BY TARGET 
        THEN INSERT 
        (
             dwh_valid_from
            ,dwh_valid_to
            ,dwh_active
            ,dwh_process_run_id
            ,dwh_hash
            ,ak_equipments
            ,ak_project
            ,fk_date_from
            ,fk_date_to	
            ,fk_project
            ,fk_area
            ,fk_equipmentobject
            ,fk_equipmenttype
            ,fk_projectequipment
            ,project_equipments_count
            ,dredging_volume
            ,equipment_weeks
            ,equipment_days       
        ) 
        VALUES 
        (
            @process_run_date
            ,NULL
            ,1
            ,@process_run_id
            ,SOURCE.dwh_hash
            ,SOURCE.ak_equipments
            ,SOURCE.ak_project
            ,SOURCE.fk_date_from
            ,SOURCE.fk_date_to	
            ,SOURCE.fk_project
            ,SOURCE.fk_area
            ,SOURCE.fk_equipmentobject
            ,SOURCE.fk_equipmenttype
            ,SOURCE.fk_projectequipment
            ,SOURCE.project_equipments_count
            ,SOURCE.dredging_volume
            ,SOURCE.equipment_weeks
            ,SOURCE.equipment_days
        )
        -- When there is a row that exists in target and same record does not exist in source then delete this record target
        WHEN NOT MATCHED BY SOURCE AND DESTINATION.dwh_active = 1
         THEN UPDATE SET 
             DESTINATION.[dwh_valid_to] = DATEADD(day, -1 , @process_run_date)
            ,DESTINATION.[dwh_active] = 0

        OUTPUT 
            $action, 
            INSERTED.ak_equipments,
            DELETED.ak_equipments
        INTO @merge_results;

        COMMIT
		
		SELECT @deleted = COUNT(deleted_ak_equipments) FROM @merge_results WHERE action_type = 'DELETE'
        SELECT @inserted = COUNT(inserted_ak_equipments) FROM @merge_results WHERE action_type = 'INSERT'
        SELECT @updated = COUNT(inserted_ak_equipments) FROM @merge_results WHERE action_type = 'UPDATE'

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
