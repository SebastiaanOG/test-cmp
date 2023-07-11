CREATE OR ALTER PROCEDURE [processed].[sp_load_dyn_project]
    @process_run_date DATE,
    @process_run_id UNIQUEIDENTIFIER
AS
BEGIN
    -- Abort and rollback for all errors, not only the ones captured by BEGIN TRY
    SET XACT_ABORT ON;
    DECLARE
        @schema NVARCHAR(20) = 'processed',
        @table NVARCHAR(60) = 'dyn_project',

        @inserted INT = 0,
        @updated INT = 0,
        @deleted INT = 0,
        @error_number INT = 0,
        @error_message NVARCHAR(4000)

    BEGIN TRY
        BEGIN TRANSACTION

        -- Create temp table to store the data from the staging table
        IF OBJECT_ID('tempdb..#temp_dyn_project') IS NOT NULL
            BEGIN
                DROP TABLE #temp_dyn_project
            END

        CREATE TABLE #temp_dyn_project
        (
            [ak_project] NVARCHAR(36),
            [projectnumber] NVARCHAR(100),
            [name] NVARCHAR(200),
            [acceptableqhsestandards] INT,
            [acceptableqhsestandards_value] NVARCHAR(4000),
            [accountid] NVARCHAR(36),
            [accountid_value] NVARCHAR(160),
            [activetimeregistrationid] NVARCHAR(36),
            [activetimeregistrationid_value] NVARCHAR(100),
            [additionalreason] INT,
            [additionalreason_value] NVARCHAR(4000),
            [advancepaymentpercentage] DECIMAL(18, 2),
            [alignswithcorporatestrategyactions1] INT,
            [alignswithcorporatestrategyactions1_value] NVARCHAR(4000),
            [alignswithcorporatestrategyactions2] INT,
            [alignswithcorporatestrategyactions2_value] NVARCHAR(4000),
            [alternativetobeoffered] INT,
            [alternativetobeoffered_value] NVARCHAR(4000),
            [anonymizedata] INT,
            [anonymizedata_value] NVARCHAR(4000),
            [approvalinitiatorremarks] NVARCHAR(4000),
            [approvalstatus] INT,
            [approvalstatus_value] NVARCHAR(4000),
            [approvalworkflowinprogress] INT,
            [approvalworkflowinprogress_value] NVARCHAR(4000),
            [areaid] NVARCHAR(36),
            [areaid_value] NVARCHAR(100),
            [availabilitycompetences] NVARCHAR(4000),
            [awarddateexpected] DATE,
            [awardnumberid_value] NVARCHAR(100),
            [awardsummaryimport] INT,
            [awardsummaryimport_value] NVARCHAR(4000),
            [awardsummaryinstanceurl] NVARCHAR(100),
            [awardsummarynumber] NVARCHAR(100),
            [awardsummaryprojectsnapshoturl] NVARCHAR(100),
            [awardsummaryreportlink] NVARCHAR(500),
            [awardsummaryrevision] INT,
            [awardsummaryrevision_value] NVARCHAR(4000),
            [baseportinformation] NVARCHAR(100),
            [bidvaliditydays] INT,
            [bingmapzoomlevel] INT,
            [cable] NVARCHAR(100),
            [calculatedriskprofile] INT,
            [calculatedriskprofile_value] NVARCHAR(4000),
            [car] INT,
            [car_value] NVARCHAR(4000),
            [carbonfootprintestimated] DECIMAL(18, 2),
            [chanceofgoingahead] INT,
            [chanceofgoingahead_value] NVARCHAR(4000),
            [chanceofwinningcommercialposition] INT,
            [chanceofwinningcommercialposition_value] NVARCHAR(4000),
            [changedawarddate] DATE,
            [changedtenderdate] DATE,
            [changestosolution] NVARCHAR(4000),
            [changestosolutionchosen] NVARCHAR(4000),
            [commercialresponsibleid_value] NVARCHAR(200),
            [contractconditions] INT,
            [contractconditions_value] NVARCHAR(4000),
            [countryid] NVARCHAR(36),
            [countryid_value] NVARCHAR(100),
            [createawardsummarynumber] INT,
            [createawardsummarynumber_value] NVARCHAR(4000),
            [createnewprojectnumer] INT,
            [createnewprojectnumer_value] NVARCHAR(4000),
            [creditinsurance] INT,
            [creditinsurance_value] NVARCHAR(4000),
            [creditinsurance_yn] INT,
            [creditinsurance_yn_value] NVARCHAR(4000),
            [currencyrisk] INT,
            [currencyrisk_value] NVARCHAR(4000),
            [currencyrisk_yn] INT,
            [currencyrisk_yn_value] NVARCHAR(4000),
            [defectsliabilityperioddays] DECIMAL(18, 0),
            [definerequiredtenderteamcompetences] NVARCHAR(4000),
            [deploymentownequipment] INT,
            [deploymentownequipment_value] NVARCHAR(4000),
            [designinsurance] INT,
            [designinsurance_value] NVARCHAR(4000),
            [designresponsibilityyn] INT,
            [designresponsibilityyn_value] NVARCHAR(4000),
            [dredgingcategory] INT,
            [dredgingcategory_value] NVARCHAR(4000),
            [durationofcontract] DECIMAL(18, 1),
            [edocs] INT,
            [edocs_value] NVARCHAR(4000),
            [eepriority] INT,
            [eepriority_value] NVARCHAR(4000),
            [emviscore] INT,
            [emviscore_value] NVARCHAR(4000),
            [endreportrequired] INT,
            [endreportrequired_value] NVARCHAR(4000),
            [expectedstartofwork] DATE,
            [exposedconditions] NVARCHAR(100),
            [externalinputrequirements] NVARCHAR(4000),
            [fasttrack] INT,
            [fasttrack_value] NVARCHAR(4000),
            [finalcompletion] INT,
            [finalcompletion_value] NVARCHAR(4000),
            [finalcompletionamounteuro] NVARCHAR(100),
            [finalcompletionlimpercent] NVARCHAR(100),
            [finalcompletionperiod] INT,
            [finalcompletionperiod_value] NVARCHAR(4000),
            [formofcontract] INT,
            [formofcontract_value] NVARCHAR(4000),
            [foundation] NVARCHAR(100),
            [frommobdemob] NVARCHAR(500),
            [fuel_yn] INT,
            [fuel_yn_value] NVARCHAR(4000),
            [fullclientprojectname] NVARCHAR(200),
            [functionalapplicationbypass] INT,
            [functionalapplicationbypass_value] NVARCHAR(4000),
            [geophysicalinfo] NVARCHAR(100),
            [geotechnicalinfo] NVARCHAR(100),
            [intermediatecompletionamounteuro] NVARCHAR(100),
            [intermediatecompletionlimpercent] NVARCHAR(100),
            [intermediatecompletionperiod] INT,
            [intermediatecompletionperiod_value] NVARCHAR(4000),
            [intermediatecompletions] INT,
            [intermediatecompletions_value] NVARCHAR(4000),
            [investmentrequired] INT,
            [investmentrequired_value] NVARCHAR(4000),
            [latestapprovedawardsummary_value] NVARCHAR(200),
            [latitude] FLOAT,
            [latitudedegrees] DECIMAL(18, 0),
            [latitudedms] NVARCHAR(20),
            [latitudeminutes] DECIMAL(18, 0),
            [atitudenorthsouth] INT,
            [latitudenorthsouth_value] NVARCHAR(4000),
            [latitudeseconds] DECIMAL(18, 0),
            [lcdreview] INT,
            [lcdreview_value] NVARCHAR(4000),
            [letterofcredit] INT,
            [letterofcredit_value] NVARCHAR(4000),
            [letterofcredit_yn] INT,
            [letterofcredit_yn_value] NVARCHAR(4000),
            [location] NVARCHAR(100),
            [longitude] FLOAT,
            [longitudedegrees] DECIMAL(18, 0),
            [longitudedms] NVARCHAR(20),
            [longitudeeastwest] INT,
            [longitudeeastwest_value] NVARCHAR(4000),
            [longitudeminutes] DECIMAL(18, 0),
            [longitudeseconds] DECIMAL(18, 0),
            [longleaditemssecured] INT,
            [longleaditemssecured_value] NVARCHAR(4000),
            [mainprojectid_value] NVARCHAR(200),
            [maintenanceperiod] DECIMAL(18, 1),
            [maintenanceperioddays] DECIMAL(18, 0),
            [marketdrivers] INT,
            [marketdrivers_value] NVARCHAR(4000),
            [materials_yn] INT,
            [materials_yn_value] NVARCHAR(4000),
            [maxliability] NVARCHAR(250),
            [nonbindingindication] INT,
            [nonbindingindication_value] NVARCHAR(4000),
            [noneurocomponentpercent] DECIMAL(18, 2),
            [ohvs] NVARCHAR(100),
            [onhold] INT,
            [onhold_value] NVARCHAR(4000),
            [onholdreason] INT,
            [onholdreason_value] NVARCHAR(4000),
            [onshore] NVARCHAR(100),
            [overallriskprofileafter] INT,
            [overallriskprofileafter_value] NVARCHAR(4000),
            [overallriskprofilebefore] INT,
            [overallriskprofilebefore_value] NVARCHAR(4000),
            [parentcompanyguarantee] INT,
            [parentcompanyguarantee_value] NVARCHAR(4000),
            [paymentguarantees_creditinsurance] INT,
            [paymentguarantees_creditinsurance_value] NVARCHAR(4000),
            [paymentperioddays] INT,
            [paymentrisk] INT,
            [paymentrisk_value] NVARCHAR(4000),
            [paymentrisk_yn] INT,
            [paymentrisk_yn_value] NVARCHAR(4000),
            [positivecashflow] INT,
            [positivecashflow_value] NVARCHAR(4000),
            [pq] INT,
            [pq_value] NVARCHAR(4000),
            [pqdate] DATE,
            [pqremarks] NVARCHAR(4000),
            [pricevariationsfuel] INT,
            [pricevariationsfuel_value] NVARCHAR(4000),
            [pricevariationsmaterials] INT,
            [pricevariationsmaterials_value] NVARCHAR(4000),
            [pricevariationswages] INT,
            [pricevariationswages_value] NVARCHAR(4000),
            [processnostepfield] INT,
            [processnostepfield_value] NVARCHAR(4000),
            [productgroupsnl] INT,
            [productgroupsnl_value] NVARCHAR(4000),
            [projectdescription] NVARCHAR(4000),
            [projectfinancial] NVARCHAR(36),
            [projectfinancial_value] NVARCHAR(100),
            [projectfinancialdatalasttransferdate] DATETIME2(7),
            [projectgeneral] NVARCHAR(36),
            [projectgeneral_value] NVARCHAR(200),
            [projectphase] INT,
            [projectphase_value] NVARCHAR(4000),
            [projectpreparationmeeting] DATE,
            [projectstatusid] NVARCHAR(100),
            [reasonexplanation] NVARCHAR(4000),
            [reasonexplanationchosen] NVARCHAR(4000),
            [reasonofchangeaward] NVARCHAR(4000),
            [reclamationlevel] NVARCHAR(100),
            [requiredcriticalcompetences] NVARCHAR(4000),
            [resourceavailability] INT,
            [resourceavailability_value] NVARCHAR(4000),
            [retentionpercentage] DECIMAL(18, 2),
            [sailingdistancetodisposalarea] DECIMAL(18, 1),
            [scopeofworkvanoord] NVARCHAR(4000),
            [soildata] NVARCHAR(100),
            [stagegate] INT,
            [stagegate_value] NVARCHAR(4000),
            [stagegatecopy] NVARCHAR(100),
            [stagegatesnapshot] INT,
            [stagegatesnapshot_value] NVARCHAR(4000),
            [startoftender] DATE,
            [statushistoryregisterdate] DATE,
            [statushistoryregisterdate_date_value] DATE,
            [statushistoryregisterdate_state_value] INT,
            [subareaid] NVARCHAR(36),
            [subareaid_value] NVARCHAR(100),
            [substatusreason] INT,
            [substatusreason_value] NVARCHAR(4000),
            [technicallyfeasible] INT,
            [technicallyfeasible_value] NVARCHAR(4000),
            [tenderdate] DATE,
            [tenderenddate] DATE,
            [tendersubmissiondateactual] DATETIME2(7),
            [tendersubmissionplace] NVARCHAR(100),
            [tendertype] INT,
            [tendertype_value] NVARCHAR(4000),
            [tendervalidity] INT,
            [tmp_approvalinitiator_value] NVARCHAR(200),
            [tmp_projectguid] NVARCHAR(100),
            [tmpproject_value] NVARCHAR(200),
            [tomobdemob] NVARCHAR(500),
            [totalcontractvalueeurocopy] DECIMAL(18, 0),
            [totalftedays] DECIMAL(18, 2),
            [totalftedays_date_value] DATETIME2(7),
            [totalftedays_state_value] INT,
            [typeofcontract] INT,
            [typeofcontract_value] NVARCHAR(4000),
            [typeofwork] INT,
            [typeofwork_value] NVARCHAR(4000),
            [typetender] INT,
            [typetender_value] NVARCHAR(4000),
            [userdefinedriskprofile] INT,
            [userdefinedriskprofile_value] NVARCHAR(4000),
            [vanoordentityid] NVARCHAR(36),
            [vanoordentityid_value] NVARCHAR(100),
            [vanoordsubmittingactingas] INT,
            [vanoordsubmittingactingas_value] NVARCHAR(4000),
            [project_versionnumber] INT,
            [vobusinessunitid] NVARCHAR(36),
            [vobusinessunitid_value] NVARCHAR(100),
            [voprojectriskcategory] INT,
            [voprojectriskcategory_value] NVARCHAR(4000),
            [voshareineurocopy] DECIMAL(18, 0),
            [vosharepercentcopy] DECIMAL(18, 2),
            [wages_yn] INT,
            [wages_yn_value] NVARCHAR(4000),
            [waterdepthssite] NVARCHAR(100),
            [windturbineinformation] NVARCHAR(100),
            [winstrategy] NVARCHAR(4000),
            [createdby_value] NVARCHAR(200),
            [createdon] DATETIME2(7),
            [createdonbehalfby_value] NVARCHAR(200),
            [importsequencenumber] INT,
            [modifiedby_value] NVARCHAR(200),
            [modifiedon] DATETIME2(7),
            [modifiedonbehalfby_value] NVARCHAR(200),
            [ownerid_value] NVARCHAR(200),
            [statecode] INT,
            [statecode_value] NVARCHAR(4000),
            [statuscode] INT,
            [statuscode_value] NVARCHAR(4000),
            [dwh_hash] VARBINARY(8000) NOT NULL
        )

        -- Insert data from staging table into temp table
        -- and compute the hash. Use the hash to detect changes.
        INSERT INTO #temp_dyn_project
        SELECT
            [hso_projectid],
            [hso_projectnumber],
            [hso_name],
            [hso_acceptableqhsestandards],
            LEFT([_hso_acceptableqhsestandards_value], 4000),
            [hso_accountid],
            [_hso_accountid_value],
            [hso_activetimeregistrationid],
            [_hso_activetimeregistrationid_value],
            [hso_additionalreason],
            LEFT([_hso_additionalreason_value], 4000),
            [hso_advancepaymentpercentage],
            [hso_alignswithcorporatestrategyactions1],
            LEFT([_hso_alignswithcorporatestrategyactions1_value], 4000),
            [hso_alignswithcorporatestrategyactions2],
            LEFT([_hso_alignswithcorporatestrategyactions2_value], 4000),
            [hso_alternativetobeoffered],
            LEFT([_hso_alternativetobeoffered_value], 4000),
            [hso_anonymizedata],
            LEFT([_hso_anonymizedata_value], 4000),
            LEFT([hso_approvalinitiatorremarks], 4000),
            [hso_approvalstatus],
            LEFT([_hso_approvalstatus_value], 4000),
            [hso_approvalworkflowinprogress],
            LEFT([_hso_approvalworkflowinprogress_value], 4000),
            [hso_areaid],
            [_hso_areaid_value],
            LEFT([hso_availabilitycompetences], 4000),
            [hso_awarddateexpected],
            [_hso_awardnumberid_value],
            [hso_awardsummaryimport],
            LEFT([_hso_awardsummaryimport_value], 4000),
            [hso_awardsummaryinstanceurl],
            [hso_awardsummarynumber],
            [hso_awardsummaryprojectsnapshoturl],
            [hso_awardsummaryreportlink],
            [hso_awardsummaryrevision],
            LEFT([_hso_awardsummaryrevision_value], 4000),
            [hso_baseportinformation],
            [hso_bidvaliditydays],
            [hso_bingmapzoomlevel],
            [hso_cable],
            [hso_calculatedriskprofile],
            LEFT([_hso_calculatedriskprofile_value], 4000),
            [hso_car],
            LEFT([_hso_car_value], 4000),
            [hso_carbonfootprintestimated],
            [hso_chanceofgoingahead],
            LEFT([_hso_chanceofgoingahead_value], 4000),
            [hso_chanceofwinningcommercialposition],
            LEFT([_hso_chanceofwinningcommercialposition_value], 4000),
            [hso_changedawarddate],
            [hso_changedtenderdate],
            LEFT([hso_changestosolution], 4000),
            LEFT([hso_changestosolutionchosen], 4000),
            [_hso_commercialresponsibleid_value],
            [hso_contractconditions],
            LEFT([_hso_contractconditions_value], 4000),
            [hso_countryid],
            [_hso_countryid_value],
            [hso_createawardsummarynumber],
            LEFT([_hso_createawardsummarynumber_value], 4000),
            [hso_createnewprojectnumer],
            LEFT([_hso_createnewprojectnumer_value], 4000),
            [hso_creditinsurance],
            LEFT([_hso_creditinsurance_value], 4000),
            [hso_creditinsurance_yn],
            LEFT([_hso_creditinsurance_yn_value], 4000),
            [hso_currencyrisk],
            LEFT([_hso_currencyrisk_value], 4000),
            [hso_currencyrisk_yn],
            LEFT([_hso_currencyrisk_yn_value], 4000),
            [hso_defectsliabilityperioddays],
            LEFT([hso_definerequiredtenderteamcompetences], 4000),
            [hso_deploymentownequipment],
            LEFT([_hso_deploymentownequipment_value], 4000),
            [hso_designinsurance],
            LEFT([_hso_designinsurance_value], 4000),
            [hso_designresponsibilityyn],
            LEFT([_hso_designresponsibilityyn_value], 4000),
            [hso_dredgingcategory],
            LEFT([_hso_dredgingcategory_value], 4000),
            [hso_durationofcontract],
            [hso_edocs],
            LEFT([_hso_edocs_value], 4000),
            [hso_eepriority],
            LEFT([_hso_eepriority_value], 4000),
            [hso_emviscore],
            LEFT([_hso_emviscore_value], 4000),
            [hso_endreportrequired],
            LEFT([_hso_endreportrequired_value], 4000),
            [hso_expectedstartofwork],
            [hso_exposedconditions],
            LEFT([hso_externalinputrequirements], 4000),
            [hso_fasttrack],
            LEFT([_hso_fasttrack_value], 4000),
            [hso_finalcompletion],
            LEFT([_hso_finalcompletion_value], 4000),
            [hso_finalcompletionamounteuro],
            [hso_finalcompletionlimpercent],
            [hso_finalcompletionperiod],
            LEFT([_hso_finalcompletionperiod_value], 4000),
            [hso_formofcontract],
            LEFT([_hso_formofcontract_value], 4000),
            [hso_foundation],
            [hso_frommobdemob],
            [hso_fuel_yn],
            LEFT([_hso_fuel_yn_value], 4000),
            [hso_fullclientprojectname],
            [hso_functionalapplicationbypass],
            LEFT([_hso_functionalapplicationbypass_value], 4000),
            [hso_geophysicalinfo],
            [hso_geotechnicalinfo],
            [hso_intermediatecompletionamounteuro],
            [hso_intermediatecompletionlimpercent],
            [hso_intermediatecompletionperiod],
            LEFT([_hso_intermediatecompletionperiod_value], 4000),
            [hso_intermediatecompletions],
            LEFT([_hso_intermediatecompletions_value], 4000),
            [hso_investmentrequired],
            LEFT([_hso_investmentrequired_value], 4000),
            [_hso_latestapprovedawardsummary_value],
            [hso_latitude],
            [hso_latitudedegrees],
            [hso_latitudedms],
            [hso_latitudeminutes],
            [hso_latitudenorthsouth],
            LEFT([_hso_latitudenorthsouth_value], 4000),
            [hso_latitudeseconds],
            [hso_lcdreview],
            LEFT([_hso_lcdreview_value], 4000),
            [hso_letterofcredit],
            LEFT([_hso_letterofcredit_value], 4000),
            [hso_letterofcredit_yn],
            LEFT([_hso_letterofcredit_yn_value], 4000),
            [hso_location],
            [hso_longitude],
            [hso_longitudedegrees],
            [hso_longitudedms],
            [hso_longitudeeastwest],
            LEFT([_hso_longitudeeastwest_value], 4000),
            [hso_longitudeminutes],
            [hso_longitudeseconds],
            [hso_longleaditemssecured],
            LEFT([_hso_longleaditemssecured_value], 4000),
            [_hso_mainprojectid_value],
            [hso_maintenanceperiod],
            [hso_maintenanceperioddays],
            [hso_marketdrivers],
            LEFT([_hso_marketdrivers_value], 4000),
            [hso_materials_yn],
            LEFT([_hso_materials_yn_value], 4000),
            [hso_maxliability],
            [hso_nonbindingindication],
            LEFT([hso_nonbindingindication_value], 4000),
            [hso_noneurocomponentpercent],
            [hso_ohvs],
            [hso_onhold],
            LEFT([_hso_onhold_value], 4000),
            [hso_onholdreason],
            LEFT([_hso_onholdreason_value], 4000),
            [hso_onshore],
            [hso_overallriskprofileafter],
            LEFT([_hso_overallriskprofileafter_value], 4000),
            [hso_overallriskprofilebefore],
            LEFT([_hso_overallriskprofilebefore_value], 4000),
            [hso_parentcompanyguarantee],
            LEFT([_hso_parentcompanyguarantee_value], 4000),
            [hso_paymentguarantees_creditinsurance],
            LEFT([_hso_paymentguarantees_creditinsurance_value], 4000),
            [hso_paymentperioddays],
            [hso_paymentrisk],
            LEFT([_hso_paymentrisk_value], 4000),
            [hso_paymentrisk_yn],
            LEFT([_hso_paymentrisk_yn_value], 4000),
            [hso_positivecashflow],
            LEFT([_hso_positivecashflow_value], 4000),
            [hso_pq],
            LEFT([_hso_pq_value], 4000),
            [hso_pqdate],
            LEFT([hso_pqremarks], 4000),
            [hso_pricevariationsfuel],
            LEFT([_hso_pricevariationsfuel_value], 4000),
            [hso_pricevariationsmaterials],
            LEFT([_hso_pricevariationsmaterials_value], 4000),
            [hso_pricevariationswages],
            LEFT([_hso_pricevariationswages_value], 4000),
            [hso_processnostepfield],
            LEFT([_hso_processnostepfield_value], 4000),
            [hso_productgroupsnl],
            LEFT([_hso_productgroupsnl_value], 4000),
            LEFT([hso_projectdescription], 4000),
            [hso_projectfinancial],
            [_hso_projectfinancial_value],
            [hso_projectfinancialdatalasttransferdate],
            [hso_projectgeneral],
            [_hso_projectgeneral_value],
            [hso_projectphase],
            LEFT([_hso_projectphase_value], 4000),
            [hso_projectpreparationmeeting],
            [hso_projectstatusid],
            LEFT([hso_reasonexplanation], 4000),
            LEFT([hso_reasonexplanationchosen], 4000),
            LEFT([hso_reasonofchangeaward], 4000),
            [hso_reclamationlevel],
            LEFT([hso_requiredcriticalcompetences], 4000),
            [hso_resourceavailability],
            LEFT([_hso_resourceavailability_value], 4000),
            [hso_retentionpercentage],
            [hso_sailingdistancetodisposalarea],
            LEFT([hso_scopeofworkvanoord], 4000),
            [hso_soildata],
            [hso_stagegate],
            LEFT([_hso_stagegate_value], 4000),
            [hso_stagegatecopy],
            [hso_stagegatesnapshot],
            LEFT([_hso_stagegatesnapshot_value], 4000),
            [hso_startoftender],
            [hso_statushistoryregisterdate],
            [_hso_statushistoryregisterdate_date_value],
            [_hso_statushistoryregisterdate_state_value],
            [hso_subareaid],
            [_hso_subareaid_value],
            [hso_substatusreason],
            LEFT([_hso_substatusreason_value], 4000),
            [hso_technicallyfeasible],
            LEFT([_hso_technicallyfeasible_value], 4000),
            [hso_tenderdate],
            [hso_tenderenddate],
            [hso_tendersubmissiondateactual],
            [hso_tendersubmissionplace],
            [hso_tendertype],
            LEFT([_hso_tendertype_value], 4000),
            [hso_tendervalidity],
            [_hso_tmp_approvalinitiator_value],
            [hso_tmp_projectguid],
            [_hso_tmpproject_value],
            [hso_tomobdemob],
            [hso_totalcontractvalueeurocopy],
            [hso_totalftedays],
            [_hso_totalftedays_date_value],
            [_hso_totalftedays_state_value],
            [hso_typeofcontract],
            LEFT([_hso_typeofcontract_value], 4000),
            [hso_typeofwork],
            LEFT([_hso_typeofwork_value], 4000),
            [hso_typetender],
            LEFT([_hso_typetender_value], 4000),
            [hso_userdefinedriskprofile],
            LEFT([_hso_userdefinedriskprofile_value], 4000),
            [hso_vanoordentityid],
            [_hso_vanoordentityid_value],
            [hso_vanoordsubmittingactingas],
            LEFT([_hso_vanoordsubmittingactingas_value], 4000),
            [hso_versionnumber],
            [hso_vobusinessunitid],
            [_hso_vobusinessunitid_value],
            [hso_voprojectriskcategory],
            LEFT([_hso_voprojectriskcategory_value], 4000),
            [hso_voshareineurocopy],
            [hso_vosharepercentcopy],
            [hso_wages_yn],
            LEFT([_hso_wages_yn_value], 4000),
            [hso_waterdepthssite],
            [hso_windturbineinformation],
            LEFT([hso_winstrategy], 4000),
            [_createdby_value],
            [createdon],
            [_createdonbehalfby_value],
            [importsequencenumber],
            [_modifiedby_value],
            [modifiedon],
            [_modifiedonbehalfby_value],
            [_ownerid_value],
            [statecode],
            LEFT([_statecode_value], 4000),
            [statuscode],
            LEFT([_statuscode_value], 4000),
            HASHBYTES(
                'MD5',
                ISNULL([hso_projectid], '')
                + ISNULL([hso_projectnumber], '')
                + ISNULL([hso_name], '')
                + ISNULL(CAST([hso_acceptableqhsestandards] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_acceptableqhsestandards_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([hso_accountid], '')
                + ISNULL([_hso_accountid_value], '')
                + ISNULL([hso_activetimeregistrationid], '')
                + ISNULL([_hso_activetimeregistrationid_value], '')
                + ISNULL(CAST([hso_additionalreason] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_additionalreason_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_advancepaymentpercentage] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_alignswithcorporatestrategyactions1] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_alignswithcorporatestrategyactions1_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_alignswithcorporatestrategyactions2] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_alignswithcorporatestrategyactions2_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_alternativetobeoffered] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_alternativetobeoffered_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_anonymizedata] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_anonymizedata_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST(LEFT([hso_approvalinitiatorremarks], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_approvalstatus] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_approvalstatus_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_approvalworkflowinprogress] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_approvalworkflowinprogress_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([hso_areaid], '')
                + ISNULL([_hso_areaid_value], '')
                + ISNULL(CAST(LEFT([hso_availabilitycompetences], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CONVERT(NVARCHAR(19), [hso_awarddateexpected], 120), '')
                + ISNULL([_hso_awardnumberid_value], '')
                + ISNULL(CAST([hso_awardsummaryimport] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_awardsummaryimport_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([hso_awardsummaryinstanceurl], '')
                + ISNULL([hso_awardsummarynumber], '')
                + ISNULL([hso_awardsummaryprojectsnapshoturl], '')
                + ISNULL([hso_awardsummaryreportlink], '')
                + ISNULL(CAST([hso_awardsummaryrevision] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_awardsummaryrevision_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([hso_baseportinformation], '')
                + ISNULL(CAST([hso_bidvaliditydays] AS NVARCHAR(20)), '')
                + ISNULL(CAST([hso_bingmapzoomlevel] AS NVARCHAR(20)), '')
                + ISNULL([hso_cable], '')
                + ISNULL(CAST([hso_calculatedriskprofile] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_calculatedriskprofile_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_car] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_car_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_carbonfootprintestimated] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_chanceofgoingahead] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_chanceofgoingahead_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_chanceofwinningcommercialposition] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_chanceofwinningcommercialposition_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CONVERT(NVARCHAR(19), [hso_changedawarddate], 120), '')
                + ISNULL(CONVERT(NVARCHAR(19), [hso_changedtenderdate], 120), '')
                + ISNULL(CAST(LEFT([hso_changestosolution], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST(LEFT([hso_changestosolutionchosen], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([_hso_commercialresponsibleid_value], '')
                + ISNULL(CAST([hso_contractconditions] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_contractconditions_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([hso_countryid], '')
                + ISNULL([_hso_countryid_value], '')
                + ISNULL(CAST([hso_createawardsummarynumber] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_createawardsummarynumber_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_createnewprojectnumer] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_createnewprojectnumer_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_creditinsurance] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_creditinsurance_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_creditinsurance_yn] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_creditinsurance_yn_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_currencyrisk] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_currencyrisk_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_currencyrisk_yn] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_currencyrisk_yn_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_defectsliabilityperioddays] AS NVARCHAR(50)), '')
                + ISNULL(CAST(LEFT([hso_definerequiredtenderteamcompetences], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_deploymentownequipment] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_deploymentownequipment_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_designinsurance] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_designinsurance_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_designresponsibilityyn] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_designresponsibilityyn_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_dredgingcategory] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_dredgingcategory_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_durationofcontract] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_edocs] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_edocs_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_eepriority] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_eepriority_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_emviscore] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_emviscore_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_endreportrequired] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_endreportrequired_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CONVERT(NVARCHAR(19), [hso_expectedstartofwork], 120), '')
                + ISNULL([hso_exposedconditions], '')
                + ISNULL(CAST(LEFT([hso_externalinputrequirements], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_fasttrack] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_fasttrack_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_finalcompletion] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_finalcompletion_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([hso_finalcompletionamounteuro], '')
                + ISNULL([hso_finalcompletionlimpercent], '')
                + ISNULL(CAST([hso_finalcompletionperiod] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_finalcompletionperiod_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_formofcontract] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_formofcontract_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([hso_foundation], '')
                + ISNULL([hso_frommobdemob], '')
                + ISNULL(CAST([hso_fuel_yn] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_fuel_yn_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([hso_fullclientprojectname], '')
                + ISNULL(CAST([hso_functionalapplicationbypass] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_functionalapplicationbypass_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([hso_geophysicalinfo], '')
                + ISNULL([hso_geotechnicalinfo], '')
                + ISNULL([hso_intermediatecompletionamounteuro], '')
                + ISNULL([hso_intermediatecompletionlimpercent], '')
                + ISNULL(CAST([hso_intermediatecompletionperiod] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_intermediatecompletionperiod_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_intermediatecompletions] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_intermediatecompletions_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_investmentrequired] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_investmentrequired_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([_hso_latestapprovedawardsummary_value], '')
                + ISNULL(CAST([hso_latitude] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_latitudedegrees] AS NVARCHAR(50)), '')
                + ISNULL([hso_latitudedms], '')
                + ISNULL(CAST([hso_latitudeminutes] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_latitudenorthsouth] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_latitudenorthsouth_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_latitudeseconds] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_lcdreview] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_lcdreview_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_letterofcredit] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_letterofcredit_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_letterofcredit_yn] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_letterofcredit_yn_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([hso_location], '')
                + ISNULL(CAST([hso_longitude] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_longitudedegrees] AS NVARCHAR(50)), '')
                + ISNULL([hso_longitudedms], '')
                + ISNULL(CAST([hso_longitudeeastwest] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_longitudeeastwest_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_longitudeminutes] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_longitudeseconds] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_longleaditemssecured] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_longleaditemssecured_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([_hso_mainprojectid_value], '')
                + ISNULL(CAST([hso_maintenanceperiod] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_maintenanceperioddays] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_marketdrivers] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_marketdrivers_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_materials_yn] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_materials_yn_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([hso_maxliability], '')
                + ISNULL(CAST([hso_nonbindingindication] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([hso_nonbindingindication_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_noneurocomponentpercent] AS NVARCHAR(50)), '')
                + ISNULL([hso_ohvs], '')
                + ISNULL(CAST([hso_onhold] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_onhold_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_onholdreason] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_onholdreason_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([hso_onshore], '')
                + ISNULL(CAST([hso_overallriskprofileafter] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_overallriskprofileafter_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_overallriskprofilebefore] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_overallriskprofilebefore_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_parentcompanyguarantee] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_parentcompanyguarantee_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_paymentguarantees_creditinsurance] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_paymentguarantees_creditinsurance_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_paymentperioddays] AS NVARCHAR(20)), '')
                + ISNULL(CAST([hso_paymentrisk] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_paymentrisk_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_paymentrisk_yn] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_paymentrisk_yn_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_positivecashflow] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_positivecashflow_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_pq] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_pq_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CONVERT(NVARCHAR(19), [hso_pqdate], 120), '')
                + ISNULL(CAST(LEFT([hso_pqremarks], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_pricevariationsfuel] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_pricevariationsfuel_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_pricevariationsmaterials] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_pricevariationsmaterials_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_pricevariationswages] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_pricevariationswages_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_processnostepfield] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_processnostepfield_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_productgroupsnl] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_productgroupsnl_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST(LEFT([hso_projectdescription], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([hso_projectfinancial], '')
                + ISNULL([_hso_projectfinancial_value], '')
                + ISNULL(CONVERT(NVARCHAR(19), [hso_projectfinancialdatalasttransferdate], 120), '')
                + ISNULL([hso_projectgeneral], '')
                + ISNULL([_hso_projectgeneral_value], '')
                + ISNULL(CAST([hso_projectphase] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_projectphase_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CONVERT(NVARCHAR(19), [hso_projectpreparationmeeting], 120), '')
                + ISNULL([hso_projectstatusid], '')
                + ISNULL(CAST(LEFT([hso_reasonexplanation], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST(LEFT([hso_reasonexplanationchosen], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST(LEFT([hso_reasonofchangeaward], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([hso_reclamationlevel], '')
                + ISNULL(CAST(LEFT([hso_requiredcriticalcompetences], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_resourceavailability] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_resourceavailability_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_retentionpercentage] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_sailingdistancetodisposalarea] AS NVARCHAR(50)), '')
                + ISNULL(CAST(LEFT([hso_scopeofworkvanoord], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([hso_soildata], '')
                + ISNULL(CAST([hso_stagegate] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_stagegate_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([hso_stagegatecopy], '')
                + ISNULL(CAST([hso_stagegatesnapshot] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_stagegatesnapshot_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CONVERT(NVARCHAR(19), [hso_startoftender], 120), '')
                + ISNULL(CONVERT(NVARCHAR(19), [hso_statushistoryregisterdate], 120), '')
                + ISNULL(CONVERT(NVARCHAR(19), [_hso_statushistoryregisterdate_date_value], 120), '')
                + ISNULL(CAST([_hso_statushistoryregisterdate_state_value] AS NVARCHAR(20)), '')
                + ISNULL([hso_subareaid], '')
                + ISNULL([_hso_subareaid_value], '')
                + ISNULL(CAST([hso_substatusreason] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_substatusreason_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_technicallyfeasible] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_technicallyfeasible_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CONVERT(NVARCHAR(19), [hso_tenderdate], 120), '')
                + ISNULL(CONVERT(NVARCHAR(19), [hso_tenderenddate], 120), '')
                + ISNULL(CONVERT(NVARCHAR(19), [hso_tendersubmissiondateactual], 120), '')
                + ISNULL([hso_tendersubmissionplace], '')
                + ISNULL(CAST([hso_tendertype] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_tendertype_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_tendervalidity] AS NVARCHAR(20)), '')
                + ISNULL([_hso_tmp_approvalinitiator_value], '')
                + ISNULL([hso_tmp_projectguid], '')
                + ISNULL([_hso_tmpproject_value], '')
                + ISNULL([hso_tomobdemob], '')
                + ISNULL(CAST([hso_totalcontractvalueeurocopy] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_totalftedays] AS NVARCHAR(50)), '')
                + ISNULL(CONVERT(NVARCHAR(19), [_hso_totalftedays_date_value], 120), '')
                + ISNULL(CAST([_hso_totalftedays_state_value] AS NVARCHAR(20)), '')
                + ISNULL(CAST([hso_typeofcontract] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_typeofcontract_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_typeofwork] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_typeofwork_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_typetender] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_typetender_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_userdefinedriskprofile] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_userdefinedriskprofile_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([hso_vanoordentityid], '')
                + ISNULL([_hso_vanoordentityid_value], '')
                + ISNULL(CAST([hso_vanoordsubmittingactingas] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_vanoordsubmittingactingas_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_versionnumber] AS NVARCHAR(20)), '')
                + ISNULL([hso_vobusinessunitid], '')
                + ISNULL([_hso_vobusinessunitid_value], '')
                + ISNULL(CAST([hso_voprojectriskcategory] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_voprojectriskcategory_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_voshareineurocopy] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_vosharepercentcopy] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_wages_yn] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_wages_yn_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([hso_waterdepthssite], '')
                + ISNULL([hso_windturbineinformation], '')
                + ISNULL(CAST(LEFT([hso_winstrategy], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([_createdby_value], '')
                + ISNULL(CONVERT(NVARCHAR(19), [createdon], 120), '')
                + ISNULL([_createdonbehalfby_value], '')
                + ISNULL(CAST([importsequencenumber] AS NVARCHAR(20)), '')
                + ISNULL([_modifiedby_value], '')
                + ISNULL(CONVERT(NVARCHAR(19), [modifiedon], 120), '')
                + ISNULL([_modifiedonbehalfby_value], '')
                + ISNULL([_ownerid_value], '')
                + ISNULL(CAST([statecode] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_statecode_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([statuscode] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_statuscode_value], 4000) AS NVARCHAR(4000)), '')
            ) AS [dwh_hash]
        FROM [staged].[dyn_EntityProject]

        IF OBJECT_ID(@schema + '.' + @table) IS NULL
            BEGIN
                DECLARE
                    @ThrowMessage NVARCHAR(100)
                    = 'The table ' + @schema + '.' + @table
                    + ' does not exist.';
                THROW 50000, @ThrowMessage, 1;
            END

        -- Update records that were updated in the source
        UPDATE [processed].[dyn_project]
        SET
            [dwh_valid_to] = DATEADD(DAY, -1, @process_run_date),
            [dwh_process_run_id] = @process_run_id,
            [dwh_active] = 0
        FROM #temp_dyn_project AS [T]
        LEFT JOIN [processed].[dyn_project] AS [P] ON [T].[ak_project] = [P].[ak_project]
        WHERE
            [T].[dwh_hash] != [P].[dwh_hash]
            AND [P].[dwh_active] = 1
        SELECT @updated = @@ROWCOUNT

        --  Update records that were deleted in the source
        UPDATE [processed].[dyn_project]
        SET
            [dwh_valid_to] = DATEADD(DAY, -1, @process_run_date),
            [dwh_process_run_id] = @process_run_id,
            [dwh_active] = 0
        FROM [processed].[dyn_project] AS [P]
        LEFT JOIN #temp_dyn_project AS [T] ON [T].[ak_project] = [P].[ak_project]
        WHERE
            [T].[ak_project] IS NULL
            AND [P].[dwh_active] = 1
        SELECT @deleted = @@ROWCOUNT

        --  Insert new records + insert records that were updated in the source
        INSERT INTO [processed].[dyn_project]
        (
            [dwh_valid_from],
            [dwh_valid_to],
            [dwh_active],
            [dwh_process_run_id],
            [ak_project],
            [projectnumber],
            [name],
            [acceptableqhsestandards],
            LEFT([acceptableqhsestandards_value], 4000),
            [accountid],
            [accountid_value],
            [activetimeregistrationid],
            [activetimeregistrationid_value],
            [additionalreason],
            LEFT([additionalreason_value], 4000),
            [advancepaymentpercentage],
            [alignswithcorporatestrategyactions1],
            LEFT([alignswithcorporatestrategyactions1_value], 4000),
            [alignswithcorporatestrategyactions2],
            LEFT([alignswithcorporatestrategyactions2_value], 4000),
            [alternativetobeoffered],
            LEFT([alternativetobeoffered_value], 4000),
            [anonymizedata],
            LEFT([anonymizedata_value], 4000),
            LEFT([approvalinitiatorremarks], 4000),
            [approvalstatus],
            LEFT([approvalstatus_value], 4000),
            [approvalworkflowinprogress],
            LEFT([approvalworkflowinprogress_value], 4000),
            [areaid],
            [areaid_value],
            LEFT([availabilitycompetences], 4000),
            [awarddateexpected],
            [awardnumberid_value],
            [awardsummaryimport],
            LEFT([awardsummaryimport_value], 4000),
            [awardsummaryinstanceurl],
            [awardsummarynumber],
            [awardsummaryprojectsnapshoturl],
            [awardsummaryreportlink],
            [awardsummaryrevision],
            LEFT([awardsummaryrevision_value], 4000),
            [baseportinformation],
            [bidvaliditydays],
            [bingmapzoomlevel],
            [cable],
            [calculatedriskprofile],
            LEFT([calculatedriskprofile_value], 4000),
            [car],
            LEFT([car_value], 4000),
            [carbonfootprintestimated],
            [chanceofgoingahead],
            LEFT([chanceofgoingahead_value], 4000),
            [chanceofwinningcommercialposition],
            LEFT([chanceofwinningcommercialposition_value], 4000),
            [changedawarddate],
            [changedtenderdate],
            LEFT([changestosolution], 4000),
            LEFT([changestosolutionchosen], 4000),
            [commercialresponsibleid_value],
            [contractconditions],
            LEFT([contractconditions_value], 4000),
            [countryid],
            [countryid_value],
            [createawardsummarynumber],
            LEFT([createawardsummarynumber_value], 4000),
            [createnewprojectnumer],
            LEFT([createnewprojectnumer_value], 4000),
            [creditinsurance],
            LEFT([creditinsurance_value], 4000),
            [creditinsurance_yn],
            LEFT([creditinsurance_yn_value], 4000),
            [currencyrisk],
            LEFT([currencyrisk_value], 4000),
            [currencyrisk_yn],
            LEFT([currencyrisk_yn_value], 4000),
            [defectsliabilityperioddays],
            LEFT([definerequiredtenderteamcompetences], 4000),
            [deploymentownequipment],
            LEFT([deploymentownequipment_value], 4000),
            [designinsurance],
            LEFT([designinsurance_value], 4000),
            [designresponsibilityyn],
            LEFT([designresponsibilityyn_value], 4000),
            [dredgingcategory],
            LEFT([dredgingcategory_value], 4000),
            [durationofcontract],
            [edocs],
            LEFT([edocs_value], 4000),
            [eepriority],
            LEFT([eepriority_value], 4000),
            [emviscore],
            LEFT([emviscore_value], 4000),
            [endreportrequired],
            LEFT([endreportrequired_value], 4000),
            [expectedstartofwork],
            [exposedconditions],
            LEFT([externalinputrequirements], 4000),
            [fasttrack],
            LEFT([fasttrack_value], 4000),
            [finalcompletion],
            LEFT([finalcompletion_value], 4000),
            [finalcompletionamounteuro],
            [finalcompletionlimpercent],
            [finalcompletionperiod],
            LEFT([finalcompletionperiod_value], 4000),
            [formofcontract],
            LEFT([formofcontract_value], 4000),
            [foundation],
            [frommobdemob],
            [fuel_yn],
            LEFT([fuel_yn_value], 4000),
            [fullclientprojectname],
            [functionalapplicationbypass],
            LEFT([functionalapplicationbypass_value], 4000),
            [geophysicalinfo],
            [geotechnicalinfo],
            [intermediatecompletionamounteuro],
            [intermediatecompletionlimpercent],
            [intermediatecompletionperiod],
            LEFT([intermediatecompletionperiod_value], 4000),
            [intermediatecompletions],
            LEFT([intermediatecompletions_value], 4000),
            [investmentrequired],
            LEFT([investmentrequired_value], 4000),
            [latestapprovedawardsummary_value],
            [latitude],
            [latitudedegrees],
            [latitudedms],
            [latitudeminutes],
            [atitudenorthsouth],
            LEFT([latitudenorthsouth_value], 4000),
            [latitudeseconds],
            [lcdreview],
            LEFT([lcdreview_value], 4000),
            [letterofcredit],
            LEFT([letterofcredit_value], 4000),
            [letterofcredit_yn],
            LEFT([letterofcredit_yn_value], 4000),
            [location],
            [longitude],
            [longitudedegrees],
            [longitudedms],
            [longitudeeastwest],
            LEFT([longitudeeastwest_value], 4000),
            [longitudeminutes],
            [longitudeseconds],
            [longleaditemssecured],
            LEFT([longleaditemssecured_value], 4000),
            [mainprojectid_value],
            [maintenanceperiod],
            [maintenanceperioddays],
            [marketdrivers],
            LEFT([marketdrivers_value], 4000),
            [materials_yn],
            LEFT([materials_yn_value], 4000),
            [maxliability],
            [nonbindingindication],
            LEFT([nonbindingindication_value], 4000),
            [noneurocomponentpercent],
            [ohvs],
            [onhold],
            LEFT([onhold_value], 4000),
            [onholdreason],
            LEFT([onholdreason_value], 4000),
            [onshore],
            [overallriskprofileafter],
            LEFT([overallriskprofileafter_value], 4000),
            [overallriskprofilebefore],
            LEFT([overallriskprofilebefore_value], 4000),
            [parentcompanyguarantee],
            LEFT([parentcompanyguarantee_value], 4000),
            [paymentguarantees_creditinsurance],
            LEFT([paymentguarantees_creditinsurance_value], 4000),
            [paymentperioddays],
            [paymentrisk],
            LEFT([paymentrisk_value], 4000),
            [paymentrisk_yn],
            LEFT([paymentrisk_yn_value], 4000),
            [positivecashflow],
            LEFT([positivecashflow_value], 4000),
            [pq],
            LEFT([pq_value], 4000),
            [pqdate],
            LEFT([pqremarks], 4000),
            [pricevariationsfuel],
            LEFT([pricevariationsfuel_value], 4000),
            [pricevariationsmaterials],
            LEFT([pricevariationsmaterials_value], 4000),
            [pricevariationswages],
            LEFT([pricevariationswages_value], 4000),
            [processnostepfield],
            LEFT([processnostepfield_value], 4000),
            [productgroupsnl],
            LEFT([productgroupsnl_value], 4000),
            LEFT([projectdescription], 4000),
            [projectfinancial],
            [projectfinancial_value],
            [projectfinancialdatalasttransferdate],
            [projectgeneral],
            [projectgeneral_value],
            [projectphase],
            LEFT([projectphase_value], 4000),
            [projectpreparationmeeting],
            [projectstatusid],
            LEFT([reasonexplanation], 4000),
            LEFT([reasonexplanationchosen], 4000),
            LEFT([reasonofchangeaward], 4000),
            [reclamationlevel],
            LEFT([requiredcriticalcompetences], 4000),
            [resourceavailability],
            LEFT([resourceavailability_value], 4000),
            [retentionpercentage],
            [sailingdistancetodisposalarea],
            LEFT([scopeofworkvanoord], 4000),
            [soildata],
            [stagegate],
            LEFT([stagegate_value], 4000),
            [stagegatecopy],
            [stagegatesnapshot],
            LEFT([stagegatesnapshot_value], 4000),
            [startoftender],
            [statushistoryregisterdate],
            [statushistoryregisterdate_date_value],
            [statushistoryregisterdate_state_value],
            [subareaid],
            [subareaid_value],
            [substatusreason],
            LEFT([substatusreason_value], 4000),
            [technicallyfeasible],
            LEFT([technicallyfeasible_value], 4000),
            [tenderdate],
            [tenderenddate],
            [tendersubmissiondateactual],
            [tendersubmissionplace],
            [tendertype],
            LEFT([tendertype_value], 4000),
            [tendervalidity],
            [tmp_approvalinitiator_value],
            [tmp_projectguid],
            [tmpproject_value],
            [tomobdemob],
            [totalcontractvalueeurocopy],
            [totalftedays],
            [totalftedays_date_value],
            [totalftedays_state_value],
            [typeofcontract],
            LEFT([typeofcontract_value], 4000),
            [typeofwork],
            LEFT([typeofwork_value], 4000),
            [typetender],
            LEFT([typetender_value], 4000),
            [userdefinedriskprofile],
            LEFT([userdefinedriskprofile_value], 4000),
            [vanoordentityid],
            [vanoordentityid_value],
            [vanoordsubmittingactingas],
            LEFT([vanoordsubmittingactingas_value], 4000),
            [project_versionnumber],
            [vobusinessunitid],
            [vobusinessunitid_value],
            [voprojectriskcategory],
            LEFT([voprojectriskcategory_value], 4000),
            [voshareineurocopy],
            [vosharepercentcopy],
            [wages_yn],
            LEFT([wages_yn_value], 4000),
            [waterdepthssite],
            [windturbineinformation],
            LEFT([winstrategy], 4000),
            [createdby_value],
            [createdon],
            [createdonbehalfby_value],
            [importsequencenumber],
            [modifiedby_value],
            [modifiedon],
            [modifiedonbehalfby_value],
            [ownerid_value],
            [statecode],
            LEFT([statecode_value], 4000),
            [statuscode],
            LEFT([statuscode_value], 4000),
            [dwh_hash]            
        )
        SELECT
            @process_run_date AS [dwh_valid_from],
            NULL AS [dwh_valid_to],
            1 AS [dwh_active],
            @process_run_id AS [dwh_process_run_id],
            [T].[ak_project],
            [T].[projectnumber],
            [T].[name],
            [T].[acceptableqhsestandards],
            [T].[acceptableqhsestandards_value],
            [T].[accountid],
            [T].[accountid_value],
            [T].[activetimeregistrationid],
            [T].[activetimeregistrationid_value],
            [T].[additionalreason],
            [T].[additionalreason_value],
            [T].[advancepaymentpercentage],
            [T].[alignswithcorporatestrategyactions1],
            [T].[alignswithcorporatestrategyactions1_value],
            [T].[alignswithcorporatestrategyactions2],
            [T].[alignswithcorporatestrategyactions2_value],
            [T].[alternativetobeoffered],
            [T].[alternativetobeoffered_value],
            [T].[anonymizedata],
            [T].[anonymizedata_value],
            [T].[approvalinitiatorremarks],
            [T].[approvalstatus],
            [T].[approvalstatus_value],
            [T].[approvalworkflowinprogress],
            [T].[approvalworkflowinprogress_value],
            [T].[areaid],
            [T].[areaid_value],
            [T].[availabilitycompetences],
            [T].[awarddateexpected],
            [T].[awardnumberid_value],
            [T].[awardsummaryimport],
            [T].[awardsummaryimport_value],
            [T].[awardsummaryinstanceurl],
            [T].[awardsummarynumber],
            [T].[awardsummaryprojectsnapshoturl],
            [T].[awardsummaryreportlink],
            [T].[awardsummaryrevision],
            [T].[awardsummaryrevision_value],
            [T].[baseportinformation],
            [T].[bidvaliditydays],
            [T].[bingmapzoomlevel],
            [T].[cable],
            [T].[calculatedriskprofile],
            [T].[calculatedriskprofile_value],
            [T].[car],
            [T].[car_value],
            [T].[carbonfootprintestimated],
            [T].[chanceofgoingahead],
            [T].[chanceofgoingahead_value],
            [T].[chanceofwinningcommercialposition],
            [T].[chanceofwinningcommercialposition_value],
            [T].[changedawarddate],
            [T].[changedtenderdate],
            [T].[changestosolution],
            [T].[changestosolutionchosen],
            [T].[commercialresponsibleid_value],
            [T].[contractconditions],
            [T].[contractconditions_value],
            [T].[countryid],
            [T].[countryid_value],
            [T].[createawardsummarynumber],
            [T].[createawardsummarynumber_value],
            [T].[createnewprojectnumer],
            [T].[createnewprojectnumer_value],
            [T].[creditinsurance],
            [T].[creditinsurance_value],
            [T].[creditinsurance_yn],
            [T].[creditinsurance_yn_value],
            [T].[currencyrisk],
            [T].[currencyrisk_value],
            [T].[currencyrisk_yn],
            [T].[currencyrisk_yn_value],
            [T].[defectsliabilityperioddays],
            [T].[definerequiredtenderteamcompetences],
            [T].[deploymentownequipment],
            [T].[deploymentownequipment_value],
            [T].[designinsurance],
            [T].[designinsurance_value],
            [T].[designresponsibilityyn],
            [T].[designresponsibilityyn_value],
            [T].[dredgingcategory],
            [T].[dredgingcategory_value],
            [T].[durationofcontract],
            [T].[edocs],
            [T].[edocs_value],
            [T].[eepriority],
            [T].[eepriority_value],
            [T].[emviscore],
            [T].[emviscore_value],
            [T].[endreportrequired],
            [T].[endreportrequired_value],
            [T].[expectedstartofwork],
            [T].[exposedconditions],
            [T].[externalinputrequirements],
            [T].[fasttrack],
            [T].[fasttrack_value],
            [T].[finalcompletion],
            [T].[finalcompletion_value],
            [T].[finalcompletionamounteuro],
            [T].[finalcompletionlimpercent],
            [T].[finalcompletionperiod],
            [T].[finalcompletionperiod_value],
            [T].[formofcontract],
            [T].[formofcontract_value],
            [T].[foundation],
            [T].[frommobdemob],
            [T].[fuel_yn],
            [T].[fuel_yn_value],
            [T].[fullclientprojectname],
            [T].[functionalapplicationbypass],
            [T].[functionalapplicationbypass_value],
            [T].[geophysicalinfo],
            [T].[geotechnicalinfo],
            [T].[intermediatecompletionamounteuro],
            [T].[intermediatecompletionlimpercent],
            [T].[intermediatecompletionperiod],
            [T].[intermediatecompletionperiod_value],
            [T].[intermediatecompletions],
            [T].[intermediatecompletions_value],
            [T].[investmentrequired],
            [T].[investmentrequired_value],
            [T].[latestapprovedawardsummary_value],
            [T].[latitude],
            [T].[latitudedegrees],
            [T].[latitudedms],
            [T].[latitudeminutes],
            [T].[atitudenorthsouth],
            [T].[latitudenorthsouth_value],
            [T].[latitudeseconds],
            [T].[lcdreview],
            [T].[lcdreview_value],
            [T].[letterofcredit],
            [T].[letterofcredit_value],
            [T].[letterofcredit_yn],
            [T].[letterofcredit_yn_value],
            [T].[location],
            [T].[longitude],
            [T].[longitudedegrees],
            [T].[longitudedms],
            [T].[longitudeeastwest],
            [T].[longitudeeastwest_value],
            [T].[longitudeminutes],
            [T].[longitudeseconds],
            [T].[longleaditemssecured],
            [T].[longleaditemssecured_value],
            [T].[mainprojectid_value],
            [T].[maintenanceperiod],
            [T].[maintenanceperioddays],
            [T].[marketdrivers],
            [T].[marketdrivers_value],
            [T].[materials_yn],
            [T].[materials_yn_value],
            [T].[maxliability],
            [T].[nonbindingindication],
            [T].[nonbindingindication_value],
            [T].[noneurocomponentpercent],
            [T].[ohvs],
            [T].[onhold],
            [T].[onhold_value],
            [T].[onholdreason],
            [T].[onholdreason_value],
            [T].[onshore],
            [T].[overallriskprofileafter],
            [T].[overallriskprofileafter_value],
            [T].[overallriskprofilebefore],
            [T].[overallriskprofilebefore_value],
            [T].[parentcompanyguarantee],
            [T].[parentcompanyguarantee_value],
            [T].[paymentguarantees_creditinsurance],
            [T].[paymentguarantees_creditinsurance_value],
            [T].[paymentperioddays],
            [T].[paymentrisk],
            [T].[paymentrisk_value],
            [T].[paymentrisk_yn],
            [T].[paymentrisk_yn_value],
            [T].[positivecashflow],
            [T].[positivecashflow_value],
            [T].[pq],
            [T].[pq_value],
            [T].[pqdate],
            [T].[pqremarks],
            [T].[pricevariationsfuel],
            [T].[pricevariationsfuel_value],
            [T].[pricevariationsmaterials],
            [T].[pricevariationsmaterials_value],
            [T].[pricevariationswages],
            [T].[pricevariationswages_value],
            [T].[processnostepfield],
            [T].[processnostepfield_value],
            [T].[productgroupsnl],
            [T].[productgroupsnl_value],
            [T].[projectdescription],
            [T].[projectfinancial],
            [T].[projectfinancial_value],
            [T].[projectfinancialdatalasttransferdate],
            [T].[projectgeneral],
            [T].[projectgeneral_value],
            [T].[projectphase],
            [T].[projectphase_value],
            [T].[projectpreparationmeeting],
            [T].[projectstatusid],
            [T].[reasonexplanation],
            [T].[reasonexplanationchosen],
            [T].[reasonofchangeaward],
            [T].[reclamationlevel],
            [T].[requiredcriticalcompetences],
            [T].[resourceavailability],
            [T].[resourceavailability_value],
            [T].[retentionpercentage],
            [T].[sailingdistancetodisposalarea],
            [T].[scopeofworkvanoord],
            [T].[soildata],
            [T].[stagegate],
            [T].[stagegate_value],
            [T].[stagegatecopy],
            [T].[stagegatesnapshot],
            [T].[stagegatesnapshot_value],
            [T].[startoftender],
            [T].[statushistoryregisterdate],
            [T].[statushistoryregisterdate_date_value],
            [T].[statushistoryregisterdate_state_value],
            [T].[subareaid],
            [T].[subareaid_value],
            [T].[substatusreason],
            [T].[substatusreason_value],
            [T].[technicallyfeasible],
            [T].[technicallyfeasible_value],
            [T].[tenderdate],
            [T].[tenderenddate],
            [T].[tendersubmissiondateactual],
            [T].[tendersubmissionplace],
            [T].[tendertype],
            [T].[tendertype_value],
            [T].[tendervalidity],
            [T].[tmp_approvalinitiator_value],
            [T].[tmp_projectguid],
            [T].[tmpproject_value],
            [T].[tomobdemob],
            [T].[totalcontractvalueeurocopy],
            [T].[totalftedays],
            [T].[totalftedays_date_value],
            [T].[totalftedays_state_value],
            [T].[typeofcontract],
            [T].[typeofcontract_value],
            [T].[typeofwork],
            [T].[typeofwork_value],
            [T].[typetender],
            [T].[typetender_value],
            [T].[userdefinedriskprofile],
            [T].[userdefinedriskprofile_value],
            [T].[vanoordentityid],
            [T].[vanoordentityid_value],
            [T].[vanoordsubmittingactingas],
            [T].[vanoordsubmittingactingas_value],
            [T].[project_versionnumber],
            [T].[vobusinessunitid],
            [T].[vobusinessunitid_value],
            [T].[voprojectriskcategory],
            [T].[voprojectriskcategory_value],
            [T].[voshareineurocopy],
            [T].[vosharepercentcopy],
            [T].[wages_yn],
            [T].[wages_yn_value],
            [T].[waterdepthssite],
            [T].[windturbineinformation],
            [T].[winstrategy],
            [T].[createdby_value],
            [T].[createdon],
            [T].[createdonbehalfby_value],
            [T].[importsequencenumber],
            [T].[modifiedby_value],
            [T].[modifiedon],
            [T].[modifiedonbehalfby_value],
            [T].[ownerid_value],
            [T].[statecode],
            [T].[statecode_value],
            [T].[statuscode],
            [T].[statuscode_value],
            [T].[dwh_hash]
        FROM #temp_dyn_project AS [T]
        LEFT JOIN [processed].[dyn_project] AS [P] ON [T].[ak_project] = [P].[ak_project]
        WHERE
            [P].[ak_project] IS NULL
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
