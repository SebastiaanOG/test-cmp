CREATE TABLE processed.dyn_project (
   [id]  bigint IDENTITY  NOT NULL
,  [dwh_valid_from]  date   NOT NULL
,  [dwh_valid_to]  date   NULL
,  [dwh_active]  bit   NOT NULL
,  [dwh_proces_run_id]  uniqueidentifier   NULL
,  [dwh_hash]  varbinary(8000)   NULL
,  [ak_project]  nvarchar(36)   NULL
,  [projectnumber]  nvarchar(100)   NULL
,  [name]  nvarchar(200)   NULL
,  [acceptableqhsestandards]  int   NULL
,  [acceptableqhsestandards_value]  nvarchar(4000)   NULL
,  [accountid]  nvarchar(36)   NULL
,  [accountid_value]  nvarchar(160)   NULL
,  [activetimeregistrationid]  nvarchar(36)   NULL
,  [activetimeregistrationid_value]  nvarchar(100)   NULL
,  [additionalreason]  int   NULL
,  [additionalreason_value]  nvarchar(4000)   NULL
,  [advancepaymentpercentage]  decimal(18,2)   NULL
,  [alignswithcorporatestrategyactions1]  int   NULL
,  [alignswithcorporatestrategyactions1_value]  nvarchar(4000)   NULL
,  [alignswithcorporatestrategyactions2]  int   NULL
,  [alignswithcorporatestrategyactions2_value]  nvarchar(4000)   NULL
,  [alternativetobeoffered]  int   NULL
,  [alternativetobeoffered_value]  nvarchar(4000)   NULL
,  [anonymizedata]  int   NULL
,  [anonymizedata_value]  nvarchar(4000)   NULL
,  [approvalinitiatorremarks]  nvarchar(4000)   NULL
,  [approvalstatus]  int   NULL
,  [approvalstatus_value]  nvarchar(4000)   NULL
,  [approvalworkflowinprogress]  int   NULL
,  [approvalworkflowinprogress_value]  nvarchar(4000)   NULL
,  [areaid]  nvarchar(36)   NULL
,  [areaid_value]  nvarchar(100)   NULL
,  [availabilitycompetences]  nvarchar(4000)   NULL
,  [awarddateexpected]  date   NULL
,  [awardnumberid_value]  nvarchar(100)   NULL
,  [awardsummaryimport]  int   NULL
,  [awardsummaryimport_value]  nvarchar(4000)   NULL
,  [awardsummaryinstanceurl]  nvarchar(100)   NULL
,  [awardsummarynumber]  nvarchar(100)   NULL
,  [awardsummaryprojectsnapshoturl]  nvarchar(100)   NULL
,  [awardsummaryreportlink]  nvarchar(500)   NULL
,  [awardsummaryrevision]  int   NULL
,  [awardsummaryrevision_value]  nvarchar(4000)   NULL
,  [baseportinformation]  nvarchar(100)   NULL
,  [bidvaliditydays]  int   NULL
,  [bingmapzoomlevel]  int   NULL
,  [cable]  nvarchar(100)   NULL
,  [calculatedriskprofile]  int   NULL
,  [calculatedriskprofile_value]  nvarchar(4000)   NULL
,  [car]  int   NULL
,  [car_value]  nvarchar(4000)   NULL
,  [carbonfootprintestimated]  decimal(18,2)   NULL
,  [chanceofgoingahead]  int   NULL
,  [chanceofgoingahead_value]  nvarchar(4000)   NULL
,  [chanceofwinningcommercialposition]  int   NULL
,  [chanceofwinningcommercialposition_value]  nvarchar(4000)   NULL
,  [changedawarddate]  date   NULL
,  [changedtenderdate]  date   NULL
,  [changestosolution]  nvarchar(4000)   NULL
,  [changestosolutionchosen]  nvarchar(4000)   NULL
,  [commercialresponsibleid_value]  nvarchar(200)   NULL
,  [contractconditions]  int   NULL
,  [contractconditions_value]  nvarchar(4000)   NULL
,  [countryid]  nvarchar(36)   NULL
,  [countryid_value]  nvarchar(100)   NULL
,  [createawardsummarynumber]  int   NULL
,  [createawardsummarynumber_value]  nvarchar(4000)   NULL
,  [createnewprojectnumer]  int   NULL
,  [createnewprojectnumer_value]  nvarchar(4000)   NULL
,  [creditinsurance]  int   NULL
,  [creditinsurance_value]  nvarchar(4000)   NULL
,  [creditinsurance_yn]  int   NULL
,  [creditinsurance_yn_value]  nvarchar(4000)   NULL
,  [currencyrisk]  int   NULL
,  [currencyrisk_value]  nvarchar(4000)   NULL
,  [currencyrisk_yn]  int   NULL
,  [currencyrisk_yn_value]  nvarchar(4000)   NULL
,  [defectsliabilityperioddays]  decimal(18,0)   NULL
,  [definerequiredtenderteamcompetences]  nvarchar(4000)   NULL
,  [deploymentownequipment]  int   NULL
,  [deploymentownequipment_value]  nvarchar(4000)   NULL
,  [designinsurance]  int   NULL
,  [designinsurance_value]  nvarchar(4000)   NULL
,  [designresponsibilityyn]  int   NULL
,  [designresponsibilityyn_value]  nvarchar(4000)   NULL
,  [dredgingcategory]  int   NULL
,  [dredgingcategory_value]  nvarchar(4000)   NULL
,  [durationofcontract]  decimal(18,1)   NULL
,  [edocs]  int   NULL
,  [edocs_value]  nvarchar(4000)   NULL
,  [eepriority]  int   NULL
,  [eepriority_value]  nvarchar(4000)   NULL
,  [emviscore]  int   NULL
,  [emviscore_value]  nvarchar(4000)   NULL
,  [endreportrequired]  int   NULL
,  [endreportrequired_value]  nvarchar(4000)   NULL
,  [expectedstartofwork]  date   NULL
,  [exposedconditions]  nvarchar(100)   NULL
,  [externalinputrequirements]  nvarchar(4000)   NULL
,  [fasttrack]  int   NULL
,  [fasttrack_value]  nvarchar(4000)   NULL
,  [finalcompletion]  int   NULL
,  [finalcompletion_value]  nvarchar(4000)   NULL
,  [finalcompletionamounteuro]  nvarchar(100)   NULL
,  [finalcompletionlimpercent]  nvarchar(100)   NULL
,  [finalcompletionperiod]  int   NULL
,  [finalcompletionperiod_value]  nvarchar(4000)   NULL
,  [formofcontract]  int   NULL
,  [formofcontract_value]  nvarchar(4000)   NULL
,  [foundation]  nvarchar(100)   NULL
,  [frommobdemob]  nvarchar(500)   NULL
,  [fuel_yn]  int   NULL
,  [fuel_yn_value]  nvarchar(4000)   NULL
,  [fullclientprojectname]  nvarchar(200)   NULL
,  [functionalapplicationbypass]  int   NULL
,  [functionalapplicationbypass_value]  nvarchar(4000)   NULL
,  [geophysicalinfo]  nvarchar(100)   NULL
,  [geotechnicalinfo]  nvarchar(100)   NULL
,  [intermediatecompletionamounteuro]  nvarchar(100)   NULL
,  [intermediatecompletionlimpercent]  nvarchar(100)   NULL
,  [intermediatecompletionperiod]  int   NULL
,  [intermediatecompletionperiod_value]  nvarchar(4000)   NULL
,  [intermediatecompletions]  int   NULL
,  [intermediatecompletions_value]  nvarchar(4000)   NULL
,  [investmentrequired]  int   NULL
,  [investmentrequired_value]  nvarchar(4000)   NULL
,  [latestapprovedawardsummary_value]  nvarchar(200)   NULL
,  [latitude]  float   NULL
,  [latitudedegrees]  decimal(18,0)   NULL
,  [latitudedms]  nvarchar(20)   NULL
,  [latitudeminutes]  decimal(18,0)   NULL
,  [atitudenorthsouth]  int   NULL
,  [latitudenorthsouth_value]  nvarchar(4000)   NULL
,  [latitudeseconds]  decimal(18,0)   NULL
,  [lcdreview]  int   NULL
,  [lcdreview_value]  nvarchar(4000)   NULL
,  [letterofcredit]  int   NULL
,  [letterofcredit_value]  nvarchar(4000)   NULL
,  [letterofcredit_yn]  int   NULL
,  [letterofcredit_yn_value]  nvarchar(4000)   NULL
,  [location]  nvarchar(100)   NULL
,  [longitude]  float   NULL
,  [longitudedegrees]  decimal(18,0)   NULL
,  [longitudedms]  nvarchar(20)   NULL
,  [longitudeeastwest]  int   NULL
,  [longitudeeastwest_value]  nvarchar(4000)   NULL
,  [longitudeminutes]  decimal(18,0)   NULL
,  [longitudeseconds]  decimal(18,0)   NULL
,  [longleaditemssecured]  int   NULL
,  [longleaditemssecured_value]  nvarchar(4000)   NULL
,  [mainprojectid_value]  nvarchar(200)   NULL
,  [maintenanceperiod]  decimal(18,1)   NULL
,  [maintenanceperioddays]  decimal(18,0)   NULL
,  [marketdrivers]  int   NULL
,  [marketdrivers_value]  nvarchar(4000)   NULL
,  [materials_yn]  int   NULL
,  [materials_yn_value]  nvarchar(4000)   NULL
,  [maxliability]  nvarchar(250)   NULL
,  [nonbindingindication]  int   NULL
,  [nonbindingindication_value]  nvarchar(4000)   NULL
,  [noneurocomponentpercent]  decimal(18,2)   NULL
,  [ohvs]  nvarchar(100)   NULL
,  [onhold]  int   NULL
,  [onhold_value]  nvarchar(4000)   NULL
,  [onholdreason]  int   NULL
,  [onholdreason_value]  nvarchar(4000)   NULL
,  [onshore]  nvarchar(100)   NULL
,  [overallriskprofileafter]  int   NULL
,  [overallriskprofileafter_value]  nvarchar(4000)   NULL
,  [overallriskprofilebefore]  int   NULL
,  [overallriskprofilebefore_value]  nvarchar(4000)   NULL
,  [parentcompanyguarantee]  int   NULL
,  [parentcompanyguarantee_value]  nvarchar(4000)   NULL
,  [paymentguarantees_creditinsurance]  int   NULL
,  [paymentguarantees_creditinsurance_value]  nvarchar(4000)   NULL
,  [paymentperioddays]  int   NULL
,  [paymentrisk]  int   NULL
,  [paymentrisk_value]  nvarchar(4000)   NULL
,  [paymentrisk_yn]  int   NULL
,  [paymentrisk_yn_value]  nvarchar(4000)   NULL
,  [positivecashflow]  int   NULL
,  [positivecashflow_value]  nvarchar(4000)   NULL
,  [pq]  int   NULL
,  [pq_value]  nvarchar(4000)   NULL
,  [pqdate]  date   NULL
,  [pqremarks]  nvarchar(4000)   NULL
,  [pricevariationsfuel]  int   NULL
,  [pricevariationsfuel_value]  nvarchar(4000)   NULL
,  [pricevariationsmaterials]  int   NULL
,  [pricevariationsmaterials_value]  nvarchar(4000)   NULL
,  [pricevariationswages]  int   NULL
,  [pricevariationswages_value]  nvarchar(4000)   NULL
,  [processnostepfield]  int   NULL
,  [processnostepfield_value]  nvarchar(4000)   NULL
,  [productgroupsnl]  int   NULL
,  [productgroupsnl_value]  nvarchar(4000)   NULL
,  [projectdescription]  nvarchar(4000)   NULL
,  [projectfinancial]  nvarchar(36)   NULL
,  [projectfinancial_value]  nvarchar(100)   NULL
,  [projectfinancialdatalasttransferdate]  datetime   NULL
,  [projectgeneral]  nvarchar(36)   NULL
,  [projectgeneral_value]  nvarchar(200)   NULL
,  [projectphase]  int   NULL
,  [projectphase_value]  nvarchar(4000)   NULL
,  [projectpreparationmeeting]  date   NULL
,  [projectstatusid]  nvarchar(100)   NULL
,  [reasonexplanation]  nvarchar(4000)   NULL
,  [reasonexplanationchosen]  nvarchar(4000)   NULL
,  [reasonofchangeaward]  nvarchar(4000)   NULL
,  [reclamationlevel]  nvarchar(100)   NULL
,  [requiredcriticalcompetences]  nvarchar(4000)   NULL
,  [resourceavailability]  int   NULL
,  [resourceavailability_value]  nvarchar(4000)   NULL
,  [retentionpercentage]  decimal(18,2)   NULL
,  [sailingdistancetodisposalarea]  decimal(18,1)   NULL
,  [scopeofworkvanoord]  nvarchar(4000)   NULL
,  [soildata]  nvarchar(100)   NULL
,  [stagegate]  int   NULL
,  [stagegate_value]  nvarchar(4000)   NULL
,  [stagegatecopy]  nvarchar(100)   NULL
,  [stagegatesnapshot]  int   NULL
,  [stagegatesnapshot_value]  nvarchar(4000)   NULL
,  [startoftender]  date   NULL
,  [statushistoryregisterdate]  date   NULL
,  [statushistoryregisterdate_date_value]  date   NULL
,  [statushistoryregisterdate_state_value]  int   NULL
,  [subareaid]  nvarchar(36)   NULL
,  [subareaid_value]  nvarchar(100)   NULL
,  [substatusreason]  int   NULL
,  [substatusreason_value]  nvarchar(4000)   NULL
,  [technicallyfeasible]  int   NULL
,  [technicallyfeasible_value]  nvarchar(4000)   NULL
,  [tenderdate]  date   NULL
,  [tenderenddate]  date   NULL
,  [tendersubmissiondateactual]  datetime   NULL
,  [tendersubmissionplace]  nvarchar(100)   NULL
,  [tendertype]  int   NULL
,  [tendertype_value]  nvarchar(4000)   NULL
,  [tendervalidity]  int   NULL
,  [tmp_approvalinitiator_value]  nvarchar(200)   NULL
,  [tmp_projectguid]  nvarchar(100)   NULL
,  [tmpproject_value]  nvarchar(200)   NULL
,  [tomobdemob]  nvarchar(500)   NULL
,  [totalcontractvalueeurocopy]  decimal(18,0)   NULL
,  [totalftedays]  decimal(18,2)   NULL
,  [totalftedays_date_value]  datetime   NULL
,  [totalftedays_state_value]  int   NULL
,  [typeofcontract]  int   NULL
,  [typeofcontract_value]  nvarchar(4000)   NULL
,  [typeofwork]  int   NULL
,  [typeofwork_value]  nvarchar(4000)   NULL
,  [typetender]  int   NULL
,  [typetender_value]  nvarchar(4000)   NULL
,  [userdefinedriskprofile]  int   NULL
,  [userdefinedriskprofile_value]  nvarchar(4000)   NULL
,  [vanoordentityid]  nvarchar(36)   NULL
,  [vanoordentityid_value]  nvarchar(100)   NULL
,  [vanoordsubmittingactingas]  int   NULL
,  [vanoordsubmittingactingas_value]  nvarchar(4000)   NULL
,  [project_versionnumber]  int   NULL
,  [vobusinessunitid]  nvarchar(36)   NULL
,  [vobusinessunitid_value]  nvarchar(100)   NULL
,  [voprojectriskcategory]  int   NULL
,  [voprojectriskcategory_value]  nvarchar(4000)   NULL
,  [voshareineurocopy]  decimal(18,0)   NULL
,  [vosharepercentcopy]  decimal(18,2)   NULL
,  [wages_yn]  int   NULL
,  [wages_yn_value]  nvarchar(4000)   NULL
,  [waterdepthssite]  nvarchar(100)   NULL
,  [windturbineinformation]  nvarchar(100)   NULL
,  [winstrategy]  nvarchar(4000)   NULL
,  [createdby_value]  nvarchar(200)   NULL
,  [createdon]  datetime   NULL
,  [createdonbehalfby_value]  nvarchar(200)   NULL
,  [importsequencenumber]  int   NULL
,  [modifiedby_value]  nvarchar(200)   NULL
,  [modifiedon]  datetime   NULL
,  [modifiedonbehalfby_value]  nvarchar(200)   NULL
,  [ownerid_value]  nvarchar(200)   NULL
,  [statecode]  int   NULL
,  [statecode_value]  nvarchar(4000)   NULL
,  [statuscode]  int   NULL
,  [statuscode_value]  nvarchar(4000)   NULL
,  [timezoneruleversionnumber]  int   NULL
,  [versionnumber]  bigint   NULL
, CONSTRAINT [PK_processed.dyn_project] PRIMARY KEY CLUSTERED ([id] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100, DATA_COMPRESSION = PAGE) ON [DATA])
 ON [DATA]
GO

GO

exec sys.sp_addextendedproperty @name=N'Table Name', @value=N'dyn_project', @level0type=N'SCHEMA', @level0name=processed, @level1type=N'TABLE', @level1name=dyn_project
GO
exec sys.sp_addextendedproperty @name=N'Table Type', @value=N'Fact', @level0type=N'SCHEMA', @level0name=processed, @level1type=N'TABLE', @level1name=dyn_project
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'project', @level0type=N'SCHEMA', @level0name=processed, @level1type=N'TABLE', @level1name=dyn_project
GO
exec sys.sp_addextendedproperty @name=N'Database Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=processed, @level1type=N'TABLE', @level1name=dyn_project
GO
exec sys.sp_addextendedproperty @name=N'Generate Script?', @value=N'N', @level0type=N'SCHEMA', @level0name=processed, @level1type=N'TABLE', @level1name=dyn_project
GO
GO

exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'Primary key', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'id'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'valid_from', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'Valid_to', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'indicator active', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dwh_proces_run_id', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'dwh_proces_run_id'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dwh_hash', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'dwh_hash'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'Application ID', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'ak_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Primary key', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'id'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'proces run id of the synapse pipeline', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'dwh_proces_run_id'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'hash of the columns that will be compared with the staged layer', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'dwh_hash'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Application id, unique identifier source', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'ak_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'As applicable, select "yes" or "no" (do we execute the project in accordance with - for Van Oord - acceptable QHSE standards)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'acceptableqhsestandards'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Name of the ultimate Client, not main contractor', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'accountid'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Unique identifier for Time registration associated with Project.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'activetimeregistrationid'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Specify a Corporate strategy option from drop down menu', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'alignswithcorporatestrategyactions1'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Specify a Corporate strategy option from drop down menu', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'alignswithcorporatestrategyactions2'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'State if VO will submitted an alternative proposal', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'alternativetobeoffered'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Field used for the purpose of matching the Status Reason of the related Approval Request to the Project Snapshot as well.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'approvalstatus'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Division of the various Dredging area''s', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'State if the required Competences are expected to be available', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'availabilitycompetences'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'(Expected) contract award date from Client / Main contractor', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awarddateexpected'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Field to be able to query on the imported Award Summaries from 2015, 2016 and 2017.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummaryimport'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Unique Award Summary Number', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummarynumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Describe if the upcoming Award Summary concerns a revision of an existing Award Summary.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummaryrevision'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Provide more elaborate information on the port that will be used as "Base" for the project', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'baseportinformation'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Period of validity of tender, specify in days', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'bidvaliditydays'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Provide more information on the technical specifications of the cables', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'cable'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Automated calculation of risk profile; generated automatically after completing the initial "risk matrix" during "quick scan".', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'calculatedriskprofile'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'State who is responsible for the CAR Insurance', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'car'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'State the estimated Carbon footprint value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'carbonfootprintestimated'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Expected chance that the tender will come out in the year of the tender date: Low, Medium, High, Very High (25%,50%,75%,100%)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'chanceofgoingahead'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Indicate the chance of winnning this tender', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'chanceofwinningcommercialposition'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'The Changed Award Date field can only be adjusted by Functional Application Managers. Purpose of this field is to capture the original Award Date and the Changed Award Date.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'changedawarddate'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'The Changed Tender Submission field can only be adjusted by Functional Application Managers. Purpose of this field is to capture the original Tender Submission and the Changed Tender Submission.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'changedtenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Detail in brief the main changes - if any - to the Base Solution that the Employer has indicated', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'changestosolution'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Detail in brief the main changes - if any - to the Base Solution that the Employer has indicated', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'changestosolutionchosen'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Specify which type of contract conditions is used', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'contractconditions'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Country where the project will be executed', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'countryid'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Trigger autonumbering plugin to create unique Award Summary Number.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'createawardsummarynumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Yes: Credit insurance required (e.g. NBI/cover commitment required). No: Standard dispensation applicable or alternatively request non insurance been approved by ExCom. When in doubt, contact Treasury', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'creditinsurance_yn'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Duration of the period after "taking over" that the contractor is Liable for occuring Defects', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'defectsliabilityperioddays'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'List tentative requirement key personnel for tender', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'definerequiredtenderteamcompetences'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'As applicable, select "yes" or "no" (will - at least in part - Van Oord''s own equipment be deployed to execute this project)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'deploymentownequipment'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'State if a design insurance is required', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'designinsurance'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'State if VO has design responsibility Yes or No', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'designresponsibilityyn'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Select one of the Business Unit Dredging categories: Preserve, Expand or Integrate', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'dredgingcategory'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Duration of contract covering execution', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'durationofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'List the availability to eDocs', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'edocs'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Very High: MUST-WIN; High: Important (e.g. large main equipment involved); Medium: e.g. with many competitors; Low: lower chance of success', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'eepriority'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'State if an emvi score is required', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'emviscore'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'State if an endreport is required', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'endreportrequired'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'(Expected) start of work for VO''s scope of work (preparation, execution)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'expectedstartofwork'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'List if site is exposed', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'exposedconditions'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'State if External recourses are required and if so, what the requirements are for these resources (e.g. Design companies, Soil investigations, Agents, 3rd party engineers, planners, etc.)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'externalinputrequirements'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Please indicate if there are any penalties / liq. damages regarding the final completion', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'finalcompletion'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'The period that is used to calculate the recurrence of the LD', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'finalcompletionperiod'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Specify the form of Contract: such as Design and Construct, EPIC or Construct only, etc', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'formofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Provide more information on the technical specifications of the foundations', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'foundation'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'State the name of the location from where the equipment is mobilised at the start of the project', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'frommobdemob'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Name of the project which is used by Client / Company', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'fullclientprojectname'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'State if geophysical survey information is available and/ or received from Client', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'geophysicalinfo'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'State if geotechnical survey information is available and/ or received from Client', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'geotechnicalinfo'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Amount of penalties (LD''s) when Intermediate Completion date is not met, expressed in euro''s', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'intermediatecompletionamounteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'The maximum percentage of the total Contract Sum that is used to cap the total LD''s', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'intermediatecompletionlimpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'The period that is used to calculate the recurrence of the LD', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'intermediatecompletionperiod'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Indicate if there are any penalties / liq. damages regarding the intermediate completions', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'intermediatecompletions'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Latitude degrees', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'latitudedegrees'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Latitude in degrees, minutes, seconds.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'latitudedms'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Latitude in seconds', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'latitudeseconds'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'As applicable, select "yes" or "no" (has an LCD / COAD review taken place of the conditions of contract during tender preparation)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'lcdreview'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Location where the project will be executed, can be: city, river, sea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'location'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'List the longitude, or show location on map (longitude then automatic)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longitudedegrees'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Longitude in degrees, minutes, seconds.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longitudedms'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Longitude in minutes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longitudeminutes'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Longitude in seconds', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longitudeseconds'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'As applicable, select "yes" or "no" (have long lead items been secured as part of  negotiations with suppliers / vendors during tender preparation)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longleaditemssecured'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Enter the maintenance period (in weeks)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'maintenanceperiod'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Period after taking over that the Contractor has to Maintain the permanent works (0 if not applicable)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'maintenanceperioddays'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Indication of market drivers (Maritime Transport, Urbanisation, Energy, Tourism, Oil & Gas, Renewable Energy or Environmental) concerning the origin of this project', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'marketdrivers'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Maximum amount in euro''s that Contractor can be held Liable for', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'maxliability'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'NBI for credit insurance by insurance broker AON / Atradius DSB. An NBI is no firm commitment from an insurance company but an indication only. When in doubt, contact Treasury', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'nonbindingindication'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Provide more information on the technical specifications of the Offshore High Voltage Station', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'ohvs'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'On hold yes or no', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'onhold'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Provide more information on the technical specifications of the onshore works associated with this project', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'onshore'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Indicate whether or not a Parent Company Gaurantee is required', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'parentcompanyguarantee'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'As applicable, select "yes" or "no" (are payment arrangements such that the Employer provides an adequate payment guarantee, or alternatively, can adequate credit insurance be obtained)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'paymentguarantees_creditinsurance'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'As applicable, select "yes" or "no" (note that in this context "cash flow" is defined as D&I (depreciation and interest) plus profit)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'positivecashflow'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Indicate if a Pre Qualifiation process is applicable', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pq'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Specify date for PQ submission', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pq_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Provide remarks if applicable', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pqremarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'This field facilitates business process flow stages without any steps.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'processnostepfield'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Provide a brief description of the project to be executed.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectdescription'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'List of Workflow Acquisition / Tendering or Realisation', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectphase'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Specify date for Project Preparation Meeting', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectpreparationmeeting'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'This field is used to migrate Provo-data. This field contains a unique Provo-ID per stage that will be used as a reference for child records.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectstatusid'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Provide in brief the main characteristics of the alternative solution chosen - if offered - and provide reason why this solution was chosen for the "Alternative Offer"', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'reasonexplanation'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Provide in brief the main characteristics of the solution chosen and provide reason why this solution was chosen for the "Base Offer"', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'reasonexplanationchosen'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Indicate the height to be achieved', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'reclamationlevel'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'State the required Competences of the team members', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'requiredcriticalcompetences'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'As applicable, select "yes" or "no" (can we make the resources available to successfully - financial, technical etc. - execute this project)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'resourceavailability'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Indicate the sailing distance to disposal area or distance to port for loading windmill units or rock', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'sailingdistancetodisposalarea'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'List a more detailed scope of work description, like activity and proposed type of equipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'scopeofworkvanoord'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'State if soil information, boreholes, cpt is available and or received from Client', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'soildata'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Used to store stage gate for workflow', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'stagegatecopy'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Date of (expected) receival of ITT', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'startoftender'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Last Updated time of rollup field Status History: Register Date.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'statushistoryregisterdate_date_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'State of rollup field Status History: Register Date.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'statushistoryregisterdate_state_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Division within the separate area''s and productgroups inside Offshore', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'subareaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'List of various Subphase status', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'substatusreason'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'As applicable, select "yes" or "no" (can the works be executed in a technically sound manner)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'technicallyfeasible'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Date of tender submission', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Date when the tendervalidity expires', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tenderenddate'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'List the actual tender submission date', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tendersubmissiondateactual'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'State the place where the tender need to be submitted', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tendersubmissionplace'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Select the type of tender such as Private, Public, Restricted etc', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tendertype'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'State the validity of the tender', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tendervalidity'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Field for migration purposes.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tmp_projectguid'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'State the name of the location to where the equipment is demobilised upon completion of the project', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tomobdemob'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Awarded Total Contract Value (EUR)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'totalcontractvalueeurocopy'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Sum of total FTE days', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'totalftedays'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Last Updated time of rollup field Total FTE Days.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'totalftedays_date_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'State of rollup field Total FTE Days.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'totalftedays_state_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Specify the type of contract with respect to cost: Lumpsum, unit rate, bidget', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'typeofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Select type of Tender: Prospect (early indication), Budget or Tender', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'typetender'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Risk profile "over-ride" by user; based on his / her re-assessment - if any - of risk class(es) for risk categories', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'userdefinedriskprofile'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Specify the Legal entity which will be used for this tender by VO', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vanoordentityid'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'State the role of Van Oord: Maincontractor or Subcontractor', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vanoordsubmittingactingas'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Version of the project', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'project_versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Entity for separate VO''s business: Offshore, Offshore Wind Parks, Wicks, Paans', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vobusinessunitid'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Awarded VO Share (EUR)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'voshareineurocopy'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Awarded VO Share %', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vosharepercentcopy'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'State if bathymetry information is available and or received from Client', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'waterdepthssite'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Provide more information on the technical specifications of the Wind Turbine(s)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'windturbineinformation'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Determine a win strategy', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'winstrategy'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'createdonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'importsequencenumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'modifiedonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'timezoneruleversionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'id'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2023-04-20', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2023-04-25', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FFF57AF8-D10A-EA11-A811-000D3A2C5614', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'dwh_proces_run_id'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0xBF35F538E0E96618230E2FEA1CC000EA', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'dwh_hash'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FFFD461A-DD78-E511-8122-C4346BAC7E10', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'ak_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'W0497', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zwolse Hoek Urk', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'-1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'acceptableqhsestandards'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Yes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'acceptableqhsestandards_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FFF57AF8-D10A-EA11-A811-000D3A2C5614', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'accountid'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zuidwestelijke Delta', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'accountid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FFF97F7B-526A-ED11-9561-6045BD8958C6', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'activetimeregistrationid'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zwolse Hoek Urk', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'activetimeregistrationid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000008', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'additionalreason'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Type of Work', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'additionalreason_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9.00', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'advancepaymentpercentage'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000016', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'alignswithcorporatestrategyactions1'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Work safe "nobody gets hurt"', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'alignswithcorporatestrategyactions1_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000016', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'alignswithcorporatestrategyactions2'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Work safe "nobody gets hurt"', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'alignswithcorporatestrategyactions2_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000001', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'alternativetobeoffered'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Yes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'alternativetobeoffered_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'anonymizedata'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'No', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'anonymizedata_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zvezda shipyard, Russia Far East. CS', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'approvalinitiatorremarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000002', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'approvalstatus'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Snapshot only', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'approvalstatus_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'-1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'approvalworkflowinprogress'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Yes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'approvalworkflowinprogress_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FE498CA7-90F8-E411-8109-C4346BACCE18', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'WICKS', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'areaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zowel intern als extern voldoende be', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'availabilitycompetences'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'01-07-2050', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awarddateexpected'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Default', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardnumberid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'-1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummaryimport'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Yes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummaryimport_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'https://vanoord01', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummaryinstanceurl'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2023 - 8', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummarynumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'ffd93bda-2cd3-ea11-a815-000d3a2c5f3f', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummaryprojectsnapshoturl'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'https://vanoord01.crm4.dynamics.com/', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummaryreportlink'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'-1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummaryrevision'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Yes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummaryrevision_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'x', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'baseportinformation'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'95', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'bidvaliditydays'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'bingmapzoomlevel'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'yes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'cable'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'4', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'calculatedriskprofile'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Very High', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'calculatedriskprofile_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000001', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'car'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Van Oord', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'car_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'892.64', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'carbonfootprintestimated'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'4', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'chanceofgoingahead'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Very High', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'chanceofgoingahead_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'4', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'chanceofwinningcommercialposition'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Very High', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'chanceofwinningcommercialposition_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'29-11-2022', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'changedawarddate'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'04-12-2020', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'changedtenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'See description at explanation. ', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'changestosolution'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zie presentatie Onderdeel Memos & Pr', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'changestosolutionchosen'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'commercialresponsibleid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000012', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'contractconditions'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'UAV GCI', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'contractconditions_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FEC2BBF8-90F8-E411-810E-C4346BACCC0C', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'countryid'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zimbabwe', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'countryid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'createawardsummarynumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'No', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'createawardsummarynumber_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'-1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'createnewprojectnumer'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Yes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'createnewprojectnumer_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'creditinsurance'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'No', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'creditinsurance_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'creditinsurance_yn'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Yes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'creditinsurance_yn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'currencyrisk'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'No', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'currencyrisk_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'currencyrisk_yn'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Yes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'currencyrisk_yn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9999', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'defectsliabilityperioddays'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zie tenderteam', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'definerequiredtenderteamcompetences'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'-1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'deploymentownequipment'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Yes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'deploymentownequipment_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'designinsurance'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Yes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'designinsurance_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'designresponsibilityyn'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Yes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'designresponsibilityyn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000002', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'dredgingcategory'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Preserve', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'dredgingcategory_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'99999.0', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'durationofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'-1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'edocs'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Yes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'edocs_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'4', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'eepriority'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Very High', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'eepriority_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'emviscore'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Yes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'emviscore_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'endreportrequired'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Yes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'endreportrequired_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'01-07-2050', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'expectedstartofwork'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'yest', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'exposedconditions'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zo veel mogelijk binnen het team wer', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'externalinputrequirements'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'-1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'fasttrack'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Yes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'fasttrack_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'finalcompletion'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Yes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'finalcompletion_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'various', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'finalcompletionamounteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Unlimited (under WEM framework terms', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'finalcompletionlimpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000002', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'finalcompletionperiod'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'per week', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'finalcompletionperiod_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000024', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'formofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'VO conditions', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'formofcontract_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'yes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'foundation'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zuilinchem', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'frommobdemob'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'fuel_yn'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Yes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'fuel_yn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'인천항 제1항로 남측 및 북항 유지준설 공사', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'fullclientprojectname'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'-1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'functionalapplicationbypass'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Yes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'functionalapplicationbypass_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'yes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'geophysicalinfo'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'yes but not complete', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'geotechnicalinfo'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Various for different sections', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'intermediatecompletionamounteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'tbd', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'intermediatecompletionlimpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000002', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'intermediatecompletionperiod'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'per week', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'intermediatecompletionperiod_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'intermediatecompletions'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Yes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'intermediatecompletions_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'investmentrequired'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Yes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'investmentrequired_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'ZSP 125 Optiecharters Sleephopperzui', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'latestapprovedawardsummary_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'998222', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'latitude'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'latitudedegrees'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'N 6103183', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'latitudedms'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'latitudeminutes'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000001', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'atitudenorthsouth'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'South', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'latitudenorthsouth_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'latitudeseconds'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'-1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'lcdreview'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Yes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'lcdreview_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'letterofcredit'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'No', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'letterofcredit_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'letterofcredit_yn'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Yes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'letterofcredit_yn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zws Vlaanderen en Walcheren', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'location'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'998572', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longitude'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'99', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longitudedegrees'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'E 387658', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longitudedms'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000001', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longitudeeastwest'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'West', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longitudeeastwest_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longitudeminutes'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longitudeseconds'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000002', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longleaditemssecured'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Yes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longleaditemssecured_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zwakke Schakels Noord Holland', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'mainprojectid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9.0', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'maintenanceperiod'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9999', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'maintenanceperioddays'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000006', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'marketdrivers'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Urbanisation', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'marketdrivers_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'materials_yn'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Yes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'materials_yn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'unlimited during construction, 10% a', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'maxliability'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000003', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'nonbindingindication'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Will be requested (only for Tender t', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'nonbindingindication_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'99.00', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'noneurocomponentpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'yes, not part of this scope', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'ohvs'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'-1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'onhold'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Yes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'onhold_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'onholdreason'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Unsuccessful (No Tender)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'onholdreason_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'yes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'onshore'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000002', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'overallriskprofileafter'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Medium', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'overallriskprofileafter_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000002', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'overallriskprofilebefore'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Medium', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'overallriskprofilebefore_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'parentcompanyguarantee'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Yes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'parentcompanyguarantee_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'-1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'paymentguarantees_creditinsurance'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Yes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'paymentguarantees_creditinsurance_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'99', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'paymentperioddays'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'paymentrisk'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'No', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'paymentrisk_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'paymentrisk_yn'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Yes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'paymentrisk_yn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'-1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'positivecashflow'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Yes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'positivecashflow_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'-1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pq'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Yes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pq_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'01-11-2027', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pqdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'you have to select one of the 3 lots', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pqremarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pricevariationsfuel'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'No', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pricevariationsfuel_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pricevariationsmaterials'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'No', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pricevariationsmaterials_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pricevariationswages'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'No', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pricevariationswages_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'processnostepfield'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'No', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'processnostepfield_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000003', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'productgroupsnl'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Infra Marine', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'productgroupsnl_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N' Orsted require a frame work agreem', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectdescription'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FFFFA111-AECA-ED11-B597-6045BD895616', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectfinancial'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zwolse Hoek Urk', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectfinancial_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Mar 25 2023 12:59AM', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectfinancialdatalasttransferdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FFC7B168-87CA-ED11-B597-6045BD8958C6', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectgeneral'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zwolse Hoek Urk', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectgeneral_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000002', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectphase'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Tendering', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectphase_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'21-12-2022', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectpreparationmeeting'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9998', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectstatusid'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Replace expensive rock with sand.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'reasonexplanation'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N' Smart and effective tender prepara', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'reasonexplanationchosen'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Visible on report', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'reasonofchangeaward'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'wp 1 en 2 +3,00m NAP en wp 3 +4,00m ', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'reclamationlevel'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zie organogram, stafplanning en staf', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'requiredcriticalcompetences'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'-1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'resourceavailability'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Yes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'resourceavailability_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9.00', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'retentionpercentage'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'99999999.0', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'sailingdistancetodisposalarea'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N' Verhogen van de Havendijk A en Hav', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'scopeofworkvanoord'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'yes, partly', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'soildata'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'6', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'stagegate'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Award', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'stagegate_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Award', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'stagegatecopy'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'6', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'stagegatesnapshot'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Award', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'stagegatesnapshot_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'28-02-2099', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'startoftender'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'20-04-2023', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'statushistoryregisterdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'01-05-2023', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'statushistoryregisterdate_date_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'statushistoryregisterdate_state_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'D6820AA8-91F8-E411-8109-C4346BACCE18', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'subareaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'WICKS', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'subareaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000020', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'substatusreason'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Test & Commission', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'substatusreason_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'-1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'technicallyfeasible'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Yes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'technicallyfeasible_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'01-07-2050', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'23-01-2036', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tenderenddate'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Sep 30 2015 12:00AM', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tendersubmissiondateactual'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Астрахань', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tendersubmissionplace'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000005', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tendertype'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Restricted', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tendertype_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'98', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tendervalidity'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tmp_approvalinitiator_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'W0497', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tmp_projectguid'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Valencia relleno celdas', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tmpproject_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zuilinchem ', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tomobdemob'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'999807', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'totalcontractvalueeurocopy'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'98.00', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'totalftedays'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'May  1 2023 11:07PM', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'totalftedays_date_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'totalftedays_state_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000003', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'typeofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Unitrates', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'typeofcontract_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000002', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'typeofwork'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Maintenance', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'typeofwork_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000002', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'typetender'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Tender', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'typetender_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'4', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'userdefinedriskprofile'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Very High', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'userdefinedriskprofile_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FCD832B6-A9F8-E411-810A-C4346BACBCC0', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vanoordentityid'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Wicks B.V.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vanoordentityid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000003', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vanoordsubmittingactingas'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Sub Contractor', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vanoordsubmittingactingas_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'7', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'project_versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'A63D9A42-8922-EC11-B6E6-6045BD887A95', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vobusinessunitid'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Offshore Wind', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vobusinessunitid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000003', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'voprojectriskcategory'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'D', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'voprojectriskcategory_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'999807', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'voshareineurocopy'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'99.99', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vosharepercentcopy'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'wages_yn'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Yes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'wages_yn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Variable', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'waterdepthssite'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'yes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'windturbineinformation'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N' OIV Boreas to be offered as base c', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'winstrategy'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Sep 30 2022 12:13PM', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'createdonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'15', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'importsequencenumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Mar 31 2023 11:48AM', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'modifiedonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'@VOOW - Offshore Wind - Project - RO', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Inactive', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Unsuccessful Tender', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'42', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'timezoneruleversionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'153872140', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'id'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived from synapse pipeline', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'dwh_proces_run_id'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'dwh_hash'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'ak_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'acceptableqhsestandards'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'acceptableqhsestandards_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'accountid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'accountid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'activetimeregistrationid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'activetimeregistrationid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'additionalreason'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'additionalreason_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'advancepaymentpercentage'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'alignswithcorporatestrategyactions1'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'alignswithcorporatestrategyactions1_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'alignswithcorporatestrategyactions2'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'alignswithcorporatestrategyactions2_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'alternativetobeoffered'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'alternativetobeoffered_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'anonymizedata'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'anonymizedata_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'approvalinitiatorremarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'approvalstatus'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'approvalstatus_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'approvalworkflowinprogress'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'approvalworkflowinprogress_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'areaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'availabilitycompetences'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awarddateexpected'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardnumberid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummaryimport'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummaryimport_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummaryinstanceurl'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummarynumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummaryprojectsnapshoturl'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummaryreportlink'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummaryrevision'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummaryrevision_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'baseportinformation'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'bidvaliditydays'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'bingmapzoomlevel'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'cable'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'calculatedriskprofile'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'calculatedriskprofile_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'car'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'car_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'carbonfootprintestimated'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'chanceofgoingahead'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'chanceofgoingahead_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'chanceofwinningcommercialposition'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'chanceofwinningcommercialposition_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'changedawarddate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'changedtenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'changestosolution'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'changestosolutionchosen'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'commercialresponsibleid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'contractconditions'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'contractconditions_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'countryid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'countryid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'createawardsummarynumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'createawardsummarynumber_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'createnewprojectnumer'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'createnewprojectnumer_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'creditinsurance'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'creditinsurance_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'creditinsurance_yn'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'creditinsurance_yn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'currencyrisk'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'currencyrisk_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'currencyrisk_yn'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'currencyrisk_yn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'defectsliabilityperioddays'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'definerequiredtenderteamcompetences'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'deploymentownequipment'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'deploymentownequipment_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'designinsurance'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'designinsurance_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'designresponsibilityyn'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'designresponsibilityyn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'dredgingcategory'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'dredgingcategory_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'durationofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'edocs'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'edocs_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'eepriority'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'eepriority_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'emviscore'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'emviscore_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'endreportrequired'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'endreportrequired_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'expectedstartofwork'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'exposedconditions'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'externalinputrequirements'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'fasttrack'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'fasttrack_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'finalcompletion'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'finalcompletion_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'finalcompletionamounteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'finalcompletionlimpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'finalcompletionperiod'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'finalcompletionperiod_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'formofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'formofcontract_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'foundation'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'frommobdemob'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'fuel_yn'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'fuel_yn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'fullclientprojectname'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'functionalapplicationbypass'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'functionalapplicationbypass_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'geophysicalinfo'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'geotechnicalinfo'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'intermediatecompletionamounteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'intermediatecompletionlimpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'intermediatecompletionperiod'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'intermediatecompletionperiod_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'intermediatecompletions'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'intermediatecompletions_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'investmentrequired'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'investmentrequired_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'latestapprovedawardsummary_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'latitude'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'latitudedegrees'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'latitudedms'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'latitudeminutes'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'atitudenorthsouth'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'latitudenorthsouth_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'latitudeseconds'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'lcdreview'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'lcdreview_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'letterofcredit'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'letterofcredit_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'letterofcredit_yn'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'letterofcredit_yn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'location'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longitude'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longitudedegrees'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longitudedms'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longitudeeastwest'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longitudeeastwest_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longitudeminutes'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longitudeseconds'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longleaditemssecured'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longleaditemssecured_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'mainprojectid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'maintenanceperiod'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'maintenanceperioddays'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'marketdrivers'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'marketdrivers_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'materials_yn'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'materials_yn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'maxliability'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'nonbindingindication'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'nonbindingindication_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'noneurocomponentpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'ohvs'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'onhold'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'onhold_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'onholdreason'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'onholdreason_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'onshore'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'overallriskprofileafter'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'overallriskprofileafter_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'overallriskprofilebefore'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'overallriskprofilebefore_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'parentcompanyguarantee'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'parentcompanyguarantee_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'paymentguarantees_creditinsurance'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'paymentguarantees_creditinsurance_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'paymentperioddays'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'paymentrisk'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'paymentrisk_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'paymentrisk_yn'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'paymentrisk_yn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'positivecashflow'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'positivecashflow_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pq'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pq_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pqdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pqremarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pricevariationsfuel'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pricevariationsfuel_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pricevariationsmaterials'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pricevariationsmaterials_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pricevariationswages'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pricevariationswages_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'processnostepfield'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'processnostepfield_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'productgroupsnl'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'productgroupsnl_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectdescription'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectfinancial'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectfinancial_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectfinancialdatalasttransferdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectgeneral'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectgeneral_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectphase'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectphase_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectpreparationmeeting'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectstatusid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'reasonexplanation'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'reasonexplanationchosen'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'reasonofchangeaward'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'reclamationlevel'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'requiredcriticalcompetences'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'resourceavailability'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'resourceavailability_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'retentionpercentage'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'sailingdistancetodisposalarea'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'scopeofworkvanoord'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'soildata'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'stagegate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'stagegate_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'stagegatecopy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'stagegatesnapshot'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'stagegatesnapshot_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'startoftender'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'statushistoryregisterdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'statushistoryregisterdate_date_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'statushistoryregisterdate_state_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'subareaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'subareaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'substatusreason'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'substatusreason_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'technicallyfeasible'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'technicallyfeasible_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tenderenddate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tendersubmissiondateactual'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tendersubmissionplace'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tendertype'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tendertype_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tendervalidity'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tmp_approvalinitiator_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tmp_projectguid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tmpproject_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tomobdemob'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'totalcontractvalueeurocopy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'totalftedays'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'totalftedays_date_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'totalftedays_state_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'typeofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'typeofcontract_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'typeofwork'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'typeofwork_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'typetender'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'typetender_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'userdefinedriskprofile'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'userdefinedriskprofile_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vanoordentityid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vanoordentityid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vanoordsubmittingactingas'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vanoordsubmittingactingas_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'project_versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vobusinessunitid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vobusinessunitid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'voprojectriskcategory'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'voprojectriskcategory_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'voshareineurocopy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vosharepercentcopy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'wages_yn'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'wages_yn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'waterdepthssite'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'windturbineinformation'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'winstrategy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'createdonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'importsequencenumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'modifiedonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'timezoneruleversionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'ak_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'acceptableqhsestandards'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'acceptableqhsestandards_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'accountid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'accountid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'activetimeregistrationid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'activetimeregistrationid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'additionalreason'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'additionalreason_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'advancepaymentpercentage'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'alignswithcorporatestrategyactions1'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'alignswithcorporatestrategyactions1_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'alignswithcorporatestrategyactions2'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'alignswithcorporatestrategyactions2_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'alternativetobeoffered'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'alternativetobeoffered_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'anonymizedata'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'anonymizedata_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'approvalinitiatorremarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'approvalstatus'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'approvalstatus_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'approvalworkflowinprogress'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'approvalworkflowinprogress_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'areaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'availabilitycompetences'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awarddateexpected'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardnumberid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummaryimport'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummaryimport_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummaryinstanceurl'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummarynumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummaryprojectsnapshoturl'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummaryreportlink'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummaryrevision'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummaryrevision_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'baseportinformation'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'bidvaliditydays'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'bingmapzoomlevel'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'cable'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'calculatedriskprofile'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'calculatedriskprofile_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'car'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'car_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'carbonfootprintestimated'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'chanceofgoingahead'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'chanceofgoingahead_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'chanceofwinningcommercialposition'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'chanceofwinningcommercialposition_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'changedawarddate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'changedtenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'changestosolution'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'changestosolutionchosen'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'commercialresponsibleid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'contractconditions'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'contractconditions_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'countryid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'countryid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'createawardsummarynumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'createawardsummarynumber_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'createnewprojectnumer'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'createnewprojectnumer_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'creditinsurance'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'creditinsurance_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'creditinsurance_yn'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'creditinsurance_yn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'currencyrisk'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'currencyrisk_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'currencyrisk_yn'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'currencyrisk_yn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'defectsliabilityperioddays'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'definerequiredtenderteamcompetences'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'deploymentownequipment'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'deploymentownequipment_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'designinsurance'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'designinsurance_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'designresponsibilityyn'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'designresponsibilityyn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'dredgingcategory'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'dredgingcategory_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'durationofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'edocs'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'edocs_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'eepriority'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'eepriority_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'emviscore'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'emviscore_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'endreportrequired'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'endreportrequired_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'expectedstartofwork'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'exposedconditions'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'externalinputrequirements'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'fasttrack'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'fasttrack_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'finalcompletion'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'finalcompletion_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'finalcompletionamounteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'finalcompletionlimpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'finalcompletionperiod'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'finalcompletionperiod_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'formofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'formofcontract_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'foundation'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'frommobdemob'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'fuel_yn'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'fuel_yn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'fullclientprojectname'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'functionalapplicationbypass'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'functionalapplicationbypass_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'geophysicalinfo'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'geotechnicalinfo'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'intermediatecompletionamounteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'intermediatecompletionlimpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'intermediatecompletionperiod'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'intermediatecompletionperiod_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'intermediatecompletions'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'intermediatecompletions_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'investmentrequired'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'investmentrequired_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'latestapprovedawardsummary_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'latitude'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'latitudedegrees'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'latitudedms'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'latitudeminutes'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'atitudenorthsouth'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'latitudenorthsouth_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'latitudeseconds'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'lcdreview'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'lcdreview_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'letterofcredit'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'letterofcredit_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'letterofcredit_yn'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'letterofcredit_yn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'location'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longitude'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longitudedegrees'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longitudedms'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longitudeeastwest'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longitudeeastwest_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longitudeminutes'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longitudeseconds'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longleaditemssecured'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longleaditemssecured_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'mainprojectid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'maintenanceperiod'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'maintenanceperioddays'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'marketdrivers'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'marketdrivers_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'materials_yn'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'materials_yn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'maxliability'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'nonbindingindication'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'nonbindingindication_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'noneurocomponentpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'ohvs'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'onhold'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'onhold_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'onholdreason'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'onholdreason_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'onshore'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'overallriskprofileafter'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'overallriskprofileafter_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'overallriskprofilebefore'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'overallriskprofilebefore_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'parentcompanyguarantee'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'parentcompanyguarantee_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'paymentguarantees_creditinsurance'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'paymentguarantees_creditinsurance_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'paymentperioddays'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'paymentrisk'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'paymentrisk_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'paymentrisk_yn'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'paymentrisk_yn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'positivecashflow'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'positivecashflow_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pq'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pq_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pqdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pqremarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pricevariationsfuel'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pricevariationsfuel_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pricevariationsmaterials'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pricevariationsmaterials_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pricevariationswages'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pricevariationswages_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'processnostepfield'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'processnostepfield_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'productgroupsnl'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'productgroupsnl_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectdescription'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectfinancial'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectfinancial_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectfinancialdatalasttransferdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectgeneral'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectgeneral_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectphase'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectphase_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectpreparationmeeting'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectstatusid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'reasonexplanation'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'reasonexplanationchosen'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'reasonofchangeaward'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'reclamationlevel'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'requiredcriticalcompetences'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'resourceavailability'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'resourceavailability_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'retentionpercentage'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'sailingdistancetodisposalarea'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'scopeofworkvanoord'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'soildata'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'stagegate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'stagegate_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'stagegatecopy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'stagegatesnapshot'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'stagegatesnapshot_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'startoftender'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'statushistoryregisterdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'statushistoryregisterdate_date_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'statushistoryregisterdate_state_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'subareaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'subareaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'substatusreason'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'substatusreason_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'technicallyfeasible'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'technicallyfeasible_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tenderenddate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tendersubmissiondateactual'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tendersubmissionplace'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tendertype'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tendertype_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tendervalidity'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tmp_approvalinitiator_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tmp_projectguid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tmpproject_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tomobdemob'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'totalcontractvalueeurocopy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'totalftedays'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'totalftedays_date_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'totalftedays_state_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'typeofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'typeofcontract_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'typeofwork'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'typeofwork_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'typetender'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'typetender_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'userdefinedriskprofile'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'userdefinedriskprofile_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vanoordentityid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vanoordentityid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vanoordsubmittingactingas'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vanoordsubmittingactingas_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'project_versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vobusinessunitid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vobusinessunitid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'voprojectriskcategory'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'voprojectriskcategory_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'voshareineurocopy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vosharepercentcopy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'wages_yn'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'wages_yn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'waterdepthssite'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'windturbineinformation'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'winstrategy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'createdonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'importsequencenumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'modifiedonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'timezoneruleversionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'ak_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'acceptableqhsestandards'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'acceptableqhsestandards_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'accountid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'accountid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'activetimeregistrationid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'activetimeregistrationid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'additionalreason'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'additionalreason_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'advancepaymentpercentage'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'alignswithcorporatestrategyactions1'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'alignswithcorporatestrategyactions1_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'alignswithcorporatestrategyactions2'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'alignswithcorporatestrategyactions2_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'alternativetobeoffered'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'alternativetobeoffered_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'anonymizedata'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'anonymizedata_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'approvalinitiatorremarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'approvalstatus'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'approvalstatus_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'approvalworkflowinprogress'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'approvalworkflowinprogress_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'areaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'availabilitycompetences'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awarddateexpected'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardnumberid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummaryimport'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummaryimport_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummaryinstanceurl'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummarynumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummaryprojectsnapshoturl'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummaryreportlink'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummaryrevision'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummaryrevision_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'baseportinformation'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'bidvaliditydays'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'bingmapzoomlevel'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'cable'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'calculatedriskprofile'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'calculatedriskprofile_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'car'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'car_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'carbonfootprintestimated'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'chanceofgoingahead'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'chanceofgoingahead_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'chanceofwinningcommercialposition'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'chanceofwinningcommercialposition_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'changedawarddate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'changedtenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'changestosolution'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'changestosolutionchosen'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'commercialresponsibleid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'contractconditions'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'contractconditions_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'countryid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'countryid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'createawardsummarynumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'createawardsummarynumber_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'createnewprojectnumer'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'createnewprojectnumer_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'creditinsurance'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'creditinsurance_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'creditinsurance_yn'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'creditinsurance_yn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'currencyrisk'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'currencyrisk_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'currencyrisk_yn'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'currencyrisk_yn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'defectsliabilityperioddays'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'definerequiredtenderteamcompetences'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'deploymentownequipment'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'deploymentownequipment_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'designinsurance'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'designinsurance_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'designresponsibilityyn'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'designresponsibilityyn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'dredgingcategory'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'dredgingcategory_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'durationofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'edocs'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'edocs_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'eepriority'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'eepriority_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'emviscore'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'emviscore_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'endreportrequired'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'endreportrequired_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'expectedstartofwork'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'exposedconditions'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'externalinputrequirements'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'fasttrack'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'fasttrack_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'finalcompletion'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'finalcompletion_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'finalcompletionamounteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'finalcompletionlimpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'finalcompletionperiod'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'finalcompletionperiod_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'formofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'formofcontract_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'foundation'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'frommobdemob'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'fuel_yn'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'fuel_yn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'fullclientprojectname'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'functionalapplicationbypass'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'functionalapplicationbypass_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'geophysicalinfo'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'geotechnicalinfo'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'intermediatecompletionamounteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'intermediatecompletionlimpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'intermediatecompletionperiod'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'intermediatecompletionperiod_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'intermediatecompletions'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'intermediatecompletions_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'investmentrequired'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'investmentrequired_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'latestapprovedawardsummary_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'latitude'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'latitudedegrees'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'latitudedms'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'latitudeminutes'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'atitudenorthsouth'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'latitudenorthsouth_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'latitudeseconds'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'lcdreview'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'lcdreview_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'letterofcredit'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'letterofcredit_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'letterofcredit_yn'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'letterofcredit_yn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'location'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longitude'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longitudedegrees'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longitudedms'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longitudeeastwest'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longitudeeastwest_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longitudeminutes'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longitudeseconds'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longleaditemssecured'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longleaditemssecured_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'mainprojectid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'maintenanceperiod'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'maintenanceperioddays'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'marketdrivers'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'marketdrivers_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'materials_yn'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'materials_yn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'maxliability'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'nonbindingindication'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'nonbindingindication_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'noneurocomponentpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'ohvs'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'onhold'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'onhold_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'onholdreason'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'onholdreason_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'onshore'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'overallriskprofileafter'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'overallriskprofileafter_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'overallriskprofilebefore'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'overallriskprofilebefore_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'parentcompanyguarantee'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'parentcompanyguarantee_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'paymentguarantees_creditinsurance'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'paymentguarantees_creditinsurance_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'paymentperioddays'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'paymentrisk'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'paymentrisk_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'paymentrisk_yn'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'paymentrisk_yn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'positivecashflow'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'positivecashflow_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pq'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pq_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pqdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pqremarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pricevariationsfuel'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pricevariationsfuel_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pricevariationsmaterials'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pricevariationsmaterials_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pricevariationswages'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pricevariationswages_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'processnostepfield'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'processnostepfield_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'productgroupsnl'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'productgroupsnl_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectdescription'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectfinancial'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectfinancial_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectfinancialdatalasttransferdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectgeneral'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectgeneral_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectphase'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectphase_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectpreparationmeeting'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectstatusid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'reasonexplanation'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'reasonexplanationchosen'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'reasonofchangeaward'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'reclamationlevel'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'requiredcriticalcompetences'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'resourceavailability'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'resourceavailability_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'retentionpercentage'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'sailingdistancetodisposalarea'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'scopeofworkvanoord'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'soildata'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'stagegate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'stagegate_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'stagegatecopy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'stagegatesnapshot'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'stagegatesnapshot_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'startoftender'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'statushistoryregisterdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'statushistoryregisterdate_date_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'statushistoryregisterdate_state_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'subareaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'subareaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'substatusreason'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'substatusreason_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'technicallyfeasible'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'technicallyfeasible_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tenderenddate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tendersubmissiondateactual'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tendersubmissionplace'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tendertype'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tendertype_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tendervalidity'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tmp_approvalinitiator_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tmp_projectguid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tmpproject_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tomobdemob'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'totalcontractvalueeurocopy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'totalftedays'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'totalftedays_date_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'totalftedays_state_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'typeofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'typeofcontract_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'typeofwork'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'typeofwork_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'typetender'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'typetender_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'userdefinedriskprofile'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'userdefinedriskprofile_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vanoordentityid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vanoordentityid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vanoordsubmittingactingas'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vanoordsubmittingactingas_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'project_versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vobusinessunitid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vobusinessunitid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'voprojectriskcategory'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'voprojectriskcategory_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'voshareineurocopy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vosharepercentcopy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'wages_yn'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'wages_yn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'waterdepthssite'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'windturbineinformation'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'winstrategy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'createdonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'importsequencenumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'modifiedonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'timezoneruleversionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_projectid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'ak_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_projectnumber', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_name', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_acceptableqhsestandards', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'acceptableqhsestandards'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_acceptableqhsestandards_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'acceptableqhsestandards_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_accountid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'accountid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_accountid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'accountid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_activetimeregistrationid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'activetimeregistrationid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_activetimeregistrationid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'activetimeregistrationid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_additionalreason', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'additionalreason'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_additionalreason_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'additionalreason_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_advancepaymentpercentage', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'advancepaymentpercentage'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_alignswithcorporatestrategyactions1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'alignswithcorporatestrategyactions1'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_alignswithcorporatestrategyactions1_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'alignswithcorporatestrategyactions1_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_alignswithcorporatestrategyactions2', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'alignswithcorporatestrategyactions2'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_alignswithcorporatestrategyactions2_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'alignswithcorporatestrategyactions2_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_alternativetobeoffered', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'alternativetobeoffered'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_alternativetobeoffered_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'alternativetobeoffered_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_anonymizedata', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'anonymizedata'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_anonymizedata_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'anonymizedata_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_approvalinitiatorremarks', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'approvalinitiatorremarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_approvalstatus', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'approvalstatus'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_approvalstatus_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'approvalstatus_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_approvalworkflowinprogress', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'approvalworkflowinprogress'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_approvalworkflowinprogress_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'approvalworkflowinprogress_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_areaid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_areaid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'areaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_availabilitycompetences', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'availabilitycompetences'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_awarddateexpected', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awarddateexpected'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_awardnumberid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardnumberid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_awardsummaryimport', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummaryimport'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_awardsummaryimport_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummaryimport_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_awardsummaryinstanceurl', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummaryinstanceurl'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_awardsummarynumber', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummarynumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_awardsummaryprojectsnapshoturl', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummaryprojectsnapshoturl'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_awardsummaryreportlink', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummaryreportlink'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_awardsummaryrevision', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummaryrevision'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_awardsummaryrevision_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummaryrevision_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_baseportinformation', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'baseportinformation'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_bidvaliditydays', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'bidvaliditydays'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_bingmapzoomlevel', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'bingmapzoomlevel'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_cable', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'cable'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_calculatedriskprofile', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'calculatedriskprofile'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_calculatedriskprofile_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'calculatedriskprofile_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_car', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'car'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_car_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'car_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_carbonfootprintestimated', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'carbonfootprintestimated'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_chanceofgoingahead', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'chanceofgoingahead'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_chanceofgoingahead_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'chanceofgoingahead_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_chanceofwinningcommercialposition', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'chanceofwinningcommercialposition'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_chanceofwinningcommercialposition_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'chanceofwinningcommercialposition_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_changedawarddate', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'changedawarddate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_changedtenderdate', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'changedtenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_changestosolution', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'changestosolution'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_changestosolutionchosen', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'changestosolutionchosen'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_commercialresponsibleid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'commercialresponsibleid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_contractconditions', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'contractconditions'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_contractconditions_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'contractconditions_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_countryid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'countryid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_countryid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'countryid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_createawardsummarynumber', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'createawardsummarynumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_createawardsummarynumber_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'createawardsummarynumber_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_createnewprojectnumer', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'createnewprojectnumer'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_createnewprojectnumer_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'createnewprojectnumer_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_creditinsurance', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'creditinsurance'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_creditinsurance_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'creditinsurance_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_creditinsurance_yn', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'creditinsurance_yn'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_creditinsurance_yn_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'creditinsurance_yn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_currencyrisk', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'currencyrisk'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_currencyrisk_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'currencyrisk_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_currencyrisk_yn', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'currencyrisk_yn'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_currencyrisk_yn_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'currencyrisk_yn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_defectsliabilityperioddays', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'defectsliabilityperioddays'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_definerequiredtenderteamcompetences', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'definerequiredtenderteamcompetences'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_deploymentownequipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'deploymentownequipment'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_deploymentownequipment_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'deploymentownequipment_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_designinsurance', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'designinsurance'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_designinsurance_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'designinsurance_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_designresponsibilityyn', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'designresponsibilityyn'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_designresponsibilityyn_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'designresponsibilityyn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_dredgingcategory', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'dredgingcategory'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_dredgingcategory_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'dredgingcategory_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_durationofcontract', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'durationofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_edocs', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'edocs'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_edocs_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'edocs_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_eepriority', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'eepriority'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_eepriority_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'eepriority_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_emviscore', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'emviscore'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_emviscore_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'emviscore_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_endreportrequired', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'endreportrequired'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_endreportrequired_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'endreportrequired_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_expectedstartofwork', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'expectedstartofwork'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_exposedconditions', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'exposedconditions'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_externalinputrequirements', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'externalinputrequirements'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_fasttrack', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'fasttrack'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_fasttrack_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'fasttrack_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_finalcompletion', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'finalcompletion'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_finalcompletion_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'finalcompletion_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_finalcompletionamounteuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'finalcompletionamounteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_finalcompletionlimpercent', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'finalcompletionlimpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_finalcompletionperiod', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'finalcompletionperiod'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_finalcompletionperiod_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'finalcompletionperiod_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_formofcontract', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'formofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_formofcontract_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'formofcontract_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_foundation', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'foundation'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_frommobdemob', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'frommobdemob'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_fuel_yn', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'fuel_yn'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_fuel_yn_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'fuel_yn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_fullclientprojectname', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'fullclientprojectname'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_functionalapplicationbypass', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'functionalapplicationbypass'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_functionalapplicationbypass_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'functionalapplicationbypass_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_geophysicalinfo', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'geophysicalinfo'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_geotechnicalinfo', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'geotechnicalinfo'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_intermediatecompletionamounteuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'intermediatecompletionamounteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_intermediatecompletionlimpercent', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'intermediatecompletionlimpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_intermediatecompletionperiod', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'intermediatecompletionperiod'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_intermediatecompletionperiod_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'intermediatecompletionperiod_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_intermediatecompletions', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'intermediatecompletions'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_intermediatecompletions_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'intermediatecompletions_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_investmentrequired', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'investmentrequired'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_investmentrequired_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'investmentrequired_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_latestapprovedawardsummary_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'latestapprovedawardsummary_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_latitude', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'latitude'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_latitudedegrees', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'latitudedegrees'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_latitudedms', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'latitudedms'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_latitudeminutes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'latitudeminutes'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_latitudenorthsouth', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'atitudenorthsouth'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_latitudenorthsouth_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'latitudenorthsouth_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_latitudeseconds', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'latitudeseconds'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_lcdreview', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'lcdreview'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_lcdreview_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'lcdreview_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_letterofcredit', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'letterofcredit'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_letterofcredit_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'letterofcredit_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_letterofcredit_yn', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'letterofcredit_yn'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_letterofcredit_yn_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'letterofcredit_yn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_location', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'location'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_longitude', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longitude'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_longitudedegrees', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longitudedegrees'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_longitudedms', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longitudedms'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_longitudeeastwest', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longitudeeastwest'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_longitudeeastwest_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longitudeeastwest_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_longitudeminutes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longitudeminutes'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_longitudeseconds', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longitudeseconds'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_longleaditemssecured', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longleaditemssecured'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_longleaditemssecured_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longleaditemssecured_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_mainprojectid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'mainprojectid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_maintenanceperiod', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'maintenanceperiod'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_maintenanceperioddays', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'maintenanceperioddays'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_marketdrivers', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'marketdrivers'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_marketdrivers_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'marketdrivers_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_materials_yn', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'materials_yn'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_materials_yn_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'materials_yn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_maxliability', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'maxliability'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_nonbindingindication', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'nonbindingindication'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_nonbindingindication_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'nonbindingindication_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_noneurocomponentpercent', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'noneurocomponentpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_ohvs', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'ohvs'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_onhold', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'onhold'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_onhold_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'onhold_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_onholdreason', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'onholdreason'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_onholdreason_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'onholdreason_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_onshore', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'onshore'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_overallriskprofileafter', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'overallriskprofileafter'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_overallriskprofileafter_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'overallriskprofileafter_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_overallriskprofilebefore', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'overallriskprofilebefore'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_overallriskprofilebefore_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'overallriskprofilebefore_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_parentcompanyguarantee', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'parentcompanyguarantee'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_parentcompanyguarantee_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'parentcompanyguarantee_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_paymentguarantees_creditinsurance', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'paymentguarantees_creditinsurance'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_paymentguarantees_creditinsurance_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'paymentguarantees_creditinsurance_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_paymentperioddays', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'paymentperioddays'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_paymentrisk', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'paymentrisk'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_paymentrisk_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'paymentrisk_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_paymentrisk_yn', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'paymentrisk_yn'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_paymentrisk_yn_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'paymentrisk_yn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_positivecashflow', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'positivecashflow'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_positivecashflow_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'positivecashflow_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_pq', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pq'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_pq_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pq_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_pqdate', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pqdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_pqremarks', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pqremarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_pricevariationsfuel', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pricevariationsfuel'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_pricevariationsfuel_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pricevariationsfuel_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_pricevariationsmaterials', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pricevariationsmaterials'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_pricevariationsmaterials_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pricevariationsmaterials_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_pricevariationswages', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pricevariationswages'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_pricevariationswages_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pricevariationswages_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_processnostepfield', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'processnostepfield'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_processnostepfield_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'processnostepfield_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_productgroupsnl', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'productgroupsnl'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_productgroupsnl_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'productgroupsnl_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_projectdescription', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectdescription'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_projectfinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectfinancial'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_projectfinancial_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectfinancial_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_projectfinancialdatalasttransferdate', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectfinancialdatalasttransferdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_projectgeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectgeneral'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_projectgeneral_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectgeneral_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_projectphase', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectphase'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_projectphase_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectphase_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_projectpreparationmeeting', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectpreparationmeeting'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_projectstatusid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectstatusid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_reasonexplanation', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'reasonexplanation'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_reasonexplanationchosen', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'reasonexplanationchosen'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_reasonofchangeaward', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'reasonofchangeaward'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_reclamationlevel', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'reclamationlevel'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_requiredcriticalcompetences', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'requiredcriticalcompetences'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_resourceavailability', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'resourceavailability'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_resourceavailability_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'resourceavailability_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_retentionpercentage', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'retentionpercentage'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_sailingdistancetodisposalarea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'sailingdistancetodisposalarea'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_scopeofworkvanoord', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'scopeofworkvanoord'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_soildata', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'soildata'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_stagegate', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'stagegate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_stagegate_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'stagegate_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_stagegatecopy', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'stagegatecopy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_stagegatesnapshot', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'stagegatesnapshot'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_stagegatesnapshot_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'stagegatesnapshot_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_startoftender', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'startoftender'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_statushistoryregisterdate', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'statushistoryregisterdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_statushistoryregisterdate_date_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'statushistoryregisterdate_date_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_statushistoryregisterdate_state_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'statushistoryregisterdate_state_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_subareaid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'subareaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_subareaid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'subareaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_substatusreason', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'substatusreason'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_substatusreason_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'substatusreason_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_technicallyfeasible', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'technicallyfeasible'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_technicallyfeasible_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'technicallyfeasible_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_tenderdate', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_tenderenddate', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tenderenddate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_tendersubmissiondateactual', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tendersubmissiondateactual'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_tendersubmissionplace', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tendersubmissionplace'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_tendertype', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tendertype'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_tendertype_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tendertype_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_tendervalidity', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tendervalidity'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_tmp_approvalinitiator_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tmp_approvalinitiator_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_tmp_projectguid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tmp_projectguid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_tmpproject_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tmpproject_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_tomobdemob', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tomobdemob'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_totalcontractvalueeurocopy', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'totalcontractvalueeurocopy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_totalftedays', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'totalftedays'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_totalftedays_date_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'totalftedays_date_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_totalftedays_state_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'totalftedays_state_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_typeofcontract', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'typeofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_typeofcontract_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'typeofcontract_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_typeofwork', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'typeofwork'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_typeofwork_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'typeofwork_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_typetender', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'typetender'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_typetender_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'typetender_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_userdefinedriskprofile', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'userdefinedriskprofile'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_userdefinedriskprofile_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'userdefinedriskprofile_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_vanoordentityid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vanoordentityid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_vanoordentityid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vanoordentityid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_vanoordsubmittingactingas', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vanoordsubmittingactingas'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_vanoordsubmittingactingas_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vanoordsubmittingactingas_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_versionnumber', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'project_versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_vobusinessunitid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vobusinessunitid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_vobusinessunitid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vobusinessunitid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_voprojectriskcategory', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'voprojectriskcategory'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_voprojectriskcategory_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'voprojectriskcategory_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_voshareineurocopy', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'voshareineurocopy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_vosharepercentcopy', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vosharepercentcopy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_wages_yn', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'wages_yn'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_wages_yn_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'wages_yn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_waterdepthssite', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'waterdepthssite'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_windturbineinformation', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'windturbineinformation'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_winstrategy', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'winstrategy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_createdby_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'createdon', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_createdonbehalfby_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'createdonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'importsequencenumber', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'importsequencenumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_modifiedby_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'modifiedon', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_modifiedonbehalfby_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'modifiedonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_ownerid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'statecode', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_statecode_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'statuscode', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_statuscode_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'timezoneruleversionnumber', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'timezoneruleversionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'versionnumber', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'ak_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'acceptableqhsestandards'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'acceptableqhsestandards_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'accountid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(160)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'accountid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'activetimeregistrationid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'activetimeregistrationid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'additionalreason'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'additionalreason_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,2)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'advancepaymentpercentage'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'alignswithcorporatestrategyactions1'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'alignswithcorporatestrategyactions1_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'alignswithcorporatestrategyactions2'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'alignswithcorporatestrategyactions2_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'alternativetobeoffered'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'alternativetobeoffered_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'anonymizedata'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'anonymizedata_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'ntext', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'approvalinitiatorremarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'approvalstatus'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'approvalstatus_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'approvalworkflowinprogress'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'approvalworkflowinprogress_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'areaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'ntext', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'availabilitycompetences'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'date', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awarddateexpected'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardnumberid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummaryimport'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummaryimport_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummaryinstanceurl'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummarynumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummaryprojectsnapshoturl'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(500)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummaryreportlink'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummaryrevision'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'awardsummaryrevision_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'baseportinformation'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'bidvaliditydays'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'bingmapzoomlevel'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'cable'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'calculatedriskprofile'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'calculatedriskprofile_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'car'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'car_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,2)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'carbonfootprintestimated'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'chanceofgoingahead'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'chanceofgoingahead_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'chanceofwinningcommercialposition'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'chanceofwinningcommercialposition_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'date', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'changedawarddate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'date', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'changedtenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'ntext', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'changestosolution'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'ntext', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'changestosolutionchosen'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'commercialresponsibleid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'contractconditions'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'contractconditions_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'countryid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'countryid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'createawardsummarynumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'createawardsummarynumber_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'createnewprojectnumer'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'createnewprojectnumer_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'creditinsurance'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'creditinsurance_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'creditinsurance_yn'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'creditinsurance_yn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'currencyrisk'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'currencyrisk_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'currencyrisk_yn'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'currencyrisk_yn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'defectsliabilityperioddays'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'ntext', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'definerequiredtenderteamcompetences'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'deploymentownequipment'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'deploymentownequipment_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'designinsurance'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'designinsurance_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'designresponsibilityyn'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'designresponsibilityyn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'dredgingcategory'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'dredgingcategory_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,1)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'durationofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'edocs'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'edocs_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'eepriority'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'eepriority_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'emviscore'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'emviscore_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'endreportrequired'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'endreportrequired_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'date', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'expectedstartofwork'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'exposedconditions'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'ntext', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'externalinputrequirements'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'fasttrack'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'fasttrack_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'finalcompletion'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'finalcompletion_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'finalcompletionamounteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'finalcompletionlimpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'finalcompletionperiod'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'finalcompletionperiod_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'formofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'formofcontract_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'foundation'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(500)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'frommobdemob'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'fuel_yn'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'fuel_yn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'fullclientprojectname'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'functionalapplicationbypass'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'functionalapplicationbypass_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'geophysicalinfo'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'geotechnicalinfo'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'intermediatecompletionamounteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'intermediatecompletionlimpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'intermediatecompletionperiod'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'intermediatecompletionperiod_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'intermediatecompletions'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'intermediatecompletions_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'investmentrequired'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'investmentrequired_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'latestapprovedawardsummary_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'float', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'latitude'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'latitudedegrees'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(20)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'latitudedms'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'latitudeminutes'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'atitudenorthsouth'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'latitudenorthsouth_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'latitudeseconds'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'lcdreview'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'lcdreview_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'letterofcredit'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'letterofcredit_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'letterofcredit_yn'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'letterofcredit_yn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'location'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'float', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longitude'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longitudedegrees'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(20)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longitudedms'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longitudeeastwest'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longitudeeastwest_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18.0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longitudeminutes'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longitudeseconds'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longleaditemssecured'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longleaditemssecured_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'mainprojectid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,1)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'maintenanceperiod'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'maintenanceperioddays'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'marketdrivers'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'marketdrivers_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'materials_yn'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'materials_yn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(250)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'maxliability'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'nonbindingindication'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'nonbindingindication_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,2)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'noneurocomponentpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'ohvs'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'onhold'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'onhold_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'onholdreason'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'onholdreason_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'onshore'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'overallriskprofileafter'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'overallriskprofileafter_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'overallriskprofilebefore'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'overallriskprofilebefore_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'parentcompanyguarantee'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'parentcompanyguarantee_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'paymentguarantees_creditinsurance'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'paymentguarantees_creditinsurance_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'paymentperioddays'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'paymentrisk'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'paymentrisk_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'paymentrisk_yn'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'paymentrisk_yn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'positivecashflow'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'positivecashflow_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pq'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pq_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'date', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pqdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'ntext', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pqremarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pricevariationsfuel'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pricevariationsfuel_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pricevariationsmaterials'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pricevariationsmaterials_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pricevariationswages'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'pricevariationswages_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'processnostepfield'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'processnostepfield_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'productgroupsnl'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'productgroupsnl_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'ntext', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectdescription'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectfinancial'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectfinancial_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'datetime', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectfinancialdatalasttransferdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectgeneral'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectgeneral_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectphase'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectphase_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'date', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectpreparationmeeting'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectstatusid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'ntext', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'reasonexplanation'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'ntext', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'reasonexplanationchosen'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'ntext', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'reasonofchangeaward'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'reclamationlevel'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'ntext', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'requiredcriticalcompetences'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'resourceavailability'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'resourceavailability_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,2)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'retentionpercentage'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,1)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'sailingdistancetodisposalarea'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'ntext', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'scopeofworkvanoord'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'soildata'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'stagegate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'stagegate_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'stagegatecopy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'stagegatesnapshot'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'stagegatesnapshot_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'date', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'startoftender'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'date', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'statushistoryregisterdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'date', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'statushistoryregisterdate_date_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'statushistoryregisterdate_state_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'subareaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'subareaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'substatusreason'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'substatusreason_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'technicallyfeasible'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'technicallyfeasible_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'date', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'date', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tenderenddate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'datetime', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tendersubmissiondateactual'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tendersubmissionplace'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tendertype'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tendertype_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tendervalidity'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tmp_approvalinitiator_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tmp_projectguid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tmpproject_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(500)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'tomobdemob'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'totalcontractvalueeurocopy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,2)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'totalftedays'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'datetime', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'totalftedays_date_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'totalftedays_state_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'typeofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'typeofcontract_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'typeofwork'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'typeofwork_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'typetender'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'typetender_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'userdefinedriskprofile'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'userdefinedriskprofile_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vanoordentityid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vanoordentityid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vanoordsubmittingactingas'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vanoordsubmittingactingas_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'project_versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vobusinessunitid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vobusinessunitid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'voprojectriskcategory'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'voprojectriskcategory_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'voshareineurocopy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,2)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vosharepercentcopy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'wages_yn'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'wages_yn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'waterdepthssite'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'windturbineinformation'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'ntext', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'winstrategy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'datetime', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'createdonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'importsequencenumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'datetime', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'modifiedonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'timezoneruleversionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'bigint', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'ak_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'accountid'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'activetimeregistrationid'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'advancepaymentpercentage'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamis', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'carbonfootprintestimated'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'countryid'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'defectsliabilityperioddays'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'durationofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'latitudeminutes'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longitudeminutes'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'longitudeseconds'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'maintenanceperiod'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numecic in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'maintenanceperioddays'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectfinancial'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectgeneral'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'retentionpercentage'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'sailingdistancetodisposalarea'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'subareaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'totalcontractvalueeurocopy'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'totalftedays'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vanoordentityid'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vobusinessunitid'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'voshareineurocopy'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vosharepercentcopy'; 
GO
exec sys.sp_addextendedproperty @name=N'Comments', @value=N'refers to EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'accountid'; 
GO
exec sys.sp_addextendedproperty @name=N'Comments', @value=N'refers to EntityTimeRegistration', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'activetimeregistrationid'; 
GO
exec sys.sp_addextendedproperty @name=N'Comments', @value=N'refers to EntityArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Comments', @value=N'refers to EntityCountry', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'countryid'; 
GO
exec sys.sp_addextendedproperty @name=N'Comments', @value=N'refers to EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectfinancial'; 
GO
exec sys.sp_addextendedproperty @name=N'Comments', @value=N'refers to EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'projectgeneral'; 
GO
exec sys.sp_addextendedproperty @name=N'Comments', @value=N'refers to EntitySubArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'subareaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Comments', @value=N'refers to EntityVanOordEntity', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vanoordentityid'; 
GO
exec sys.sp_addextendedproperty @name=N'Comments', @value=N'refers to EntityVOBusinessUnit', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_project', @level2type=N'COLUMN', @level2name=N'vobusinessunitid'; 
GO
GO
