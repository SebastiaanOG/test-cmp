CREATE OR ALTER PROCEDURE [processed].[sp_load_dyn_nonstandardproject]
    @process_run_date DATE,
    @process_run_id UNIQUEIDENTIFIER
AS
BEGIN
    -- Abort and rollback for all errors, not only the ones captured by BEGIN TRY
    SET XACT_ABORT ON;
    DECLARE
        @schema NVARCHAR(20) = 'processed',
        @table NVARCHAR(60) = 'dyn_nonstandardproject',

        @inserted INT = 0,
        @updated INT = 0,
        @deleted INT = 0,
        @error_number INT = 0,
        @error_message NVARCHAR(4000)

    BEGIN TRY
        BEGIN TRANSACTION

        -- Create temp table to store the data from the staging table
        IF OBJECT_ID('tempdb..#temp_dyn_nonstandardproject') IS NOT NULL
            BEGIN
                DROP TABLE #temp_dyn_nonstandardproject
            END

        CREATE TABLE #temp_dyn_nonstandardproject
        (
            [ak_nonstandardproject] NVARCHAR(36),
            [projectnumber] NVARCHAR(100),
            [name] NVARCHAR(200),
            [exchangerate1] DECIMAL(18, 10),
            [activetimeregistrationid] NVARCHAR(36),
            [activetimeregistrationid_value] NVARCHAR(100),
            [additionalreason] INT,
            [additionalreason_value] NVARCHAR(4000),
            [alternatekeyperiod] NVARCHAR(100),
            [alternatekeystatus] NVARCHAR(100),
            [alternatekeytendertype] NVARCHAR(100),
            [alternatekeyyear] NVARCHAR(100),
            [anonymizedata] INT,
            [anonymizedata_value] NVARCHAR(4000),
            [approvalinitiatorremarks] NVARCHAR(4000),
            [approvalstatus] INT,
            [approvalstatus_value] NVARCHAR(4000),
            [approvalstatussg2c] INT,
            [approvalstatussg2c_value] NVARCHAR(4000),
            [approvalworkflowinprogress] INT,
            [approvalworkflowinprogress_value] NVARCHAR(4000),
            [areaid] NVARCHAR(36),
            [areaid_value] NVARCHAR(100),
            [awarddateexpected] DATE,
            [awardnumberid_value] NVARCHAR(100),
            [awardsummaryinstanceurl] NVARCHAR(100),
            [awardsummarynumber] NVARCHAR(100),
            [awardsummaryprojectsnapshoturl] NVARCHAR(100),
            [awardsummaryreportlink] NVARCHAR(500),
            [bingmapzoomlevel] INT,
            [budgetexpectedpricelevelclienteuro] DECIMAL(18, 0),
            [cashflowarpleuro] DECIMAL(18, 0),
            [cashflowarplpercent] DECIMAL(18, 2),
            [commercialresponsibleid_value] NVARCHAR(200),
            [contractconditions] INT,
            [contractconditions_value] NVARCHAR(4000),
            [countryid] NVARCHAR(36),
            [countryid_value] NVARCHAR(100),
            [depreciationinvestmenteuro] DECIMAL(18, 0),
            [depreciationinvestmentpercent] DECIMAL(18, 2),
            [designresponsibilityyn] INT,
            [designresponsibilityyn_value] NVARCHAR(4000),
            [durationofcontract] DECIMAL(18, 1),
            [exchangerate2] DECIMAL(18, 3),
            [expectedpricelevelcompetitioneuro] DECIMAL(18, 0),
            [expectedstartofwork] DATE,
            [formofcontract] INT,
            [formofcontract_value] NVARCHAR(4000),
            [formoftender] INT,
            [formoftender_value] NVARCHAR(4000),
            [frommobdemob] NVARCHAR(500),
            [fullclientprojectname] NVARCHAR(100),
            [inflationeuro] DECIMAL(18, 0),
            [inflationpercent] DECIMAL(18, 2),
            [latitude] DECIMAL(18, 5),
            [latitudedegrees] DECIMAL(18, 0),
            [latitudedms] NVARCHAR(20),
            [latitudeminutes] DECIMAL(18, 0),
            [atitudenorthsouth] INT,
            [latitudenorthsouth_value] NVARCHAR(4000),
            [latitudeseconds] DECIMAL(18, 0),
            [localtaxeseuro] DECIMAL(18, 0),
            [localtaxespercent] DECIMAL(18, 2),
            [location] NVARCHAR(100),
            [longitude] DECIMAL(18, 5),
            [longitudedegrees] DECIMAL(18, 0),
            [longitudedms] NVARCHAR(20),
            [longitudeeastwest] INT,
            [longitudeeastwest_value] NVARCHAR(4000),
            [longitudeminutes] DECIMAL(18, 0),
            [longitudeseconds] DECIMAL(18, 0),
            [mackleyautonumber_value] NVARCHAR(100),
            [mackleystatus] INT,
            [mackleystatus_value] NVARCHAR(4000),
            [mainequipmentareuro] DECIMAL(18, 0),
            [mainequipmentarpercent] DECIMAL(18, 2),
            [mainnonstandardprojectid] NVARCHAR(36),
            [mainnonstandardprojectid_value] NVARCHAR(200),
            [marketdrivers] INT,
            [marketdrivers_value] NVARCHAR(4000),
            [maxfinancingeur] DECIMAL(18, 0),
            [maxfinancingpercent] DECIMAL(18, 2),
            [mobdemobeuro] DECIMAL(18, 0),
            [mobdemobpercent] DECIMAL(18, 2),
            [negotiatecomplete] INT,
            [negotiatecomplete_value] NVARCHAR(4000),
            [nonstandardid_value] NVARCHAR(100),
            [nonstandardprojectsnapshot] INT,
            [nonstandardprojectsnapshot_value] NVARCHAR(4000),
            [onhold] INT,
            [onhold_value] NVARCHAR(4000),
            [onholdreason] INT,
            [onholdreason_value] NVARCHAR(4000),
            [overheadexpenseseuro] DECIMAL(18, 0),
            [overheadexpensespercent] DECIMAL(18, 2),
            [period] INT,
            [period_value] NVARCHAR(4000),
            [pq] INT,
            [pq_value] NVARCHAR(4000),
            [pqremarks] NTEXT,
            [preparecomplete] INT,
            [preparecomplete_value] NVARCHAR(4000),
            [processnostepfield] INT,
            [processnostepfield_value] NVARCHAR(4000),
            [productgroupsnl] INT,
            [productgroupsnl_value] NVARCHAR(4000),
            [profitlosseuro] DECIMAL(18, 0),
            [profitlosspercent] DECIMAL(18, 2),
            [projectdescription] NVARCHAR(4000),
            [projectgeneral] NVARCHAR(36),
            [projectgeneral_value] NVARCHAR(200),
            [projectphase] INT,
            [projectphase_value] NVARCHAR(4000),
            [projectpreparationmeeting] DATE,
            [projectreportdate] DATE,
            [purchaseeuro] DECIMAL(18, 0),
            [purchasepercent] DECIMAL(18, 2),
            [remainingcostseuro] DECIMAL(18, 0),
            [remainingcostspercent] DECIMAL(18, 2),
            [remarksroughestimate] NVARCHAR(4000),
            [reportperiod_value] NVARCHAR(100),
            [riskeuro] DECIMAL(18, 0),
            [riskpercent] DECIMAL(18, 2),
            [scopeofworkvanoord] NVARCHAR(4000),
            [setautonumber] INT,
            [setautonumber_value] NVARCHAR(4000),
            [sitesupervisioncostseuro] DECIMAL(18, 0),
            [sitesupervisioncostspercent] DECIMAL(18, 2),
            [specificinvestmenteuro] DECIMAL(18, 0),
            [specificinvestmentpercent] DECIMAL(18, 2),
            [stagegate] INT,
            [stagegate_value] NVARCHAR(4000),
            [stagegatecopy] INT,
            [stagegatecopy_value] NVARCHAR(4000),
            [stagegatesnapshot] INT,
            [stagegatesnapshot_value] NVARCHAR(4000),
            [subareaid] NVARCHAR(36),
            [subareaid_value] NVARCHAR(100),
            [substatusreason] INT,
            [substatusreason_value] NVARCHAR(4000),
            [tenderdate] DATE,
            [tenderenddate] DATE,
            [tendersubmissionplace] NVARCHAR(100),
            [tendertype] INT,
            [tendertype_value] NVARCHAR(4000),
            [tendervalidity] INT,
            [tmpapprovalinitiator_value] NVARCHAR(200),
            [tmpnonstandardprojectsnapshot_value] NVARCHAR(200),
            [tomobdemob] NVARCHAR(500),
            [totalcontractvalueeuro] DECIMAL(18, 0),
            [totalcontractvaluetender_currency] DECIMAL(18, 0),
            [totalcontractvaluetender_currency_base] DECIMAL(18, 0),
            [totaleuro] DECIMAL(18, 0),
            [totalpercent] DECIMAL(18, 2),
            [typeofcontract] INT,
            [typeofcontract_value] NVARCHAR(4000),
            [valueofsubcontractseuro] DECIMAL(18, 0),
            [valueofsubcontractspercent] DECIMAL(18, 2),
            [valueoftotalworksvoparteuro] DECIMAL(18, 0),
            [valueoftotalworksvopartpercent] DECIMAL(18, 2),
            [vanoordentityid] NVARCHAR(36),
            [vanoordentityid_value] NVARCHAR(100),
            [vanoordsubmittingactingas] INT,
            [vanoordsubmittingactingas_value] NVARCHAR(4000),
            [vobusinessunitid] NVARCHAR(36),
            [vobusinessunitid_value] NVARCHAR(100),
            [voshareineuro] DECIMAL(18, 0),
            [vosharepercent] DECIMAL(18, 2),
            [withholdingtaxeuro] DECIMAL(18, 0),
            [withholdingtaxpercent] DECIMAL(18, 2),
            [workingcapitaleuro] DECIMAL(18, 0),
            [year] INT,
            [year_value] NVARCHAR(4000),
            [transactioncurrencyid_value] NVARCHAR(100),
            [createdby_value] NVARCHAR(200),
            [createdon] DATETIME2(7),
            [createdonbehalfby_value] NVARCHAR(200),
            [modifiedby_value] NVARCHAR(200),
            [modifiedon] DATETIME2(7),
            [modifiedonbehalfby_value] NVARCHAR(200),
            [ownerid_value] NVARCHAR(200),
            [statecode] INT,
            [statecode_value] NVARCHAR(4000),
            [statuscode] INT,
            [statuscode_value] NVARCHAR(4000),
            [timezoneruleversionnumber] INT,
            [versionnumber] BIGINT,
            [dwh_hash] VARBINARY(8000) NOT NULL
        )

        -- Insert data from staging table into temp table
        -- and compute the hash. Use the hash to detect changes.
        INSERT INTO #temp_dyn_nonstandardproject
        SELECT
            [hso_nonstandardprojectid],
            [hso_projectnumber],
            [hso_name],
            [exchangerate],
            [hso_activetimeregistrationid],
            [_hso_activetimeregistrationid_value],
            [hso_additionalreason],
            LEFT([_hso_additionalreason_value], 4000),
            [hso_alternatekeyperiod],
            [hso_alternatekeystatus],
            [hso_alternatekeytendertype],
            [hso_alternatekeyyear],
            [hso_anonymizedata],
            LEFT([_hso_anonymizedata_value], 4000),
            LEFT([hso_approvalinitiatorremarks], 4000),
            [hso_approvalstatus],
            LEFT([_hso_approvalstatus_value], 4000),
            [hso_approvalstatussg2c],
            LEFT([_hso_approvalstatussg2c_value], 4000),
            [hso_approvalworkflowinprogress],
            LEFT([_hso_approvalworkflowinprogress_value], 4000),
            [hso_areaid],
            [_hso_areaid_value],
            [hso_awarddateexpected],
            [_hso_awardnumberid_value],
            [hso_awardsummaryinstanceurl],
            [hso_awardsummarynumber],
            [hso_awardsummaryprojectsnapshoturl],
            [hso_awardsummaryreportlink],
            [hso_bingmapzoomlevel],
            [hso_budgetexpectedpricelevelclienteuro],
            [hso_cashflowarpleuro],
            [hso_cashflowarplpercent],
            [_hso_commercialresponsibleid_value],
            [hso_contractconditions],
            LEFT([_hso_contractconditions_value], 4000),
            [hso_countryid],
            [_hso_countryid_value],
            [hso_depreciationinvestmenteuro],
            [hso_depreciationinvestmentpercent],
            [hso_designresponsibilityyn],
            LEFT([_hso_designresponsibilityyn_value], 4000),
            [hso_durationofcontract],
            [hso_exchangerate],
            [hso_expectedpricelevelcompetitioneuro],
            [hso_expectedstartofwork],
            [hso_formofcontract],
            LEFT([_hso_formofcontract_value], 4000),
            [hso_formoftender],
            LEFT([_hso_formoftender_value], 4000),
            [hso_frommobdemob],
            [hso_fullclientprojectname],
            [hso_inflationeuro],
            [hso_inflationpercent],
            [hso_latitude],
            [hso_latitudedegrees],
            [hso_latitudedms],
            [hso_latitudeminutes],
            [hso_latitudenorthsouth],
            LEFT([_hso_latitudenorthsouth_value], 4000),
            [hso_latitudeseconds],
            [hso_localtaxeseuro],
            [hso_localtaxespercent],
            [hso_location],
            [hso_longitude],
            [hso_longitudedegrees],
            [hso_longitudedms],
            [hso_longitudeeastwest],
            LEFT([_hso_longitudeeastwest_value], 4000),
            [hso_longitudeminutes],
            [hso_longitudeseconds],
            [_hso_mackleyautonumber_value],
            [hso_mackleystatus],
            LEFT([_hso_mackleystatus_value], 4000),
            [hso_mainequipmentareuro],
            [hso_mainequipmentarpercent],
            [hso_mainnonstandardprojectid],
            [_hso_mainnonstandardprojectid_value],
            [hso_marketdrivers],
            LEFT([_hso_marketdrivers_value], 4000),
            [hso_maxfinancingeur],
            [hso_maxfinancingpercent],
            [hso_mobdemobeuro],
            [hso_mobdemobpercent],
            [hso_negotiatecomplete],
            LEFT([_hso_negotiatecomplete_value], 4000),
            [_hso_nonstandardid_value],
            [hso_nonstandardprojectsnapshot],
            LEFT([_hso_nonstandardprojectsnapshot_value], 4000),
            [hso_onhold],
            LEFT([_hso_onhold_value], 4000),
            [hso_onholdreason],
            LEFT([_hso_onholdreason_value], 4000),
            [hso_overheadexpenseseuro],
            [hso_overheadexpensespercent],
            [hso_period],
            LEFT([_hso_period_value], 4000),
            [hso_pq],
            LEFT([_hso_pq_value], 4000),
            LEFT([hso_pqremarks], 4000),
            [hso_preparecomplete],
            LEFT([_hso_preparecomplete_value], 4000),
            [hso_processnostepfield],
            LEFT([_hso_processnostepfield_value], 4000),
            [hso_productgroupsnl],
            LEFT([_hso_productgroupsnl_value], 4000),
            [hso_profitlosseuro],
            [hso_profitlosspercent],
            LEFT([hso_projectdescription], 4000),
            [hso_projectgeneral],
            [_hso_projectgeneral_value],
            [hso_projectphase],
            LEFT([_hso_projectphase_value], 4000),
            [hso_projectpreparationmeeting],
            [hso_projectreportdate],
            [hso_purchaseeuro],
            [hso_purchasepercent],
            [hso_remainingcostseuro],
            [hso_remainingcostspercent],
            LEFT([hso_remarksroughestimate], 4000),
            [_hso_reportperiod_value],
            [hso_riskeuro],
            [hso_riskpercent],
            LEFT([hso_scopeofworkvanoord], 4000),
            [hso_setautonumber],
            LEFT([_hso_setautonumber_value], 4000),
            [hso_sitesupervisioncostseuro],
            [hso_sitesupervisioncostspercent],
            [hso_specificinvestmenteuro],
            [hso_specificinvestmentpercent],
            [hso_stagegate],
            LEFT([_hso_stagegate_value], 4000),
            [hso_stagegatecopy],
            LEFT([_hso_stagegatecopy_value], 4000),
            [hso_stagegatesnapshot],
            LEFT([_hso_stagegatesnapshot_value], 4000),
            [hso_subareaid],
            [_hso_subareaid_value],
            [hso_substatusreason],
            LEFT([_hso_substatusreason_value], 4000),
            [hso_tenderdate],
            [hso_tenderenddate],
            [hso_tendersubmissionplace],
            [hso_tendertype],
            LEFT([_hso_tendertype_value], 4000),
            [hso_tendervalidity],
            [_hso_tmpapprovalinitiator_value],
            [_hso_tmpnonstandardprojectsnapshot_value],
            [hso_tomobdemob],
            [hso_totalcontractvalueeuro],
            [hso_totalcontractvaluetender_currency],
            [hso_totalcontractvaluetender_currency_base],
            [hso_totaleuro],
            [hso_totalpercent],
            [hso_typeofcontract],
            LEFT([_hso_typeofcontract_value], 4000),
            [hso_valueofsubcontractseuro],
            [hso_valueofsubcontractspercent],
            [hso_valueoftotalworksvoparteuro],
            [hso_valueoftotalworksvopartpercent],
            [hso_vanoordentityid],
            [_hso_vanoordentityid_value],
            [hso_vanoordsubmittingactingas],
            LEFT([_hso_vanoordsubmittingactingas_value], 4000),
            [hso_vobusinessunitid],
            [_hso_vobusinessunitid_value],
            [hso_voshareineuro],
            [hso_vosharepercent],
            [hso_withholdingtaxeuro],
            [hso_withholdingtaxpercent],
            [hso_workingcapitaleuro],
            [hso_year],
            LEFT([_hso_year_value], 4000),
            [_transactioncurrencyid_value],
            [_createdby_value],
            [createdon],
            [_createdonbehalfby_value],
            [_modifiedby_value],
            [modifiedon],
            [_modifiedonbehalfby_value],
            [_ownerid_value],
            [statecode],
            LEFT([_statecode_value], 4000),
            [statuscode],
            LEFT([_statuscode_value], 4000),
            [timezoneruleversionnumber],
            [versionnumber],
            HASHBYTES(
                'MD5',
                ISNULL([hso_nonstandardprojectid], '')
                + ISNULL([hso_projectnumber], '')
                + ISNULL([hso_name], '')
                + ISNULL(CAST([exchangerate] AS NVARCHAR(50)), '')
                + ISNULL([hso_activetimeregistrationid], '')
                + ISNULL([_hso_activetimeregistrationid_value], '')
                + ISNULL(CAST([hso_additionalreason] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_additionalreason_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([hso_alternatekeyperiod], '')
                + ISNULL([hso_alternatekeystatus], '')
                + ISNULL([hso_alternatekeytendertype], '')
                + ISNULL([hso_alternatekeyyear], '')
                + ISNULL(CAST([hso_anonymizedata] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_anonymizedata_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST(LEFT([hso_approvalinitiatorremarks], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_approvalstatus] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_approvalstatus_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_approvalstatussg2c] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_approvalstatussg2c_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_approvalworkflowinprogress] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_approvalworkflowinprogress_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([hso_areaid], '')
                + ISNULL([_hso_areaid_value], '')
                + ISNULL(CONVERT(NVARCHAR(19), [hso_awarddateexpected], 120), '')
                + ISNULL([_hso_awardnumberid_value], '')
                + ISNULL([hso_awardsummaryinstanceurl], '')
                + ISNULL([hso_awardsummarynumber], '')
                + ISNULL([hso_awardsummaryprojectsnapshoturl], '')
                + ISNULL([hso_awardsummaryreportlink], '')
                + ISNULL(CAST([hso_bingmapzoomlevel] AS NVARCHAR(20)), '')
                + ISNULL(CAST([hso_budgetexpectedpricelevelclienteuro] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_cashflowarpleuro] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_cashflowarplpercent] AS NVARCHAR(50)), '')
                + ISNULL([_hso_commercialresponsibleid_value], '')
                + ISNULL(CAST([hso_contractconditions] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_contractconditions_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([hso_countryid], '')
                + ISNULL([_hso_countryid_value], '')
                + ISNULL(CAST([hso_depreciationinvestmenteuro] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_depreciationinvestmentpercent] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_designresponsibilityyn] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_designresponsibilityyn_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_durationofcontract] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_exchangerate] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_expectedpricelevelcompetitioneuro] AS NVARCHAR(50)), '')
                + ISNULL(CONVERT(NVARCHAR(19), [hso_expectedstartofwork], 120), '')
                + ISNULL(CAST([hso_formofcontract] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_formofcontract_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_formoftender] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_formoftender_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([hso_frommobdemob], '')
                + ISNULL([hso_fullclientprojectname], '')
                + ISNULL(CAST([hso_inflationeuro] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_inflationpercent] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_latitude] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_latitudedegrees] AS NVARCHAR(50)), '')
                + ISNULL([hso_latitudedms], '')
                + ISNULL(CAST([hso_latitudeminutes] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_latitudenorthsouth] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_latitudenorthsouth_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_latitudeseconds] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_localtaxeseuro] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_localtaxespercent] AS NVARCHAR(50)), '')
                + ISNULL([hso_location], '')
                + ISNULL(CAST([hso_longitude] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_longitudedegrees] AS NVARCHAR(50)), '')
                + ISNULL([hso_longitudedms], '')
                + ISNULL(CAST([hso_longitudeeastwest] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_longitudeeastwest_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_longitudeminutes] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_longitudeseconds] AS NVARCHAR(50)), '')
                + ISNULL([_hso_mackleyautonumber_value], '')
                + ISNULL(CAST([hso_mackleystatus] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_mackleystatus_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_mainequipmentareuro] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_mainequipmentarpercent] AS NVARCHAR(50)), '')
                + ISNULL([hso_mainnonstandardprojectid], '')
                + ISNULL([_hso_mainnonstandardprojectid_value], '')
                + ISNULL(CAST([hso_marketdrivers] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_marketdrivers_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_maxfinancingeur] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_maxfinancingpercent] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_mobdemobeuro] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_mobdemobpercent] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_negotiatecomplete] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_negotiatecomplete_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([_hso_nonstandardid_value], '')
                + ISNULL(CAST([hso_nonstandardprojectsnapshot] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_nonstandardprojectsnapshot_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_onhold] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_onhold_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_onholdreason] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_onholdreason_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_overheadexpenseseuro] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_overheadexpensespercent] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_period] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_period_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_pq] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_pq_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST(LEFT([hso_pqremarks], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_preparecomplete] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_preparecomplete_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_processnostepfield] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_processnostepfield_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_productgroupsnl] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_productgroupsnl_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_profitlosseuro] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_profitlosspercent] AS NVARCHAR(50)), '')
                + ISNULL(CAST(LEFT([hso_projectdescription], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([hso_projectgeneral], '')
                + ISNULL([_hso_projectgeneral_value], '')
                + ISNULL(CAST([hso_projectphase] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_projectphase_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CONVERT(NVARCHAR(19), [hso_projectpreparationmeeting], 120), '')
                + ISNULL(CONVERT(NVARCHAR(19), [hso_projectreportdate], 120), '')
                + ISNULL(CAST([hso_purchaseeuro] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_purchasepercent] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_remainingcostseuro] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_remainingcostspercent] AS NVARCHAR(50)), '')
                + ISNULL(CAST(LEFT([hso_remarksroughestimate], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([_hso_reportperiod_value], '')
                + ISNULL(CAST([hso_riskeuro] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_riskpercent] AS NVARCHAR(50)), '')
                + ISNULL(CAST(LEFT([hso_scopeofworkvanoord], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_setautonumber] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_setautonumber_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_sitesupervisioncostseuro] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_sitesupervisioncostspercent] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_specificinvestmenteuro] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_specificinvestmentpercent] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_stagegate] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_stagegate_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_stagegatecopy] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_stagegatecopy_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_stagegatesnapshot] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_stagegatesnapshot_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([hso_subareaid], '')
                + ISNULL([_hso_subareaid_value], '')
                + ISNULL(CAST([hso_substatusreason] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_substatusreason_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CONVERT(NVARCHAR(19), [hso_tenderdate], 120), '')
                + ISNULL(CONVERT(NVARCHAR(19), [hso_tenderenddate], 120), '')
                + ISNULL([hso_tendersubmissionplace], '')
                + ISNULL(CAST([hso_tendertype] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_tendertype_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_tendervalidity] AS NVARCHAR(20)), '')
                + ISNULL([_hso_tmpapprovalinitiator_value], '')
                + ISNULL([_hso_tmpnonstandardprojectsnapshot_value], '')
                + ISNULL([hso_tomobdemob], '')
                + ISNULL(CAST([hso_totalcontractvalueeuro] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_totalcontractvaluetender_currency] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_totalcontractvaluetender_currency_base] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_totaleuro] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_totalpercent] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_typeofcontract] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_typeofcontract_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_valueofsubcontractseuro] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_valueofsubcontractspercent] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_valueoftotalworksvoparteuro] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_valueoftotalworksvopartpercent] AS NVARCHAR(50)), '')
                + ISNULL([hso_vanoordentityid], '')
                + ISNULL([_hso_vanoordentityid_value], '')
                + ISNULL(CAST([hso_vanoordsubmittingactingas] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_vanoordsubmittingactingas_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([hso_vobusinessunitid], '')
                + ISNULL([_hso_vobusinessunitid_value], '')
                + ISNULL(CAST([hso_voshareineuro] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_vosharepercent] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_withholdingtaxeuro] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_withholdingtaxpercent] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_workingcapitaleuro] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_year] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_year_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([_transactioncurrencyid_value], '')
                + ISNULL([_createdby_value], '')
                + ISNULL(CONVERT(NVARCHAR(19), [createdon], 120), '')
                + ISNULL([_createdonbehalfby_value], '')
                + ISNULL([_modifiedby_value], '')
                + ISNULL(CONVERT(NVARCHAR(19), [modifiedon], 120), '')
                + ISNULL([_modifiedonbehalfby_value], '')
                + ISNULL([_ownerid_value], '')
                + ISNULL(CAST([statecode] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_statecode_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([statuscode] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_statuscode_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([timezoneruleversionnumber] AS NVARCHAR(20)), '')
                + ISNULL(CAST([versionnumber] AS NVARCHAR(20)), '')
            ) AS [dwh_hash]
        FROM [staged].[dyn_EntityNonStandardProject]

        IF OBJECT_ID(@schema + '.' + @table) IS NULL
            BEGIN
                DECLARE
                    @ThrowMessage NVARCHAR(100)
                    = 'The table ' + @schema + '.' + @table
                    + ' does not exist.';
                THROW 50000, @ThrowMessage, 1;
            END

        -- Update records that were updated in the source
        UPDATE [processed].[dyn_nonstandardproject]
        SET
            [dwh_valid_to] = DATEADD(DAY, -1, @process_run_date),
            [dwh_process_run_id] = @process_run_id,
            [dwh_active] = 0
        FROM #temp_dyn_nonstandardproject AS [T]
        LEFT JOIN [processed].[dyn_nonstandardproject] AS [P] ON [T].[ak_nonstandardproject] = [P].[ak_nonstandardproject]
        WHERE
            [T].[dwh_hash] != [P].[dwh_hash]
            AND [P].[dwh_active] = 1
        SELECT @updated = @@ROWCOUNT

        --  Update records that were deleted in the source
        UPDATE [processed].[dyn_nonstandardproject]
        SET
            [dwh_valid_to] = DATEADD(DAY, -1, @process_run_date),
            [dwh_process_run_id] = @process_run_id,
            [dwh_active] = 0
        FROM [processed].[dyn_nonstandardproject] AS [P]
        LEFT JOIN #temp_dyn_nonstandardproject AS [T] ON [T].[ak_nonstandardproject] = [P].[ak_nonstandardproject]
        WHERE
            [T].[ak_nonstandardproject] IS NULL
            AND [P].[dwh_active] = 1
        SELECT @deleted = @@ROWCOUNT

        --  Insert new records + insert records that were updated in the source
        INSERT INTO [processed].[dyn_nonstandardproject]
        (
            [dwh_valid_from],
            [dwh_valid_to],
            [dwh_active],
            [dwh_process_run_id],
            [ak_nonstandardproject],
            [projectnumber],
            [name],
            [exchangerate1],
            [activetimeregistrationid],
            [activetimeregistrationid_value],
            [additionalreason],
            LEFT([additionalreason_value], 4000),
            [alternatekeyperiod],
            [alternatekeystatus],
            [alternatekeytendertype],
            [alternatekeyyear],
            [anonymizedata],
            LEFT([anonymizedata_value], 4000),
            LEFT([approvalinitiatorremarks], 4000),
            [approvalstatus],
            LEFT([approvalstatus_value], 4000),
            [approvalstatussg2c],
            LEFT([approvalstatussg2c_value], 4000),
            [approvalworkflowinprogress],
            LEFT([approvalworkflowinprogress_value], 4000),
            [areaid],
            [areaid_value],
            [awarddateexpected],
            [awardnumberid_value],
            [awardsummaryinstanceurl],
            [awardsummarynumber],
            [awardsummaryprojectsnapshoturl],
            [awardsummaryreportlink],
            [bingmapzoomlevel],
            [budgetexpectedpricelevelclienteuro],
            [cashflowarpleuro],
            [cashflowarplpercent],
            [commercialresponsibleid_value],
            [contractconditions],
            LEFT([contractconditions_value], 4000),
            [countryid],
            [countryid_value],
            [depreciationinvestmenteuro],
            [depreciationinvestmentpercent],
            [designresponsibilityyn],
            LEFT([designresponsibilityyn_value], 4000),
            [durationofcontract],
            [exchangerate2],
            [expectedpricelevelcompetitioneuro],
            [expectedstartofwork],
            [formofcontract],
            LEFT([formofcontract_value], 4000),
            [formoftender],
            LEFT([formoftender_value], 4000),
            [frommobdemob],
            [fullclientprojectname],
            [inflationeuro],
            [inflationpercent],
            [latitude],
            [latitudedegrees],
            [latitudedms],
            [latitudeminutes],
            [atitudenorthsouth],
            LEFT([latitudenorthsouth_value], 4000),
            [latitudeseconds],
            [localtaxeseuro],
            [localtaxespercent],
            [location],
            [longitude],
            [longitudedegrees],
            [longitudedms],
            [longitudeeastwest],
            LEFT([longitudeeastwest_value], 4000),
            [longitudeminutes],
            [longitudeseconds],
            [mackleyautonumber_value],
            [mackleystatus],
            LEFT([mackleystatus_value], 4000),
            [mainequipmentareuro],
            [mainequipmentarpercent],
            [mainnonstandardprojectid],
            [mainnonstandardprojectid_value],
            [marketdrivers],
            LEFT([marketdrivers_value], 4000),
            [maxfinancingeur],
            [maxfinancingpercent],
            [mobdemobeuro],
            [mobdemobpercent],
            [negotiatecomplete],
            LEFT([negotiatecomplete_value], 4000),
            [nonstandardid_value],
            [nonstandardprojectsnapshot],
            LEFT([nonstandardprojectsnapshot_value], 4000),
            [onhold],
            LEFT([onhold_value], 4000),
            [onholdreason],
            LEFT([onholdreason_value], 4000),
            [overheadexpenseseuro],
            [overheadexpensespercent],
            [period],
            LEFT([period_value], 4000),
            [pq],
            LEFT([pq_value], 4000),
            LEFT([pqremarks], 4000),
            [preparecomplete],
            LEFT([preparecomplete_value], 4000),
            [processnostepfield],
            LEFT([processnostepfield_value], 4000),
            [productgroupsnl],
            LEFT([productgroupsnl_value], 4000),
            [profitlosseuro],
            [profitlosspercent],
            LEFT([projectdescription], 4000),
            [projectgeneral],
            [projectgeneral_value],
            [projectphase],
            LEFT([projectphase_value], 4000),
            [projectpreparationmeeting],
            [projectreportdate],
            [purchaseeuro],
            [purchasepercent],
            [remainingcostseuro],
            [remainingcostspercent],
            LEFT([remarksroughestimate], 4000),
            [reportperiod_value],
            [riskeuro],
            [riskpercent],
            LEFT([scopeofworkvanoord], 4000),
            [setautonumber],
            LEFT([setautonumber_value], 4000),
            [sitesupervisioncostseuro],
            [sitesupervisioncostspercent],
            [specificinvestmenteuro],
            [specificinvestmentpercent],
            [stagegate],
            LEFT([stagegate_value], 4000),
            [stagegatecopy],
            LEFT([stagegatecopy_value], 4000),
            [stagegatesnapshot],
            LEFT([stagegatesnapshot_value], 4000),
            [subareaid],
            [subareaid_value],
            [substatusreason],
            LEFT([substatusreason_value], 4000),
            [tenderdate],
            [tenderenddate],
            [tendersubmissionplace],
            [tendertype],
            LEFT([tendertype_value], 4000),
            [tendervalidity],
            [tmpapprovalinitiator_value],
            [tmpnonstandardprojectsnapshot_value],
            [tomobdemob],
            [totalcontractvalueeuro],
            [totalcontractvaluetender_currency],
            [totalcontractvaluetender_currency_base],
            [totaleuro],
            [totalpercent],
            [typeofcontract],
            LEFT([typeofcontract_value], 4000),
            [valueofsubcontractseuro],
            [valueofsubcontractspercent],
            [valueoftotalworksvoparteuro],
            [valueoftotalworksvopartpercent],
            [vanoordentityid],
            [vanoordentityid_value],
            [vanoordsubmittingactingas],
            LEFT([vanoordsubmittingactingas_value], 4000),
            [vobusinessunitid],
            [vobusinessunitid_value],
            [voshareineuro],
            [vosharepercent],
            [withholdingtaxeuro],
            [withholdingtaxpercent],
            [workingcapitaleuro],
            [year],
            LEFT([year_value], 4000),
            [transactioncurrencyid_value],
            [createdby_value],
            [createdon],
            [createdonbehalfby_value],
            [modifiedby_value],
            [modifiedon],
            [modifiedonbehalfby_value],
            [ownerid_value],
            [statecode],
            LEFT([statecode_value], 4000),
            [statuscode],
            LEFT([statuscode_value], 4000),
            [timezoneruleversionnumber],
            [versionnumber],
            [dwh_hash]            
        )
        SELECT
            @process_run_date AS [dwh_valid_from],
            NULL AS [dwh_valid_to],
            1 AS [dwh_active],
            @process_run_id AS [dwh_process_run_id],
            [T].[ak_nonstandardproject],
            [T].[projectnumber],
            [T].[name],
            [T].[exchangerate1],
            [T].[activetimeregistrationid],
            [T].[activetimeregistrationid_value],
            [T].[additionalreason],
            [T].[additionalreason_value],
            [T].[alternatekeyperiod],
            [T].[alternatekeystatus],
            [T].[alternatekeytendertype],
            [T].[alternatekeyyear],
            [T].[anonymizedata],
            [T].[anonymizedata_value],
            [T].[approvalinitiatorremarks],
            [T].[approvalstatus],
            [T].[approvalstatus_value],
            [T].[approvalstatussg2c],
            [T].[approvalstatussg2c_value],
            [T].[approvalworkflowinprogress],
            [T].[approvalworkflowinprogress_value],
            [T].[areaid],
            [T].[areaid_value],
            [T].[awarddateexpected],
            [T].[awardnumberid_value],
            [T].[awardsummaryinstanceurl],
            [T].[awardsummarynumber],
            [T].[awardsummaryprojectsnapshoturl],
            [T].[awardsummaryreportlink],
            [T].[bingmapzoomlevel],
            [T].[budgetexpectedpricelevelclienteuro],
            [T].[cashflowarpleuro],
            [T].[cashflowarplpercent],
            [T].[commercialresponsibleid_value],
            [T].[contractconditions],
            [T].[contractconditions_value],
            [T].[countryid],
            [T].[countryid_value],
            [T].[depreciationinvestmenteuro],
            [T].[depreciationinvestmentpercent],
            [T].[designresponsibilityyn],
            [T].[designresponsibilityyn_value],
            [T].[durationofcontract],
            [T].[exchangerate2],
            [T].[expectedpricelevelcompetitioneuro],
            [T].[expectedstartofwork],
            [T].[formofcontract],
            [T].[formofcontract_value],
            [T].[formoftender],
            [T].[formoftender_value],
            [T].[frommobdemob],
            [T].[fullclientprojectname],
            [T].[inflationeuro],
            [T].[inflationpercent],
            [T].[latitude],
            [T].[latitudedegrees],
            [T].[latitudedms],
            [T].[latitudeminutes],
            [T].[atitudenorthsouth],
            [T].[latitudenorthsouth_value],
            [T].[latitudeseconds],
            [T].[localtaxeseuro],
            [T].[localtaxespercent],
            [T].[location],
            [T].[longitude],
            [T].[longitudedegrees],
            [T].[longitudedms],
            [T].[longitudeeastwest],
            [T].[longitudeeastwest_value],
            [T].[longitudeminutes],
            [T].[longitudeseconds],
            [T].[mackleyautonumber_value],
            [T].[mackleystatus],
            [T].[mackleystatus_value],
            [T].[mainequipmentareuro],
            [T].[mainequipmentarpercent],
            [T].[mainnonstandardprojectid],
            [T].[mainnonstandardprojectid_value],
            [T].[marketdrivers],
            [T].[marketdrivers_value],
            [T].[maxfinancingeur],
            [T].[maxfinancingpercent],
            [T].[mobdemobeuro],
            [T].[mobdemobpercent],
            [T].[negotiatecomplete],
            [T].[negotiatecomplete_value],
            [T].[nonstandardid_value],
            [T].[nonstandardprojectsnapshot],
            [T].[nonstandardprojectsnapshot_value],
            [T].[onhold],
            [T].[onhold_value],
            [T].[onholdreason],
            [T].[onholdreason_value],
            [T].[overheadexpenseseuro],
            [T].[overheadexpensespercent],
            [T].[period],
            [T].[period_value],
            [T].[pq],
            [T].[pq_value],
            [T].[pqremarks],
            [T].[preparecomplete],
            [T].[preparecomplete_value],
            [T].[processnostepfield],
            [T].[processnostepfield_value],
            [T].[productgroupsnl],
            [T].[productgroupsnl_value],
            [T].[profitlosseuro],
            [T].[profitlosspercent],
            [T].[projectdescription],
            [T].[projectgeneral],
            [T].[projectgeneral_value],
            [T].[projectphase],
            [T].[projectphase_value],
            [T].[projectpreparationmeeting],
            [T].[projectreportdate],
            [T].[purchaseeuro],
            [T].[purchasepercent],
            [T].[remainingcostseuro],
            [T].[remainingcostspercent],
            [T].[remarksroughestimate],
            [T].[reportperiod_value],
            [T].[riskeuro],
            [T].[riskpercent],
            [T].[scopeofworkvanoord],
            [T].[setautonumber],
            [T].[setautonumber_value],
            [T].[sitesupervisioncostseuro],
            [T].[sitesupervisioncostspercent],
            [T].[specificinvestmenteuro],
            [T].[specificinvestmentpercent],
            [T].[stagegate],
            [T].[stagegate_value],
            [T].[stagegatecopy],
            [T].[stagegatecopy_value],
            [T].[stagegatesnapshot],
            [T].[stagegatesnapshot_value],
            [T].[subareaid],
            [T].[subareaid_value],
            [T].[substatusreason],
            [T].[substatusreason_value],
            [T].[tenderdate],
            [T].[tenderenddate],
            [T].[tendersubmissionplace],
            [T].[tendertype],
            [T].[tendertype_value],
            [T].[tendervalidity],
            [T].[tmpapprovalinitiator_value],
            [T].[tmpnonstandardprojectsnapshot_value],
            [T].[tomobdemob],
            [T].[totalcontractvalueeuro],
            [T].[totalcontractvaluetender_currency],
            [T].[totalcontractvaluetender_currency_base],
            [T].[totaleuro],
            [T].[totalpercent],
            [T].[typeofcontract],
            [T].[typeofcontract_value],
            [T].[valueofsubcontractseuro],
            [T].[valueofsubcontractspercent],
            [T].[valueoftotalworksvoparteuro],
            [T].[valueoftotalworksvopartpercent],
            [T].[vanoordentityid],
            [T].[vanoordentityid_value],
            [T].[vanoordsubmittingactingas],
            [T].[vanoordsubmittingactingas_value],
            [T].[vobusinessunitid],
            [T].[vobusinessunitid_value],
            [T].[voshareineuro],
            [T].[vosharepercent],
            [T].[withholdingtaxeuro],
            [T].[withholdingtaxpercent],
            [T].[workingcapitaleuro],
            [T].[year],
            [T].[year_value],
            [T].[transactioncurrencyid_value],
            [T].[createdby_value],
            [T].[createdon],
            [T].[createdonbehalfby_value],
            [T].[modifiedby_value],
            [T].[modifiedon],
            [T].[modifiedonbehalfby_value],
            [T].[ownerid_value],
            [T].[statecode],
            [T].[statecode_value],
            [T].[statuscode],
            [T].[statuscode_value],
            [T].[timezoneruleversionnumber],
            [T].[versionnumber],
            [T].[dwh_hash]
        FROM #temp_dyn_nonstandardproject AS [T]
        LEFT JOIN [processed].[dyn_nonstandardproject] AS [P] ON [T].[ak_nonstandardproject] = [P].[ak_nonstandardproject]
        WHERE
            [P].[ak_nonstandardproject] IS NULL
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
