CREATE PROCEDURE [processed].[sp_load_dyn_projectfinancial]
    @process_run_date DATE,
    @process_run_id UNIQUEIDENTIFIER
AS
BEGIN
    -- Abort and rollback for all errors, not only the ones captured by BEGIN TRY
    SET XACT_ABORT ON;
    DECLARE
        @schema NVARCHAR(20) = 'processed',
        @table NVARCHAR(60) = 'dyn_projectfinancial',

        @inserted INT = 0,
        @updated INT = 0,
        @deleted INT = 0,
        @error_number INT = 0,
        @error_message NVARCHAR(4000)

    BEGIN TRY
        BEGIN TRANSACTION

        -- Create temp table to store the data from the staging table
        IF OBJECT_ID('tempdb..#temp_dyn_projectfinancial') IS NOT NULL
            BEGIN
                DROP TABLE #temp_dyn_projectfinancial
            END

        CREATE TABLE #temp_dyn_projectfinancial
        (
            [ak_projectfinancial] NVARCHAR(36),
            [name] NVARCHAR(100),
            [exchangerate1] DECIMAL(18, 3),
            [additionalcoststenderbudget] DECIMAL(18, 0),
            [areaid] NVARCHAR(36),
            [areaid_value] NVARCHAR(100),
            [budgetexpectedpricelevelclienteuro] DECIMAL(18, 0),
            [cashflowdipleuro] DECIMAL(18, 0),
            [cashflowdiplpercent] DECIMAL(18, 2),
            [depreciationinvestmenteuro] DECIMAL(18, 0),
            [depreciationinvestmentpercent] DECIMAL(18, 2),
            [exchangerate2] DECIMAL(18, 3),
            [expectedpricelevelcompetitioneuro] DECIMAL(18, 0),
            [externalstaffcostestimate] DECIMAL(18, 0),
            [inflationeuro] DECIMAL(18, 0),
            [inflationpercent] DECIMAL(18, 2),
            [internalstaffcostestimate] DECIMAL(18, 0),
            [localtaxeseuro] DECIMAL(18, 0),
            [localtaxespercent] DECIMAL(18, 2),
            [mainequipmentdieuro] DECIMAL(18, 0),
            [mainequipmentdipercent] DECIMAL(18, 2),
            [mainprojectfinancial] NVARCHAR(36),
            [mainprojectfinancial_value] NVARCHAR(100),
            [maxfinancingeur] DECIMAL(18, 0),
            [maxfinancingpercent] DECIMAL(18, 2),
            [mobdemobeuro] DECIMAL(18, 0),
            [mobdemobpercent] DECIMAL(18, 2),
            [outofpocketcosts] DECIMAL(18, 0),
            [overheadexpenseseuro] DECIMAL(18, 0),
            [overheadexpensespercent] DECIMAL(18, 2),
            [profitlosseuro] DECIMAL(18, 0),
            [profitlosspercent] DECIMAL(18, 2),
            [project] NVARCHAR(36),
            [project_value] NVARCHAR(200),
            [purchaseeuro] DECIMAL(18, 0),
            [purchasepercent] DECIMAL(18, 2),
            [remainingcostseuro] DECIMAL(18, 0),
            [remainingcostspercent] DECIMAL(18, 2),
            [remarksroughestimate] NVARCHAR(4000),
            [riskeuro] DECIMAL(18, 0),
            [riskpercent] DECIMAL(18, 2),
            [sitesupervisioncostseuro] DECIMAL(18, 0),
            [sitesupervisioncostspercent] DECIMAL(18, 2),
            [specificinvestmenteuro] DECIMAL(18, 0),
            [specificinvestmentpercent] DECIMAL(18, 2),
            [tenderbudgetremarks] NVARCHAR(4000),
            [totalcontractvalueeuro] DECIMAL(18, 0),
            [totalcontractvaluetender_currency] DECIMAL(18, 0),
            [totalcontractvaluetender_currency_base] DECIMAL(18, 0),
            [totalcoststenderbudget] DECIMAL(18, 0),
            [totaleurocopy] DECIMAL(18, 0),
            [totaleurovanoordshare] DECIMAL(18, 0),
            [totalpercentvanoordshare] DECIMAL(18, 2),
            [valueofsubcontractseuro] DECIMAL(18, 0),
            [valueofsubcontractspercent] DECIMAL(18, 2),
            [valueoftotalworksvoparteuro] DECIMAL(18, 0),
            [valueoftotalworksvopartpercent] DECIMAL(18, 2),
            [voshareineuro] DECIMAL(18, 0),
            [vosharepercent] DECIMAL(18, 2),
            [withholdingtaxeuro] DECIMAL(18, 0),
            [withholdingtaxpercent] DECIMAL(18, 2),
            [workingcapital] DECIMAL(18, 0),
            [transactioncurrencyid_value] NVARCHAR(100),
            [createdby_value] NVARCHAR(200),
            [createdon] DATETIME2(7),
            [createdonbehalfby_value] NVARCHAR(200),
            [modifiedby_value] NVARCHAR(200),
            [modifiedon] DATETIME2(7),
            [ownerid_value] NVARCHAR(200),
            [statecode] INT,
            [statecode_value] NVARCHAR(4000),
            [statuscode] INT,
            [statuscode_value] NVARCHAR(4000),
            [versionnumber] BIGINT,
            [dwh_hash] VARBINARY(8000) NOT NULL
        )

        -- Insert data from staging table into temp table
        -- and compute the hash. Use the hash to detect changes.
        INSERT INTO #temp_dyn_projectfinancial
        SELECT
            [hso_projectfinancialid],
            [hso_name],
            [exchangerate],
            [hso_additionalcoststenderbudget],
            [hso_areaid],
            [_hso_areaid_value],
            [hso_budgetexpectedpricelevelclienteuro],
            [hso_cashflowdipleuro],
            [hso_cashflowdiplpercent],
            [hso_depreciationinvestmenteuro],
            [hso_depreciationinvestmentpercent],
            [hso_exchangerate],
            [hso_expectedpricelevelcompetitioneuro],
            [hso_externalstaffcostestimate],
            [hso_inflationeuro],
            [hso_inflationpercent],
            [hso_internalstaffcostestimate],
            [hso_localtaxeseuro],
            [hso_localtaxespercent],
            [hso_mainequipmentdieuro],
            [hso_mainequipmentdipercent],
            [hso_mainprojectfinancial],
            [_hso_mainprojectfinancial_value],
            [hso_maxfinancingeur],
            [hso_maxfinancingpercent],
            [hso_mobdemobeuro],
            [hso_mobdemobpercent],
            [hso_outofpocketcosts],
            [hso_overheadexpenseseuro],
            [hso_overheadexpensespercent],
            [hso_profitlosseuro],
            [hso_profitlosspercent],
            [hso_project],
            [_hso_project_value],
            [hso_purchaseeuro],
            [hso_purchasepercent],
            [hso_remainingcostseuro],
            [hso_remainingcostspercent],
            LEFT([hso_remarksroughestimate], 4000),
            [hso_riskeuro],
            [hso_riskpercent],
            [hso_sitesupervisioncostseuro],
            [hso_sitesupervisioncostspercent],
            [hso_specificinvestmenteuro],
            [hso_specificinvestmentpercent],
            LEFT([hso_tenderbudgetremarks], 4000),
            [hso_totalcontractvalueeuro],
            [hso_totalcontractvaluetender_currency],
            [hso_totalcontractvaluetender_currency_base],
            [hso_totalcoststenderbudget],
            [hso_totaleurocopy],
            [hso_totaleurovanoordshare],
            [hso_totalpercentvanoordshare],
            [hso_valueofsubcontractseuro],
            [hso_valueofsubcontractspercent],
            [hso_valueoftotalworksvoparteuro],
            [hso_valueoftotalworksvopartpercent],
            [hso_voshareineuro],
            [hso_vosharepercent],
            [hso_withholdingtaxeuro],
            [hso_withholdingtaxpercent],
            [hso_workingcapital],
            [_transactioncurrencyid_value],
            [_createdby_value],
            [createdon],
            [_createdonbehalfby_value],
            [_modifiedby_value],
            [modifiedon],
            [_ownerid_value],
            [statecode],
            LEFT([_statecode_value], 4000),
            [statuscode],
            LEFT([_statuscode_value], 4000),
            [versionnumber],
            HASHBYTES(
                'MD5',
                ISNULL([hso_projectfinancialid], '')
                + ISNULL([hso_name], '')
                + ISNULL(CAST([exchangerate] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_additionalcoststenderbudget] AS NVARCHAR(50)), '')
                + ISNULL([hso_areaid], '')
                + ISNULL([_hso_areaid_value], '')
                + ISNULL(CAST([hso_budgetexpectedpricelevelclienteuro] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_cashflowdipleuro] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_cashflowdiplpercent] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_depreciationinvestmenteuro] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_depreciationinvestmentpercent] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_exchangerate] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_expectedpricelevelcompetitioneuro] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_externalstaffcostestimate] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_inflationeuro] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_inflationpercent] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_internalstaffcostestimate] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_localtaxeseuro] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_localtaxespercent] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_mainequipmentdieuro] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_mainequipmentdipercent] AS NVARCHAR(50)), '')
                + ISNULL([hso_mainprojectfinancial], '')
                + ISNULL([_hso_mainprojectfinancial_value], '')
                + ISNULL(CAST([hso_maxfinancingeur] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_maxfinancingpercent] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_mobdemobeuro] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_mobdemobpercent] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_outofpocketcosts] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_overheadexpenseseuro] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_overheadexpensespercent] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_profitlosseuro] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_profitlosspercent] AS NVARCHAR(50)), '')
                + ISNULL([hso_project], '')
                + ISNULL([_hso_project_value], '')
                + ISNULL(CAST([hso_purchaseeuro] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_purchasepercent] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_remainingcostseuro] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_remainingcostspercent] AS NVARCHAR(50)), '')
                + ISNULL(CAST(LEFT([hso_remarksroughestimate], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_riskeuro] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_riskpercent] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_sitesupervisioncostseuro] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_sitesupervisioncostspercent] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_specificinvestmenteuro] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_specificinvestmentpercent] AS NVARCHAR(50)), '')
                + ISNULL(CAST(LEFT([hso_tenderbudgetremarks], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_totalcontractvalueeuro] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_totalcontractvaluetender_currency] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_totalcontractvaluetender_currency_base] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_totalcoststenderbudget] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_totaleurocopy] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_totaleurovanoordshare] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_totalpercentvanoordshare] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_valueofsubcontractseuro] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_valueofsubcontractspercent] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_valueoftotalworksvoparteuro] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_valueoftotalworksvopartpercent] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_voshareineuro] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_vosharepercent] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_withholdingtaxeuro] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_withholdingtaxpercent] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_workingcapital] AS NVARCHAR(50)), '')
                + ISNULL([_transactioncurrencyid_value], '')
                + ISNULL([_createdby_value], '')
                + ISNULL(CONVERT(NVARCHAR(19), [createdon], 120), '')
                + ISNULL([_createdonbehalfby_value], '')
                + ISNULL([_modifiedby_value], '')
                + ISNULL(CONVERT(NVARCHAR(19), [modifiedon], 120), '')
                + ISNULL([_ownerid_value], '')
                + ISNULL(CAST([statecode] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_statecode_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([statuscode] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_statuscode_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([versionnumber] AS NVARCHAR(20)), '')
            ) AS [dwh_hash]
        FROM [staged].[dyn_EntityProjectFinancial]

        IF OBJECT_ID(@schema + '.' + @table) IS NULL
            BEGIN
                DECLARE
                    @ThrowMessage NVARCHAR(100)
                    = 'The table ' + @schema + '.' + @table
                    + ' does not exist.';
                THROW 50000, @ThrowMessage, 1;
            END

        -- Update records that were updated in the source
        UPDATE [processed].[dyn_projectfinancial]
        SET
            [dwh_valid_to] = DATEADD(DAY, -1, @process_run_date),
            [dwh_process_run_id] = @process_run_id,
            [dwh_active] = 0
        FROM #temp_dyn_projectfinancial AS [T]
        LEFT JOIN [processed].[dyn_projectfinancial] AS [P] ON [T].[ak_projectfinancial] = [P].[ak_projectfinancial]
        WHERE
            [T].[dwh_hash] != [P].[dwh_hash]
            AND [P].[dwh_active] = 1
        SELECT @updated = @@ROWCOUNT

        --  Update records that were deleted in the source
        UPDATE [processed].[dyn_projectfinancial]
        SET
            [dwh_valid_to] = DATEADD(DAY, -1, @process_run_date),
            [dwh_process_run_id] = @process_run_id,
            [dwh_active] = 0
        FROM [processed].[dyn_projectfinancial] AS [P]
        LEFT JOIN #temp_dyn_projectfinancial AS [T] ON [T].[ak_projectfinancial] = [P].[ak_projectfinancial]
        WHERE
            [T].[ak_projectfinancial] IS NULL
            AND [P].[dwh_active] = 1
        SELECT @deleted = @@ROWCOUNT

        --  Insert new records + insert records that were updated in the source
        INSERT INTO [processed].[dyn_projectfinancial]
        (
            [dwh_valid_from],
            [dwh_valid_to],
            [dwh_active],
            [dwh_process_run_id],
            [ak_projectfinancial],
            [name],
            [exchangerate1],
            [additionalcoststenderbudget],
            [areaid],
            [areaid_value],
            [budgetexpectedpricelevelclienteuro],
            [cashflowdipleuro],
            [cashflowdiplpercent],
            [depreciationinvestmenteuro],
            [depreciationinvestmentpercent],
            [exchangerate2],
            [expectedpricelevelcompetitioneuro],
            [externalstaffcostestimate],
            [inflationeuro],
            [inflationpercent],
            [internalstaffcostestimate],
            [localtaxeseuro],
            [localtaxespercent],
            [mainequipmentdieuro],
            [mainequipmentdipercent],
            [mainprojectfinancial],
            [mainprojectfinancial_value],
            [maxfinancingeur],
            [maxfinancingpercent],
            [mobdemobeuro],
            [mobdemobpercent],
            [outofpocketcosts],
            [overheadexpenseseuro],
            [overheadexpensespercent],
            [profitlosseuro],
            [profitlosspercent],
            [project],
            [project_value],
            [purchaseeuro],
            [purchasepercent],
            [remainingcostseuro],
            [remainingcostspercent],
            [remarksroughestimate],
            [riskeuro],
            [riskpercent],
            [sitesupervisioncostseuro],
            [sitesupervisioncostspercent],
            [specificinvestmenteuro],
            [specificinvestmentpercent],
            [tenderbudgetremarks],
            [totalcontractvalueeuro],
            [totalcontractvaluetender_currency],
            [totalcontractvaluetender_currency_base],
            [totalcoststenderbudget],
            [totaleurocopy],
            [totaleurovanoordshare],
            [totalpercentvanoordshare],
            [valueofsubcontractseuro],
            [valueofsubcontractspercent],
            [valueoftotalworksvoparteuro],
            [valueoftotalworksvopartpercent],
            [voshareineuro],
            [vosharepercent],
            [withholdingtaxeuro],
            [withholdingtaxpercent],
            [workingcapital],
            [transactioncurrencyid_value],
            [createdby_value],
            [createdon],
            [createdonbehalfby_value],
            [modifiedby_value],
            [modifiedon],
            [ownerid_value],
            [statecode],
            [statecode_value],
            [statuscode],
            [statuscode_value],
            [versionnumber],
            [dwh_hash]
        )
        SELECT
            @process_run_date AS [dwh_valid_from],
            NULL AS [dwh_valid_to],
            1 AS [dwh_active],
            @process_run_id AS [dwh_process_run_id],
            [T].[ak_projectfinancial],
            [T].[name],
            [T].[exchangerate1],
            [T].[additionalcoststenderbudget],
            [T].[areaid],
            [T].[areaid_value],
            [T].[budgetexpectedpricelevelclienteuro],
            [T].[cashflowdipleuro],
            [T].[cashflowdiplpercent],
            [T].[depreciationinvestmenteuro],
            [T].[depreciationinvestmentpercent],
            [T].[exchangerate2],
            [T].[expectedpricelevelcompetitioneuro],
            [T].[externalstaffcostestimate],
            [T].[inflationeuro],
            [T].[inflationpercent],
            [T].[internalstaffcostestimate],
            [T].[localtaxeseuro],
            [T].[localtaxespercent],
            [T].[mainequipmentdieuro],
            [T].[mainequipmentdipercent],
            [T].[mainprojectfinancial],
            [T].[mainprojectfinancial_value],
            [T].[maxfinancingeur],
            [T].[maxfinancingpercent],
            [T].[mobdemobeuro],
            [T].[mobdemobpercent],
            [T].[outofpocketcosts],
            [T].[overheadexpenseseuro],
            [T].[overheadexpensespercent],
            [T].[profitlosseuro],
            [T].[profitlosspercent],
            [T].[project],
            [T].[project_value],
            [T].[purchaseeuro],
            [T].[purchasepercent],
            [T].[remainingcostseuro],
            [T].[remainingcostspercent],
            [T].[remarksroughestimate],
            [T].[riskeuro],
            [T].[riskpercent],
            [T].[sitesupervisioncostseuro],
            [T].[sitesupervisioncostspercent],
            [T].[specificinvestmenteuro],
            [T].[specificinvestmentpercent],
            [T].[tenderbudgetremarks],
            [T].[totalcontractvalueeuro],
            [T].[totalcontractvaluetender_currency],
            [T].[totalcontractvaluetender_currency_base],
            [T].[totalcoststenderbudget],
            [T].[totaleurocopy],
            [T].[totaleurovanoordshare],
            [T].[totalpercentvanoordshare],
            [T].[valueofsubcontractseuro],
            [T].[valueofsubcontractspercent],
            [T].[valueoftotalworksvoparteuro],
            [T].[valueoftotalworksvopartpercent],
            [T].[voshareineuro],
            [T].[vosharepercent],
            [T].[withholdingtaxeuro],
            [T].[withholdingtaxpercent],
            [T].[workingcapital],
            [T].[transactioncurrencyid_value],
            [T].[createdby_value],
            [T].[createdon],
            [T].[createdonbehalfby_value],
            [T].[modifiedby_value],
            [T].[modifiedon],
            [T].[ownerid_value],
            [T].[statecode],
            [T].[statecode_value],
            [T].[statuscode],
            [T].[statuscode_value],
            [T].[versionnumber],
            [T].[dwh_hash]
        FROM #temp_dyn_projectfinancial AS [T]
        LEFT JOIN [processed].[dyn_projectfinancial] AS [P] ON [T].[ak_projectfinancial] = [P].[ak_projectfinancial]
        WHERE
            [P].[ak_projectfinancial] IS NULL
            OR (
                [T].[dwh_hash] != [P].[dwh_hash]
                AND [P].[dwh_process_run_id] = @process_run_id
            )
        SELECT @inserted = @@ROWCOUNT

        COMMIT

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
