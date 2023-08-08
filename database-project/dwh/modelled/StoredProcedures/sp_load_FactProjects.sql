CREATE PROCEDURE [modelled].[sp_load_FactProjects]
    @process_run_date DATE,
    @process_run_id UNIQUEIDENTIFIER
AS
    BEGIN
        DECLARE
            @schema NVARCHAR(20) = 'modelled',
            @table NVARCHAR(20) = 'FactProjects',

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

        DROP TABLE IF EXISTS #project_fact

        SELECT
            project.[ak_project]                                                                                        AS ak_project
            ,COALESCE(
                project.expectedstartofwork,
                DATEADD(day, dim_dredgingcategory.default_days_to_startdate_of_work, 
                    ISNULL(project.tenderdate, CAST(project.createdon as date)))
                ,CAST('0001-01-01' as date))                                                                            AS fk_expected_startdate_of_work
            ,ISNULL(
                DATEADD(day, dim_dredgingcategory.default_days_to_startdate_of_work, 
                    ISNULL(project.tenderdate, CAST(project.createdon as date))) 
                ,CAST('0001-01-01' as date))                                                                            AS fk_default_expected_startdate_of_work
            ,ISNULL(project.awarddateexpected, CAST('0001-01-01' as date))                                              AS fk_expected_awarddate

            ,COALESCE(
                project.tenderdate
                ,DATEADD(day, dim_dredgingcategory.default_days_to_tenderdate, CAST(project.createdon as date))
                ,CAST('0001-01-01' as date)
            )                                                                                                           AS fk_tenderdate
            ,ISNULL(
                DATEADD(day, dim_dredgingcategory.default_days_to_tenderdate, CAST(project.createdon as date))
                ,CAST('0001-01-01' as date)
            )                                                                                                           AS fk_default_tenderdate

            ,CASE
                WHEN project.ak_project IS NULL THEN -2
                WHEN dim_project.pk_project IS NULL THEN -1
                ELSE dim_project.pk_project 
            END                                                                                                         AS fk_project
            ,CASE
                WHEN project.dredgingcategory IS NULL THEN -2
                WHEN dim_dredgingcategory.pk_dredgingcategory IS NULL THEN -1
                ELSE dim_dredgingcategory.pk_dredgingcategory 
            END                                                                                                         AS fk_dredgingcategory
            ,CASE
                WHEN project.statuscode IS NULL THEN -2
                WHEN dim_projectstatus.pk_projectstatus IS NULL THEN -1
                ELSE dim_projectstatus.pk_projectstatus
            END                                                                                                         AS fk_projectstatus
            ,CASE
                WHEN project.statuscode IS NULL THEN -2
                WHEN dim_stage.pk_stage IS NULL THEN -1
                ELSE dim_stage.pk_stage
            END                                                                                                         AS fk_stage
            ,CASE
                WHEN project.tendertype IS NULL THEN -2
                WHEN dim_tendertype.pk_tendertype IS NULL THEN -1
                ELSE dim_tendertype.pk_tendertype
            END                                                                                                         AS fk_tendertype
            ,CASE
                WHEN projectfinancial.voshareineuro IS NULL THEN -2
                WHEN dim_contractvalueclass.pk_contractvalue_class IS NULL THEN -1
                ELSE dim_contractvalueclass.pk_contractvalue_class
            END                                                                                                         AS fk_contractvalue_class
            ,CASE
                WHEN project.areaid IS NULL THEN -2
                WHEN dim_area.pk_area IS NULL THEN -1
                ELSE dim_area.pk_area
            END                                                                                                         AS fk_area
            ,CASE
                WHEN project.subareaid IS NULL THEN -2
                WHEN dim_subarea.pk_subarea IS NULL THEN -1
                ELSE dim_subarea.pk_subarea
            END                                                                                                         AS fk_subarea

            ,CASE
                WHEN project.countryid IS NULL THEN -2
                WHEN dim_country.pk_country IS NULL THEN -1
                ELSE dim_country.pk_country
            END                                                                                                         AS fk_country
            ,1                                                                                                          AS project_count

            ,projectfinancial.voshareineuro                                                                             AS total_VO_share_value
            ,projectfinancial.totalcontractvalueeuro                                                                    AS total_contract_value
            ,projectfinancial.cashflowdipleuro                                                                          AS [cashflow_D&I]
            ,projectfinancial.overheadexpenseseuro                                                                      AS total_overhead_expenses
            ,projectfinancial.cashflowdipleuro + projectfinancial.overheadexpenseseuro + 
                (projectfinancial.voshareineuro * 0.09)                                                                 AS [total_gross_margin_D&I_PL_GO]
            
            ,ISNULL(dim_project.going_ahead_chance_percent / 100, 0.5) * 
                ISNULL(projectfinancial.voshareineuro, dim_dredgingcategory.default_contract_value)                     AS potential_tender_volume
            
            ,(dim_project.winning_chance_percent / 100) * 
                ISNULL(dim_project.going_ahead_chance_percent / 100, 0.5) * 
                ISNULL(projectfinancial.voshareineuro, dim_dredgingcategory.default_contract_value)                     AS potential_award_value
            
            ,(dim_project.going_ahead_chance_percent / 100) * projectfinancial.cashflowdipleuro                         AS [potential_cashflow_D&I_PL_GO]
            ,(projectfinancial.cashflowdipleuro + projectfinancial.overheadexpenseseuro) * 
                (dim_project.winning_chance_percent / 100)                                                              AS [potential_gross_margin_D&I_PL_GO]
            ,dim_dredgingcategory.default_contract_value                                                                AS [default_VO_contract_value]

        INTO #project_fact
        FROM [processed].[dyn_project] project
        LEFT JOIN
            [modelled].DimProject dim_project ON
            dim_project.ak_project = project.ak_project 
        LEFT JOIN
            [modelled].DimDredgingCategory dim_dredgingcategory ON
            dim_dredgingcategory.ak_dredgingcategory = project.dredgingcategory
        LEFT JOIN
            [modelled].DimProjectStatus dim_projectstatus ON
            dim_projectstatus.ak_projectstatus = project.statuscode

        LEFT JOIN
            [modelled].DimStage dim_stage ON
            dim_stage.statuscode = project.statuscode_value AND
            ((dim_stage.typetender = project.tendertype_value) OR
            (dim_stage.typetender = 'N/A' AND project.tendertype_value IS NULL))
        
        LEFT JOIN
            [modelled].DimTenderType dim_tendertype ON
            dim_tendertype.ak_tendertype = project.tendertype

        LEFT JOIN
            [modelled].DimArea dim_area ON
            dim_area.ak_area = project.areaid

        LEFT JOIN
            [modelled].DimSubArea dim_subarea ON
            dim_subarea.ak_subarea = project.subareaid

        LEFT JOIN
            [modelled].DimCountry dim_country ON
            dim_country.ak_country = project.countryid

        LEFT JOIN
            [processed].dyn_projectfinancial projectfinancial ON
            projectfinancial.project = project.ak_project AND
            projectfinancial.dwh_active = 1
        
        LEFT JOIN
            [modelled].DimContractValueClass dim_contractvalueclass ON
            dim_contractvalueclass.total_VO_share_from <= projectfinancial.voshareineuro AND 
            projectfinancial.voshareineuro < dim_contractvalueclass.total_VO_share_to

        WHERE project.dwh_active = 1

        DROP TABLE IF EXISTS #project_fact_hash

        SELECT 
            ak_project
            ,fk_expected_startdate_of_work
            ,fk_default_expected_startdate_of_work
            ,fk_expected_awarddate
            ,fk_tenderdate
            ,fk_default_tenderdate
            ,fk_project
            ,fk_dredgingcategory
            ,fk_projectstatus
            ,fk_stage
            ,fk_tendertype
            ,fk_contractvalue_class
            ,fk_area
            ,fk_subarea
            ,fk_country
            ,project_count
            ,total_VO_share_value
            ,total_contract_value
            ,[cashflow_D&I]
            ,total_overhead_expenses
            ,[total_gross_margin_D&I_PL_GO]
            ,potential_tender_volume
            ,potential_award_value
            ,[potential_cashflow_D&I_PL_GO]
            ,[potential_gross_margin_D&I_PL_GO]
            ,default_VO_contract_value
            ,HASHBYTES('MD5',
                CONCAT(
                    fk_expected_startdate_of_work
                    ,fk_default_expected_startdate_of_work
                    ,fk_expected_awarddate
                    ,fk_tenderdate
                    ,fk_default_tenderdate
                    ,fk_project
                    ,fk_dredgingcategory
                    ,fk_projectstatus
                    ,fk_stage
                    ,fk_tendertype
                    ,fk_contractvalue_class
                    ,fk_area
                    ,fk_subarea
                    ,fk_country
                    ,project_count
                    ,total_VO_share_value
                    ,total_contract_value
                    ,[cashflow_D&I]
                    ,total_overhead_expenses
                    ,[total_gross_margin_D&I_PL_GO]
                    ,potential_tender_volume
                    ,potential_award_value
                    ,[potential_cashflow_D&I_PL_GO]
                    ,[potential_gross_margin_D&I_PL_GO]
                    ,default_VO_contract_value
                    )
                ) as dwh_hash
            INTO #project_fact_hash
            FROM #project_fact
          

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
        MERGE modelled.FactProjects AS DESTINATION
        USING #project_fact_hash AS SOURCE
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
            ,DESTINATION.fk_expected_startdate_of_work = SOURCE.fk_expected_startdate_of_work
            ,DESTINATION.fk_default_expected_startdate_of_work = SOURCE.fk_default_expected_startdate_of_work
            ,DESTINATION.fk_expected_awarddate = SOURCE.fk_expected_awarddate
            ,DESTINATION.fk_tenderdate = SOURCE.fk_tenderdate
            ,DESTINATION.fk_default_tenderdate = SOURCE.fk_default_tenderdate
            ,DESTINATION.fk_project = SOURCE.fk_project
            ,DESTINATION.fk_dredgingcategory = SOURCE.fk_dredgingcategory
            ,DESTINATION.fk_projectstatus = SOURCE.fk_projectstatus
            ,DESTINATION.fk_stage = SOURCE.fk_stage
            ,DESTINATION.fk_tendertype = SOURCE.fk_tendertype
            ,DESTINATION.fk_contractvalue_class = SOURCE.fk_contractvalue_class
            ,DESTINATION.fk_area = SOURCE.fk_area
            ,DESTINATION.fk_subarea = SOURCE.fk_subarea
            ,DESTINATION.fk_country = SOURCE.fk_country
            ,DESTINATION.project_count = SOURCE.project_count
            ,DESTINATION.total_VO_share_value = SOURCE.total_VO_share_value
            ,DESTINATION.total_contract_value = SOURCE.total_contract_value
            ,DESTINATION.[cashflow_D&I] = SOURCE.[cashflow_D&I]
            ,DESTINATION.total_overhead_expenses = SOURCE.total_overhead_expenses
            ,DESTINATION.[total_gross_margin_D&I_PL_GO] = SOURCE.[total_gross_margin_D&I_PL_GO]
            ,DESTINATION.potential_tender_volume = SOURCE.potential_tender_volume
            ,DESTINATION.potential_award_value = SOURCE.potential_award_value
            ,DESTINATION.[potential_cashflow_D&I_PL_GO] = SOURCE.[potential_cashflow_D&I_PL_GO]
            ,DESTINATION.[potential_gross_margin_D&I_PL_GO] = SOURCE.[potential_gross_margin_D&I_PL_GO]
            ,DESTINATION.default_VO_contract_value  = SOURCE.default_VO_contract_value 
                  
        WHEN NOT MATCHED BY TARGET 
        THEN INSERT 
        (
             dwh_valid_from
            ,dwh_valid_to
            ,dwh_active
            ,dwh_process_run_id
            ,dwh_hash
            ,ak_project
            ,fk_expected_startdate_of_work
            ,fk_default_expected_startdate_of_work
            ,fk_expected_awarddate
            ,fk_tenderdate
            ,fk_default_tenderdate
            ,fk_project
            ,fk_dredgingcategory
            ,fk_projectstatus
            ,fk_stage
            ,fk_tendertype
            ,fk_contractvalue_class
            ,fk_area
            ,fk_subarea
            ,fk_country
            ,project_count
            ,total_VO_share_value
            ,total_contract_value
            ,[cashflow_D&I]
            ,total_overhead_expenses
            ,[total_gross_margin_D&I_PL_GO]
            ,potential_tender_volume
            ,potential_award_value
            ,[potential_cashflow_D&I_PL_GO]
            ,[potential_gross_margin_D&I_PL_GO]
            ,default_VO_contract_value       
        ) 
        VALUES 
        (
            @process_run_date
            ,NULL
            ,1
            ,@process_run_id
            ,SOURCE.dwh_hash
            ,SOURCE.ak_project
            ,SOURCE.fk_expected_startdate_of_work
            ,SOURCE.fk_default_expected_startdate_of_work
            ,SOURCE.fk_expected_awarddate
            ,SOURCE.fk_tenderdate
            ,SOURCE.fk_default_tenderdate
            ,SOURCE.fk_project
            ,SOURCE.fk_dredgingcategory
            ,SOURCE.fk_projectstatus
            ,SOURCE.fk_stage
            ,SOURCE.fk_tendertype
            ,SOURCE.fk_contractvalue_class
            ,SOURCE.fk_area
            ,SOURCE.fk_subarea
            ,SOURCE.fk_country
            ,SOURCE.project_count
            ,SOURCE.total_VO_share_value
            ,SOURCE.total_contract_value
            ,SOURCE.[cashflow_D&I]
            ,SOURCE.total_overhead_expenses
            ,SOURCE.[total_gross_margin_D&I_PL_GO]
            ,SOURCE.potential_tender_volume
            ,SOURCE.potential_award_value
            ,SOURCE.[potential_cashflow_D&I_PL_GO]
            ,SOURCE.[potential_gross_margin_D&I_PL_GO]
            ,SOURCE.default_VO_contract_value  
        )
        -- When there is a row that exists in target and same record does not exist in source then delete this record target
        WHEN NOT MATCHED BY SOURCE AND DESTINATION.ak_project > 0 AND DESTINATION.dwh_active = 1
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
