CREATE PROCEDURE [processed].[sp_load_dyn_project]
    @process_run_date DATE,
    @process_run_id UNIQUEIDENTIFIER
AS
BEGIN
    DECLARE
        @schema NVARCHAR(20) = 'processed',
        @table NVARCHAR(20) = 'dyn_project',

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
            [AK_project] NVARCHAR(36),
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
            [timezoneruleversionnumber] INT,
            [versionnumber] BIGINT,
            [Hash] VARBINARY(8000) NOT NULL
        )

        -- Insert data from staging table into temp table
        -- and compute the hash. Use the hash to detect changes.
        INSERT INTO #temp_dyn_project
        SELECT
            [hso_projectid],
            [hso_projectnumber],
            [hso_name],
            [hso_acceptableqhsestandards],
            [_hso_acceptableqhsestandards_value],
            [hso_accountid],
            [_hso_accountid_value],
            [hso_activetimeregistrationid],
            [_hso_activetimeregistrationid_value],
            [hso_additionalreason],
            [_hso_additionalreason_value],
            [hso_advancepaymentpercentage],
            [hso_alignswithcorporatestrategyactions1],
            [_hso_alignswithcorporatestrategyactions1_value],
            [hso_alignswithcorporatestrategyactions2],
            [_hso_alignswithcorporatestrategyactions2_value],
            [hso_alternativetobeoffered],
            [_hso_alternativetobeoffered_value],
            [hso_anonymizedata],
            [_hso_anonymizedata_value],
            [hso_approvalinitiatorremarks],
            [hso_approvalstatus],
            [_hso_approvalstatus_value],
            [hso_approvalworkflowinprogress],
            [_hso_approvalworkflowinprogress_value],
            [hso_areaid],
            [_hso_areaid_value],
            [hso_availabilitycompetences],
            [hso_awarddateexpected],
            [_hso_awardnumberid_value],
            [hso_awardsummaryimport],
            [_hso_awardsummaryimport_value],
            [hso_awardsummaryinstanceurl],
            [hso_awardsummarynumber],
            [hso_awardsummaryprojectsnapshoturl],
            [hso_awardsummaryreportlink],
            [hso_awardsummaryrevision],
            [_hso_awardsummaryrevision_value],
            [hso_baseportinformation],
            [hso_bidvaliditydays],
            [hso_bingmapzoomlevel],
            [hso_cable],
            [hso_calculatedriskprofile],
            [_hso_calculatedriskprofile_value],
            [hso_car],
            [_hso_car_value],
            [hso_carbonfootprintestimated],
            [hso_chanceofgoingahead],
            [_hso_chanceofgoingahead_value],
            [hso_chanceofwinningcommercialposition],
            [_hso_chanceofwinningcommercialposition_value],
            [hso_changedawarddate],
            [hso_changedtenderdate],
            [hso_changestosolution],
            [hso_changestosolutionchosen],
            [_hso_commercialresponsibleid_value],
            [hso_contractconditions],
            [_hso_contractconditions_value],
            [hso_countryid],
            [_hso_countryid_value],
            [hso_createawardsummarynumber],
            [_hso_createawardsummarynumber_value],
            [hso_createnewprojectnumer],
            [_hso_createnewprojectnumer_value],
            [hso_creditinsurance],
            [_hso_creditinsurance_value],
            [hso_creditinsurance_yn],
            [_hso_creditinsurance_yn_value],
            [hso_currencyrisk],
            [_hso_currencyrisk_value],
            [hso_currencyrisk_yn],
            [_hso_currencyrisk_yn_value],
            [hso_defectsliabilityperioddays],
            [hso_definerequiredtenderteamcompetences],
            [hso_deploymentownequipment],
            [_hso_deploymentownequipment_value],
            [hso_designinsurance],
            [_hso_designinsurance_value],
            [hso_designresponsibilityyn],
            [_hso_designresponsibilityyn_value],
            [hso_dredgingcategory],
            [_hso_dredgingcategory_value],
            [hso_durationofcontract],
            [hso_edocs],
            [_hso_edocs_value],
            [hso_eepriority],
            [_hso_eepriority_value],
            [hso_emviscore],
            [_hso_emviscore_value],
            [hso_endreportrequired],
            [_hso_endreportrequired_value],
            [hso_expectedstartofwork],
            [hso_exposedconditions],
            [hso_externalinputrequirements],
            [hso_fasttrack],
            [_hso_fasttrack_value],
            [hso_finalcompletion],
            [_hso_finalcompletion_value],
            [hso_finalcompletionamounteuro],
            [hso_finalcompletionlimpercent],
            [hso_finalcompletionperiod],
            [_hso_finalcompletionperiod_value],
            [hso_formofcontract],
            [_hso_formofcontract_value],
            [hso_foundation],
            [hso_frommobdemob],
            [hso_fuel_yn],
            [_hso_fuel_yn_value],
            [hso_fullclientprojectname],
            [hso_functionalapplicationbypass],
            [_hso_functionalapplicationbypass_value],
            [hso_geophysicalinfo],
            [hso_geotechnicalinfo],
            [hso_intermediatecompletionamounteuro],
            [hso_intermediatecompletionlimpercent],
            [hso_intermediatecompletionperiod],
            [_hso_intermediatecompletionperiod_value],
            [hso_intermediatecompletions],
            [_hso_intermediatecompletions_value],
            [hso_investmentrequired],
            [_hso_investmentrequired_value],
            [_hso_latestapprovedawardsummary_value],
            [hso_latitude],
            [hso_latitudedegrees],
            [hso_latitudedms],
            [hso_latitudeminutes],
            [hso_latitudenorthsouth],
            [_hso_latitudenorthsouth_value],
            [hso_latitudeseconds],
            [hso_lcdreview],
            [_hso_lcdreview_value],
            [hso_letterofcredit],
            [_hso_letterofcredit_value],
            [hso_letterofcredit_yn],
            [_hso_letterofcredit_yn_value],
            [hso_location],
            [hso_longitude],
            [hso_longitudedegrees],
            [hso_longitudedms],
            [hso_longitudeeastwest],
            [_hso_longitudeeastwest_value],
            [hso_longitudeminutes],
            [hso_longitudeseconds],
            [hso_longleaditemssecured],
            [_hso_longleaditemssecured_value],
            [_hso_mainprojectid_value],
            [hso_maintenanceperiod],
            [hso_maintenanceperioddays],
            [hso_marketdrivers],
            [_hso_marketdrivers_value],
            [hso_materials_yn],
            [_hso_materials_yn_value],
            [hso_maxliability],
            [hso_nonbindingindication],
            [hso_nonbindingindication_value],
            [hso_noneurocomponentpercent],
            [hso_ohvs],
            [hso_onhold],
            [_hso_onhold_value],
            [hso_onholdreason],
            [_hso_onholdreason_value],
            [hso_onshore],
            [hso_overallriskprofileafter],
            [_hso_overallriskprofileafter_value],
            [hso_overallriskprofilebefore],
            [_hso_overallriskprofilebefore_value],
            [hso_parentcompanyguarantee],
            [_hso_parentcompanyguarantee_value],
            [hso_paymentguarantees_creditinsurance],
            [_hso_paymentguarantees_creditinsurance_value],
            [hso_paymentperioddays],
            [hso_paymentrisk],
            [_hso_paymentrisk_value],
            [hso_paymentrisk_yn],
            [_hso_paymentrisk_yn_value],
            [hso_positivecashflow],
            [_hso_positivecashflow_value],
            [hso_pq],
            [_hso_pq_value],
            [hso_pqdate],
            [hso_pqremarks],
            [hso_pricevariationsfuel],
            [_hso_pricevariationsfuel_value],
            [hso_pricevariationsmaterials],
            [_hso_pricevariationsmaterials_value],
            [hso_pricevariationswages],
            [_hso_pricevariationswages_value],
            [hso_processnostepfield],
            [_hso_processnostepfield_value],
            [hso_productgroupsnl],
            [_hso_productgroupsnl_value],
            [hso_projectdescription],
            [hso_projectfinancial],
            [_hso_projectfinancial_value],
            [hso_projectfinancialdatalasttransferdate],
            [hso_projectgeneral],
            [_hso_projectgeneral_value],
            [hso_projectphase],
            [_hso_projectphase_value],
            [hso_projectpreparationmeeting],
            [hso_projectstatusid],
            [hso_reasonexplanation],
            [hso_reasonexplanationchosen],
            [hso_reasonofchangeaward],
            [hso_reclamationlevel],
            [hso_requiredcriticalcompetences],
            [hso_resourceavailability],
            [_hso_resourceavailability_value],
            [hso_retentionpercentage],
            [hso_sailingdistancetodisposalarea],
            [hso_scopeofworkvanoord],
            [hso_soildata],
            [hso_stagegate],
            [_hso_stagegate_value],
            [hso_stagegatecopy],
            [hso_stagegatesnapshot],
            [_hso_stagegatesnapshot_value],
            [hso_startoftender],
            [hso_statushistoryregisterdate],
            [_hso_statushistoryregisterdate_date_value],
            [_hso_statushistoryregisterdate_state_value],
            [hso_subareaid],
            [_hso_subareaid_value],
            [hso_substatusreason],
            [_hso_substatusreason_value],
            [hso_technicallyfeasible],
            [_hso_technicallyfeasible_value],
            [hso_tenderdate],
            [hso_tenderenddate],
            [hso_tendersubmissiondateactual],
            [hso_tendersubmissionplace],
            [hso_tendertype],
            [_hso_tendertype_value],
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
            [_hso_typeofcontract_value],
            [hso_typeofwork],
            [_hso_typeofwork_value],
            [hso_typetender],
            [_hso_typetender_value],
            [hso_userdefinedriskprofile],
            [_hso_userdefinedriskprofile_value],
            [hso_vanoordentityid],
            [_hso_vanoordentityid_value],
            [hso_vanoordsubmittingactingas],
            [_hso_vanoordsubmittingactingas_value],
            [hso_versionnumber],
            [hso_vobusinessunitid],
            [_hso_vobusinessunitid_value],
            [hso_voprojectriskcategory],
            [_hso_voprojectriskcategory_value],
            [hso_voshareineurocopy],
            [hso_vosharepercentcopy],
            [hso_wages_yn],
            [_hso_wages_yn_value],
            [hso_waterdepthssite],
            [hso_windturbineinformation],
            [hso_winstrategy],
            [_createdby_value],
            [createdon],
            [_createdonbehalfby_value],
            [importsequencenumber],
            [_modifiedby_value],
            [modifiedon],
            [_modifiedonbehalfby_value],
            [_ownerid_value],
            [statecode],
            [_statecode_value],
            [statuscode],
            [_statuscode_value],
            [timezoneruleversionnumber],
            [versionnumber],
            HASHBYTES(
                'MD5',
                ISNULL([hso_projectid], '')
                + ISNULL([hso_projectnumber], '')
                + ISNULL([hso_name], '')
                + ISNULL(CAST([hso_acceptableqhsestandards] AS NVARCHAR(20)), '')
                + ISNULL([_hso_acceptableqhsestandards_value], '')
                + ISNULL([hso_accountid], '')
                + ISNULL([_hso_accountid_value], '')
                + ISNULL([hso_activetimeregistrationid], '')
                + ISNULL([_hso_activetimeregistrationid_value], '')
                + ISNULL(CAST([hso_additionalreason] AS NVARCHAR(20)), '')
                + ISNULL([_hso_additionalreason_value], '')
                + ISNULL(CAST([hso_advancepaymentpercentage] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_alignswithcorporatestrategyactions1] AS NVARCHAR(20)), '')
                + ISNULL([_hso_alignswithcorporatestrategyactions1_value], '')
                + ISNULL(CAST([hso_alignswithcorporatestrategyactions2] AS NVARCHAR(20)), '')
                + ISNULL([_hso_alignswithcorporatestrategyactions2_value], '')
                + ISNULL(CAST([hso_alternativetobeoffered] AS NVARCHAR(20)), '')
                + ISNULL([_hso_alternativetobeoffered_value], '')
                + ISNULL(CAST([hso_anonymizedata] AS NVARCHAR(20)), '')
                + ISNULL([_hso_anonymizedata_value], '')
                + ISNULL([hso_approvalinitiatorremarks], '')
                + ISNULL(CAST([hso_approvalstatus] AS NVARCHAR(20)), '')
                + ISNULL([_hso_approvalstatus_value], '')
                + ISNULL(CAST([hso_approvalworkflowinprogress] AS NVARCHAR(20)), '')
                + ISNULL([_hso_approvalworkflowinprogress_value], '')
                + ISNULL([hso_areaid], '')
                + ISNULL([_hso_areaid_value], '')
                + ISNULL([hso_availabilitycompetences], '')
                + ISNULL(CONVERT(NVARCHAR(19), [hso_awarddateexpected], 120), '')
                + ISNULL([_hso_awardnumberid_value], '')
                + ISNULL(CAST([hso_awardsummaryimport] AS NVARCHAR(20)), '')
                + ISNULL([_hso_awardsummaryimport_value], '')
                + ISNULL([hso_awardsummaryinstanceurl], '')
                + ISNULL([hso_awardsummarynumber], '')
                + ISNULL([hso_awardsummaryprojectsnapshoturl], '')
                + ISNULL([hso_awardsummaryreportlink], '')
                + ISNULL(CAST([hso_awardsummaryrevision] AS NVARCHAR(20)), '')
                + ISNULL([_hso_awardsummaryrevision_value], '')
                + ISNULL([hso_baseportinformation], '')
                + ISNULL(CAST([hso_bidvaliditydays] AS NVARCHAR(20)), '')
                + ISNULL(CAST([hso_bingmapzoomlevel] AS NVARCHAR(20)), '')
                + ISNULL([hso_cable], '')
                + ISNULL(CAST([hso_calculatedriskprofile] AS NVARCHAR(20)), '')
                + ISNULL([_hso_calculatedriskprofile_value], '')
                + ISNULL(CAST([hso_car] AS NVARCHAR(20)), '')
                + ISNULL([_hso_car_value], '')
                + ISNULL(CAST([hso_carbonfootprintestimated] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_chanceofgoingahead] AS NVARCHAR(20)), '')
                + ISNULL([_hso_chanceofgoingahead_value], '')
                + ISNULL(CAST([hso_chanceofwinningcommercialposition] AS NVARCHAR(20)), '')
                + ISNULL([_hso_chanceofwinningcommercialposition_value], '')
                + ISNULL(CONVERT(NVARCHAR(19), [hso_changedawarddate], 120), '')
                + ISNULL(CONVERT(NVARCHAR(19), [hso_changedtenderdate], 120), '')
                + ISNULL([hso_changestosolution], '')
                + ISNULL([hso_changestosolutionchosen], '')
                + ISNULL([_hso_commercialresponsibleid_value], '')
                + ISNULL(CAST([hso_contractconditions] AS NVARCHAR(20)), '')
                + ISNULL([_hso_contractconditions_value], '')
                + ISNULL([hso_countryid], '')
                + ISNULL([_hso_countryid_value], '')
                + ISNULL(CAST([hso_createawardsummarynumber] AS NVARCHAR(20)), '')
                + ISNULL([_hso_createawardsummarynumber_value], '')
                + ISNULL(CAST([hso_createnewprojectnumer] AS NVARCHAR(20)), '')
                + ISNULL([_hso_createnewprojectnumer_value], '')
                + ISNULL(CAST([hso_creditinsurance] AS NVARCHAR(20)), '')
                + ISNULL([_hso_creditinsurance_value], '')
                + ISNULL(CAST([hso_creditinsurance_yn] AS NVARCHAR(20)), '')
                + ISNULL([_hso_creditinsurance_yn_value], '')
                + ISNULL(CAST([hso_currencyrisk] AS NVARCHAR(20)), '')
                + ISNULL([_hso_currencyrisk_value], '')
                + ISNULL(CAST([hso_currencyrisk_yn] AS NVARCHAR(20)), '')
                + ISNULL([_hso_currencyrisk_yn_value], '')
                + ISNULL(CAST([hso_defectsliabilityperioddays] AS NVARCHAR(50)), '')
                + ISNULL([hso_definerequiredtenderteamcompetences], '')
                + ISNULL(CAST([hso_deploymentownequipment] AS NVARCHAR(20)), '')
                + ISNULL([_hso_deploymentownequipment_value], '')
                + ISNULL(CAST([hso_designinsurance] AS NVARCHAR(20)), '')
                + ISNULL([_hso_designinsurance_value], '')
                + ISNULL(CAST([hso_designresponsibilityyn] AS NVARCHAR(20)), '')
                + ISNULL([_hso_designresponsibilityyn_value], '')
                + ISNULL(CAST([hso_dredgingcategory] AS NVARCHAR(20)), '')
                + ISNULL([_hso_dredgingcategory_value], '')
                + ISNULL(CAST([hso_durationofcontract] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_edocs] AS NVARCHAR(20)), '')
                + ISNULL([_hso_edocs_value], '')
                + ISNULL(CAST([hso_eepriority] AS NVARCHAR(20)), '')
                + ISNULL([_hso_eepriority_value], '')
                + ISNULL(CAST([hso_emviscore] AS NVARCHAR(20)), '')
                + ISNULL([_hso_emviscore_value], '')
                + ISNULL(CAST([hso_endreportrequired] AS NVARCHAR(20)), '')
                + ISNULL([_hso_endreportrequired_value], '')
                + ISNULL(CONVERT(NVARCHAR(19), [hso_expectedstartofwork], 120), '')
                + ISNULL([hso_exposedconditions], '')
                + ISNULL([hso_externalinputrequirements], '')
                + ISNULL(CAST([hso_fasttrack] AS NVARCHAR(20)), '')
                + ISNULL([_hso_fasttrack_value], '')
                + ISNULL(CAST([hso_finalcompletion] AS NVARCHAR(20)), '')
                + ISNULL([_hso_finalcompletion_value], '')
                + ISNULL([hso_finalcompletionamounteuro], '')
                + ISNULL([hso_finalcompletionlimpercent], '')
                + ISNULL(CAST([hso_finalcompletionperiod] AS NVARCHAR(20)), '')
                + ISNULL([_hso_finalcompletionperiod_value], '')
                + ISNULL(CAST([hso_formofcontract] AS NVARCHAR(20)), '')
                + ISNULL([_hso_formofcontract_value], '')
                + ISNULL([hso_foundation], '')
                + ISNULL([hso_frommobdemob], '')
                + ISNULL(CAST([hso_fuel_yn] AS NVARCHAR(20)), '')
                + ISNULL([_hso_fuel_yn_value], '')
                + ISNULL([hso_fullclientprojectname], '')
                + ISNULL(CAST([hso_functionalapplicationbypass] AS NVARCHAR(20)), '')
                + ISNULL([_hso_functionalapplicationbypass_value], '')
                + ISNULL([hso_geophysicalinfo], '')
                + ISNULL([hso_geotechnicalinfo], '')
                + ISNULL([hso_intermediatecompletionamounteuro], '')
                + ISNULL([hso_intermediatecompletionlimpercent], '')
                + ISNULL(CAST([hso_intermediatecompletionperiod] AS NVARCHAR(20)), '')
                + ISNULL([_hso_intermediatecompletionperiod_value], '')
                + ISNULL(CAST([hso_intermediatecompletions] AS NVARCHAR(20)), '')
                + ISNULL([_hso_intermediatecompletions_value], '')
                + ISNULL(CAST([hso_investmentrequired] AS NVARCHAR(20)), '')
                + ISNULL([_hso_investmentrequired_value], '')
                + ISNULL([_hso_latestapprovedawardsummary_value], '')
                + ISNULL(CAST([hso_latitude] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_latitudedegrees] AS NVARCHAR(50)), '')
                + ISNULL([hso_latitudedms], '')
                + ISNULL(CAST([hso_latitudeminutes] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_latitudenorthsouth] AS NVARCHAR(20)), '')
                + ISNULL([_hso_latitudenorthsouth_value], '')
                + ISNULL(CAST([hso_latitudeseconds] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_lcdreview] AS NVARCHAR(20)), '')
                + ISNULL([_hso_lcdreview_value], '')
                + ISNULL(CAST([hso_letterofcredit] AS NVARCHAR(20)), '')
                + ISNULL([_hso_letterofcredit_value], '')
                + ISNULL(CAST([hso_letterofcredit_yn] AS NVARCHAR(20)), '')
                + ISNULL([_hso_letterofcredit_yn_value], '')
                + ISNULL([hso_location], '')
                + ISNULL(CAST([hso_longitude] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_longitudedegrees] AS NVARCHAR(50)), '')
                + ISNULL([hso_longitudedms], '')
                + ISNULL(CAST([hso_longitudeeastwest] AS NVARCHAR(20)), '')
                + ISNULL([_hso_longitudeeastwest_value], '')
                + ISNULL(CAST([hso_longitudeminutes] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_longitudeseconds] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_longleaditemssecured] AS NVARCHAR(20)), '')
                + ISNULL([_hso_longleaditemssecured_value], '')
                + ISNULL([_hso_mainprojectid_value], '')
                + ISNULL(CAST([hso_maintenanceperiod] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_maintenanceperioddays] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_marketdrivers] AS NVARCHAR(20)), '')
                + ISNULL([_hso_marketdrivers_value], '')
                + ISNULL(CAST([hso_materials_yn] AS NVARCHAR(20)), '')
                + ISNULL([_hso_materials_yn_value], '')
                + ISNULL([hso_maxliability], '')
                + ISNULL(CAST([hso_nonbindingindication] AS NVARCHAR(20)), '')
                + ISNULL([hso_nonbindingindication_value], '')
                + ISNULL(CAST([hso_noneurocomponentpercent] AS NVARCHAR(50)), '')
                + ISNULL([hso_ohvs], '')
                + ISNULL(CAST([hso_onhold] AS NVARCHAR(20)), '')
                + ISNULL([_hso_onhold_value], '')
                + ISNULL(CAST([hso_onholdreason] AS NVARCHAR(20)), '')
                + ISNULL([_hso_onholdreason_value], '')
                + ISNULL([hso_onshore], '')
                + ISNULL(CAST([hso_overallriskprofileafter] AS NVARCHAR(20)), '')
                + ISNULL([_hso_overallriskprofileafter_value], '')
                + ISNULL(CAST([hso_overallriskprofilebefore] AS NVARCHAR(20)), '')
                + ISNULL([_hso_overallriskprofilebefore_value], '')
                + ISNULL(CAST([hso_parentcompanyguarantee] AS NVARCHAR(20)), '')
                + ISNULL([_hso_parentcompanyguarantee_value], '')
                + ISNULL(CAST([hso_paymentguarantees_creditinsurance] AS NVARCHAR(20)), '')
                + ISNULL([_hso_paymentguarantees_creditinsurance_value], '')
                + ISNULL(CAST([hso_paymentperioddays] AS NVARCHAR(20)), '')
                + ISNULL(CAST([hso_paymentrisk] AS NVARCHAR(20)), '')
                + ISNULL([_hso_paymentrisk_value], '')
                + ISNULL(CAST([hso_paymentrisk_yn] AS NVARCHAR(20)), '')
                + ISNULL([_hso_paymentrisk_yn_value], '')
                + ISNULL(CAST([hso_positivecashflow] AS NVARCHAR(20)), '')
                + ISNULL([_hso_positivecashflow_value], '')
                + ISNULL(CAST([hso_pq] AS NVARCHAR(20)), '')
                + ISNULL([_hso_pq_value], '')
                + ISNULL(CONVERT(NVARCHAR(19), [hso_pqdate], 120), '')
                + ISNULL([hso_pqremarks], '')
                + ISNULL(CAST([hso_pricevariationsfuel] AS NVARCHAR(20)), '')
                + ISNULL([_hso_pricevariationsfuel_value], '')
                + ISNULL(CAST([hso_pricevariationsmaterials] AS NVARCHAR(20)), '')
                + ISNULL([_hso_pricevariationsmaterials_value], '')
                + ISNULL(CAST([hso_pricevariationswages] AS NVARCHAR(20)), '')
                + ISNULL([_hso_pricevariationswages_value], '')
                + ISNULL(CAST([hso_processnostepfield] AS NVARCHAR(20)), '')
                + ISNULL([_hso_processnostepfield_value], '')
                + ISNULL(CAST([hso_productgroupsnl] AS NVARCHAR(20)), '')
                + ISNULL([_hso_productgroupsnl_value], '')
                + ISNULL([hso_projectdescription], '')
                + ISNULL([hso_projectfinancial], '')
                + ISNULL([_hso_projectfinancial_value], '')
                + ISNULL(CONVERT(NVARCHAR(19), [hso_projectfinancialdatalasttransferdate], 120), '')
                + ISNULL([hso_projectgeneral], '')
                + ISNULL([_hso_projectgeneral_value], '')
                + ISNULL(CAST([hso_projectphase] AS NVARCHAR(20)), '')
                + ISNULL([_hso_projectphase_value], '')
                + ISNULL(CONVERT(NVARCHAR(19), [hso_projectpreparationmeeting], 120), '')
                + ISNULL([hso_projectstatusid], '')
                + ISNULL([hso_reasonexplanation], '')
                + ISNULL([hso_reasonexplanationchosen], '')
                + ISNULL([hso_reasonofchangeaward], '')
                + ISNULL([hso_reclamationlevel], '')
                + ISNULL([hso_requiredcriticalcompetences], '')
                + ISNULL(CAST([hso_resourceavailability] AS NVARCHAR(20)), '')
                + ISNULL([_hso_resourceavailability_value], '')
                + ISNULL(CAST([hso_retentionpercentage] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_sailingdistancetodisposalarea] AS NVARCHAR(50)), '')
                + ISNULL([hso_scopeofworkvanoord], '')
                + ISNULL([hso_soildata], '')
                + ISNULL(CAST([hso_stagegate] AS NVARCHAR(20)), '')
                + ISNULL([_hso_stagegate_value], '')
                + ISNULL([hso_stagegatecopy], '')
                + ISNULL(CAST([hso_stagegatesnapshot] AS NVARCHAR(20)), '')
                + ISNULL([_hso_stagegatesnapshot_value], '')
                + ISNULL(CONVERT(NVARCHAR(19), [hso_startoftender], 120), '')
                + ISNULL(CONVERT(NVARCHAR(19), [hso_statushistoryregisterdate], 120), '')
                + ISNULL(CONVERT(NVARCHAR(19), [_hso_statushistoryregisterdate_date_value], 120), '')
                + ISNULL(CAST([_hso_statushistoryregisterdate_state_value] AS NVARCHAR(20)), '')
                + ISNULL([hso_subareaid], '')
                + ISNULL([_hso_subareaid_value], '')
                + ISNULL(CAST([hso_substatusreason] AS NVARCHAR(20)), '')
                + ISNULL([_hso_substatusreason_value], '')
                + ISNULL(CAST([hso_technicallyfeasible] AS NVARCHAR(20)), '')
                + ISNULL([_hso_technicallyfeasible_value], '')
                + ISNULL(CONVERT(NVARCHAR(19), [hso_tenderdate], 120), '')
                + ISNULL(CONVERT(NVARCHAR(19), [hso_tenderenddate], 120), '')
                + ISNULL(CONVERT(NVARCHAR(19), [hso_tendersubmissiondateactual], 120), '')
                + ISNULL([hso_tendersubmissionplace], '')
                + ISNULL(CAST([hso_tendertype] AS NVARCHAR(20)), '')
                + ISNULL([_hso_tendertype_value], '')
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
                + ISNULL([_hso_typeofcontract_value], '')
                + ISNULL(CAST([hso_typeofwork] AS NVARCHAR(20)), '')
                + ISNULL([_hso_typeofwork_value], '')
                + ISNULL(CAST([hso_typetender] AS NVARCHAR(20)), '')
                + ISNULL([_hso_typetender_value], '')
                + ISNULL(CAST([hso_userdefinedriskprofile] AS NVARCHAR(20)), '')
                + ISNULL([_hso_userdefinedriskprofile_value], '')
                + ISNULL([hso_vanoordentityid], '')
                + ISNULL([_hso_vanoordentityid_value], '')
                + ISNULL(CAST([hso_vanoordsubmittingactingas] AS NVARCHAR(20)), '')
                + ISNULL([_hso_vanoordsubmittingactingas_value], '')
                + ISNULL(CAST([hso_versionnumber] AS NVARCHAR(20)), '')
                + ISNULL([hso_vobusinessunitid], '')
                + ISNULL([_hso_vobusinessunitid_value], '')
                + ISNULL(CAST([hso_voprojectriskcategory] AS NVARCHAR(20)), '')
                + ISNULL([_hso_voprojectriskcategory_value], '')
                + ISNULL(CAST([hso_voshareineurocopy] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_vosharepercentcopy] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_wages_yn] AS NVARCHAR(20)), '')
                + ISNULL([_hso_wages_yn_value], '')
                + ISNULL([hso_waterdepthssite], '')
                + ISNULL([hso_windturbineinformation], '')
                + ISNULL([hso_winstrategy], '')
                + ISNULL([_createdby_value], '')
                + ISNULL(CONVERT(NVARCHAR(19), [createdon], 120), '')
                + ISNULL([_createdonbehalfby_value], '')
                + ISNULL(CAST([importsequencenumber] AS NVARCHAR(20)), '')
                + ISNULL([_modifiedby_value], '')
                + ISNULL(CONVERT(NVARCHAR(19), [modifiedon], 120), '')
                + ISNULL([_modifiedonbehalfby_value], '')
                + ISNULL([_ownerid_value], '')
                + ISNULL(CAST([statecode] AS NVARCHAR(20)), '')
                + ISNULL([_statecode_value], '')
                + ISNULL(CAST([statuscode] AS NVARCHAR(20)), '')
                + ISNULL([_statuscode_value], '')
                + ISNULL(CAST([timezoneruleversionnumber] AS NVARCHAR(20)), '')
                + ISNULL(CAST([versionnumber] AS NVARCHAR(20)), '')
            ) AS [Hash]
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
            [ProcessRunID] = @process_run_id,
            [dwh_active] = 0
        FROM #temp_dyn_project AS [T]
        LEFT JOIN [processed].[dyn_project] AS [P] ON [T].[AK_project] = [P].[AK_project]
        WHERE
            [T].[Hash] != [P].[Hash]
            AND [P].[dwh_active] = 1
        SELECT @updated = @@ROWCOUNT

        --  Update records that were deleted in the source
        UPDATE [processed].[dyn_project]
        SET
            [dwh_valid_to] = DATEADD(DAY, -1, @process_run_date),
            [ProcessRunID] = @process_run_id,
            [dwh_active] = 0
        FROM [processed].[dyn_project] AS [P]
        LEFT JOIN #temp_dyn_project AS [T] ON [T].[AK_project] = [P].[AK_project]
        WHERE
            [T].[AK_project] IS NULL
            AND [P].[dwh_active] = 1
        SELECT @deleted = @@ROWCOUNT

        --  Insert new records + insert records that were updated in the source
        INSERT INTO [processed].[dyn_project]
        (
            [dwh_valid_from],
            [dwh_valid_to],
            [dwh_active],
            [AK_project],
            [projectnumber],
            [name],
            [acceptableqhsestandards],
            [acceptableqhsestandards_value],
            [accountid],
            [accountid_value],
            [activetimeregistrationid],
            [activetimeregistrationid_value],
            [additionalreason],
            [additionalreason_value],
            [advancepaymentpercentage],
            [alignswithcorporatestrategyactions1],
            [alignswithcorporatestrategyactions1_value],
            [alignswithcorporatestrategyactions2],
            [alignswithcorporatestrategyactions2_value],
            [alternativetobeoffered],
            [alternativetobeoffered_value],
            [anonymizedata],
            [anonymizedata_value],
            [approvalinitiatorremarks],
            [approvalstatus],
            [approvalstatus_value],
            [approvalworkflowinprogress],
            [approvalworkflowinprogress_value],
            [areaid],
            [areaid_value],
            [availabilitycompetences],
            [awarddateexpected],
            [awardnumberid_value],
            [awardsummaryimport],
            [awardsummaryimport_value],
            [awardsummaryinstanceurl],
            [awardsummarynumber],
            [awardsummaryprojectsnapshoturl],
            [awardsummaryreportlink],
            [awardsummaryrevision],
            [awardsummaryrevision_value],
            [baseportinformation],
            [bidvaliditydays],
            [bingmapzoomlevel],
            [cable],
            [calculatedriskprofile],
            [calculatedriskprofile_value],
            [car],
            [car_value],
            [carbonfootprintestimated],
            [chanceofgoingahead],
            [chanceofgoingahead_value],
            [chanceofwinningcommercialposition],
            [chanceofwinningcommercialposition_value],
            [changedawarddate],
            [changedtenderdate],
            [changestosolution],
            [changestosolutionchosen],
            [commercialresponsibleid_value],
            [contractconditions],
            [contractconditions_value],
            [countryid],
            [countryid_value],
            [createawardsummarynumber],
            [createawardsummarynumber_value],
            [createnewprojectnumer],
            [createnewprojectnumer_value],
            [creditinsurance],
            [creditinsurance_value],
            [creditinsurance_yn],
            [creditinsurance_yn_value],
            [currencyrisk],
            [currencyrisk_value],
            [currencyrisk_yn],
            [currencyrisk_yn_value],
            [defectsliabilityperioddays],
            [definerequiredtenderteamcompetences],
            [deploymentownequipment],
            [deploymentownequipment_value],
            [designinsurance],
            [designinsurance_value],
            [designresponsibilityyn],
            [designresponsibilityyn_value],
            [dredgingcategory],
            [dredgingcategory_value],
            [durationofcontract],
            [edocs],
            [edocs_value],
            [eepriority],
            [eepriority_value],
            [emviscore],
            [emviscore_value],
            [endreportrequired],
            [endreportrequired_value],
            [expectedstartofwork],
            [exposedconditions],
            [externalinputrequirements],
            [fasttrack],
            [fasttrack_value],
            [finalcompletion],
            [finalcompletion_value],
            [finalcompletionamounteuro],
            [finalcompletionlimpercent],
            [finalcompletionperiod],
            [finalcompletionperiod_value],
            [formofcontract],
            [formofcontract_value],
            [foundation],
            [frommobdemob],
            [fuel_yn],
            [fuel_yn_value],
            [fullclientprojectname],
            [functionalapplicationbypass],
            [functionalapplicationbypass_value],
            [geophysicalinfo],
            [geotechnicalinfo],
            [intermediatecompletionamounteuro],
            [intermediatecompletionlimpercent],
            [intermediatecompletionperiod],
            [intermediatecompletionperiod_value],
            [intermediatecompletions],
            [intermediatecompletions_value],
            [investmentrequired],
            [investmentrequired_value],
            [latestapprovedawardsummary_value],
            [latitude],
            [latitudedegrees],
            [latitudedms],
            [latitudeminutes],
            [atitudenorthsouth],
            [latitudenorthsouth_value],
            [latitudeseconds],
            [lcdreview],
            [lcdreview_value],
            [letterofcredit],
            [letterofcredit_value],
            [letterofcredit_yn],
            [letterofcredit_yn_value],
            [location],
            [longitude],
            [longitudedegrees],
            [longitudedms],
            [longitudeeastwest],
            [longitudeeastwest_value],
            [longitudeminutes],
            [longitudeseconds],
            [longleaditemssecured],
            [longleaditemssecured_value],
            [mainprojectid_value],
            [maintenanceperiod],
            [maintenanceperioddays],
            [marketdrivers],
            [marketdrivers_value],
            [materials_yn],
            [materials_yn_value],
            [maxliability],
            [nonbindingindication],
            [nonbindingindication_value],
            [noneurocomponentpercent],
            [ohvs],
            [onhold],
            [onhold_value],
            [onholdreason],
            [onholdreason_value],
            [onshore],
            [overallriskprofileafter],
            [overallriskprofileafter_value],
            [overallriskprofilebefore],
            [overallriskprofilebefore_value],
            [parentcompanyguarantee],
            [parentcompanyguarantee_value],
            [paymentguarantees_creditinsurance],
            [paymentguarantees_creditinsurance_value],
            [paymentperioddays],
            [paymentrisk],
            [paymentrisk_value],
            [paymentrisk_yn],
            [paymentrisk_yn_value],
            [positivecashflow],
            [positivecashflow_value],
            [pq],
            [pq_value],
            [pqdate],
            [pqremarks],
            [pricevariationsfuel],
            [pricevariationsfuel_value],
            [pricevariationsmaterials],
            [pricevariationsmaterials_value],
            [pricevariationswages],
            [pricevariationswages_value],
            [processnostepfield],
            [processnostepfield_value],
            [productgroupsnl],
            [productgroupsnl_value],
            [projectdescription],
            [projectfinancial],
            [projectfinancial_value],
            [projectfinancialdatalasttransferdate],
            [projectgeneral],
            [projectgeneral_value],
            [projectphase],
            [projectphase_value],
            [projectpreparationmeeting],
            [projectstatusid],
            [reasonexplanation],
            [reasonexplanationchosen],
            [reasonofchangeaward],
            [reclamationlevel],
            [requiredcriticalcompetences],
            [resourceavailability],
            [resourceavailability_value],
            [retentionpercentage],
            [sailingdistancetodisposalarea],
            [scopeofworkvanoord],
            [soildata],
            [stagegate],
            [stagegate_value],
            [stagegatecopy],
            [stagegatesnapshot],
            [stagegatesnapshot_value],
            [startoftender],
            [statushistoryregisterdate],
            [statushistoryregisterdate_date_value],
            [statushistoryregisterdate_state_value],
            [subareaid],
            [subareaid_value],
            [substatusreason],
            [substatusreason_value],
            [technicallyfeasible],
            [technicallyfeasible_value],
            [tenderdate],
            [tenderenddate],
            [tendersubmissiondateactual],
            [tendersubmissionplace],
            [tendertype],
            [tendertype_value],
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
            [typeofcontract_value],
            [typeofwork],
            [typeofwork_value],
            [typetender],
            [typetender_value],
            [userdefinedriskprofile],
            [userdefinedriskprofile_value],
            [vanoordentityid],
            [vanoordentityid_value],
            [vanoordsubmittingactingas],
            [vanoordsubmittingactingas_value],
            [project_versionnumber],
            [vobusinessunitid],
            [vobusinessunitid_value],
            [voprojectriskcategory],
            [voprojectriskcategory_value],
            [voshareineurocopy],
            [vosharepercentcopy],
            [wages_yn],
            [wages_yn_value],
            [waterdepthssite],
            [windturbineinformation],
            [winstrategy],
            [createdby_value],
            [createdon],
            [createdonbehalfby_value],
            [importsequencenumber],
            [modifiedby_value],
            [modifiedon],
            [modifiedonbehalfby_value],
            [ownerid_value],
            [statecode],
            [statecode_value],
            [statuscode],
            [statuscode_value],
            [timezoneruleversionnumber],
            [versionnumber],
            [Hash],
            [ProcessRunID]
        )
        SELECT
            @process_run_date AS [dwh_valid_from],
            NULL AS [dwh_valid_to],
            1 AS [dwh_active],
            [T].[AK_project],
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
            [T].[timezoneruleversionnumber],
            [T].[versionnumber],
            [T].[Hash],
            @process_run_id AS [ProcessRunID]
        FROM #temp_dyn_project AS [T]
        LEFT JOIN [processed].[dyn_project] AS [P] ON [T].[AK_project] = [P].[AK_project]
        WHERE
            [P].[AK_project] IS NULL
            OR (
                [T].[Hash] != [P].[Hash]
                AND [P].[ProcessRunID] = @process_run_id
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
