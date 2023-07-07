CREATE TABLE processed.dyn_nonstandardproject (
   [id]  bigint IDENTITY  NOT NULL
,  [dwh_valid_from]  date   NOT NULL
,  [dwh_valid_to]  date   NULL
,  [dwh_active]  bit   NOT NULL
,  [AK_nonstandardproject]  nvarchar(36)   NULL
,  [projectnumber]  nvarchar(100)   NULL
,  [name]  nvarchar(200)   NULL
,  [exchangerate1]  decimal(18,10)   NULL
,  [activetimeregistrationid]  nvarchar(36)   NULL
,  [activetimeregistrationid_value]  nvarchar(100)   NULL
,  [additionalreason]  int   NULL
,  [additionalreason_value]  nvarchar(4000)   NULL
,  [alternatekeyperiod]  nvarchar(100)   NULL
,  [alternatekeystatus]  nvarchar(100)   NULL
,  [alternatekeytendertype]  nvarchar(100)   NULL
,  [alternatekeyyear]  nvarchar(100)   NULL
,  [anonymizedata]  int   NULL
,  [anonymizedata_value]  nvarchar(4000)   NULL
,  [approvalinitiatorremarks]  nvarchar(4000)   NULL
,  [approvalstatus]  int   NULL
,  [approvalstatus_value]  nvarchar(4000)   NULL
,  [approvalstatussg2c]  int   NULL
,  [approvalstatussg2c_value]  nvarchar(4000)   NULL
,  [approvalworkflowinprogress]  int   NULL
,  [approvalworkflowinprogress_value]  nvarchar(4000)   NULL
,  [areaid]  nvarchar(36)   NULL
,  [areaid_value]  nvarchar(100)   NULL
,  [awarddateexpected]  date   NULL
,  [awardnumberid_value]  nvarchar(100)   NULL
,  [awardsummaryinstanceurl]  nvarchar(100)   NULL
,  [awardsummarynumber]  nvarchar(100)   NULL
,  [awardsummaryprojectsnapshoturl]  nvarchar(100)   NULL
,  [awardsummaryreportlink]  nvarchar(500)   NULL
,  [bingmapzoomlevel]  int   NULL
,  [budgetexpectedpricelevelclienteuro]  decimal(18,0)   NULL
,  [cashflowarpleuro]  decimal(18,0)   NULL
,  [cashflowarplpercent]  decimal(18,2)   NULL
,  [commercialresponsibleid_value]  nvarchar(200)   NULL
,  [contractconditions]  int   NULL
,  [contractconditions_value]  nvarchar(4000)   NULL
,  [countryid]  nvarchar(36)   NULL
,  [countryid_value]  nvarchar(100)   NULL
,  [depreciationinvestmenteuro]  decimal(18,0)   NULL
,  [depreciationinvestmentpercent]  decimal(18,2)   NULL
,  [designresponsibilityyn]  int   NULL
,  [designresponsibilityyn_value]  nvarchar(4000)   NULL
,  [durationofcontract]  decimal(18,1)   NULL
,  [exchangerate2]  decimal(18,3)   NULL
,  [expectedpricelevelcompetitioneuro]  decimal(18,0)   NULL
,  [expectedstartofwork]  date   NULL
,  [formofcontract]  int   NULL
,  [formofcontract_value]  nvarchar(4000)   NULL
,  [formoftender]  int   NULL
,  [formoftender_value]  nvarchar(4000)   NULL
,  [frommobdemob]  nvarchar(500)   NULL
,  [fullclientprojectname]  nvarchar(100)   NULL
,  [inflationeuro]  decimal(18,0)   NULL
,  [inflationpercent]  decimal(18,2)   NULL
,  [latitude]  decimal(18,5)   NULL
,  [latitudedegrees]  decimal(18,0)   NULL
,  [latitudedms]  nvarchar(20)   NULL
,  [latitudeminutes]  decimal(18,0)   NULL
,  [atitudenorthsouth]  int   NULL
,  [latitudenorthsouth_value]  nvarchar(4000)   NULL
,  [latitudeseconds]  decimal(18,0)   NULL
,  [localtaxeseuro]  decimal(18,0)   NULL
,  [localtaxespercent]  decimal(18,2)   NULL
,  [location]  nvarchar(100)   NULL
,  [longitude]  decimal(18,5)   NULL
,  [longitudedegrees]  decimal(18,0)   NULL
,  [longitudedms]  nvarchar(20)   NULL
,  [longitudeeastwest]  int   NULL
,  [longitudeeastwest_value]  nvarchar(4000)   NULL
,  [longitudeminutes]  decimal(18,0)   NULL
,  [longitudeseconds]  decimal(18,0)   NULL
,  [mackleyautonumber_value]  nvarchar(100)   NULL
,  [mackleystatus]  int   NULL
,  [mackleystatus_value]  nvarchar(4000)   NULL
,  [mainequipmentareuro]  decimal(18,0)   NULL
,  [mainequipmentarpercent]  decimal(18,2)   NULL
,  [mainnonstandardprojectid]  nvarchar(36)   NULL
,  [mainnonstandardprojectid_value]  nvarchar(200)   NULL
,  [marketdrivers]  int   NULL
,  [marketdrivers_value]  nvarchar(4000)   NULL
,  [maxfinancingeur]  decimal(18,0)   NULL
,  [maxfinancingpercent]  decimal(18,2)   NULL
,  [mobdemobeuro]  decimal(18,0)   NULL
,  [mobdemobpercent]  decimal(18,2)   NULL
,  [negotiatecomplete]  int   NULL
,  [negotiatecomplete_value]  nvarchar(4000)   NULL
,  [nonstandardid_value]  nvarchar(100)   NULL
,  [nonstandardprojectsnapshot]  int   NULL
,  [nonstandardprojectsnapshot_value]  nvarchar(4000)   NULL
,  [onhold]  int   NULL
,  [onhold_value]  nvarchar(4000)   NULL
,  [onholdreason]  int   NULL
,  [onholdreason_value]  nvarchar(4000)   NULL
,  [overheadexpenseseuro]  decimal(18,0)   NULL
,  [overheadexpensespercent]  decimal(18,2)   NULL
,  [period]  int   NULL
,  [period_value]  nvarchar(4000)   NULL
,  [pq]  int   NULL
,  [pq_value]  nvarchar(4000)   NULL
,  [pqremarks]  ntext   NULL
,  [preparecomplete]  int   NULL
,  [preparecomplete_value]  nvarchar(4000)   NULL
,  [processnostepfield]  int   NULL
,  [processnostepfield_value]  nvarchar(4000)   NULL
,  [productgroupsnl]  int   NULL
,  [productgroupsnl_value]  nvarchar(4000)   NULL
,  [profitlosseuro]  decimal(18,0)   NULL
,  [profitlosspercent]  decimal(18,2)   NULL
,  [projectdescription]  nvarchar(4000)   NULL
,  [projectgeneral]  nvarchar(36)   NULL
,  [projectgeneral_value]  nvarchar(200)   NULL
,  [projectphase]  int   NULL
,  [projectphase_value]  nvarchar(4000)   NULL
,  [projectpreparationmeeting]  date   NULL
,  [projectreportdate]  date   NULL
,  [purchaseeuro]  decimal(18,0)   NULL
,  [purchasepercent]  decimal(18,2)   NULL
,  [remainingcostseuro]  decimal(18,0)   NULL
,  [remainingcostspercent]  decimal(18,2)   NULL
,  [remarksroughestimate]  nvarchar(4000)   NULL
,  [reportperiod_value]  nvarchar(100)   NULL
,  [riskeuro]  decimal(18,0)   NULL
,  [riskpercent]  decimal(18,2)   NULL
,  [scopeofworkvanoord]  nvarchar(4000)   NULL
,  [setautonumber]  int   NULL
,  [setautonumber_value]  nvarchar(4000)   NULL
,  [sitesupervisioncostseuro]  decimal(18,0)   NULL
,  [sitesupervisioncostspercent]  decimal(18,2)   NULL
,  [specificinvestmenteuro]  decimal(18,0)   NULL
,  [specificinvestmentpercent]  decimal(18,2)   NULL
,  [stagegate]  int   NULL
,  [stagegate_value]  nvarchar(4000)   NULL
,  [stagegatecopy]  int   NULL
,  [stagegatecopy_value]  nvarchar(4000)   NULL
,  [stagegatesnapshot]  int   NULL
,  [stagegatesnapshot_value]  nvarchar(4000)   NULL
,  [subareaid]  nvarchar(36)   NULL
,  [subareaid_value]  nvarchar(100)   NULL
,  [substatusreason]  int   NULL
,  [substatusreason_value]  nvarchar(4000)   NULL
,  [tenderdate]  date   NULL
,  [tenderenddate]  date   NULL
,  [tendersubmissionplace]  nvarchar(100)   NULL
,  [tendertype]  int   NULL
,  [tendertype_value]  nvarchar(4000)   NULL
,  [tendervalidity]  int   NULL
,  [tmpapprovalinitiator_value]  nvarchar(200)   NULL
,  [tmpnonstandardprojectsnapshot_value]  nvarchar(200)   NULL
,  [tomobdemob]  nvarchar(500)   NULL
,  [totalcontractvalueeuro]  decimal(18,0)   NULL
,  [totalcontractvaluetender_currency]  decimal(18,0)   NULL
,  [totalcontractvaluetender_currency_base]  decimal(18,0)   NULL
,  [totaleuro]  decimal(18,0)   NULL
,  [totalpercent]  decimal(18,2)   NULL
,  [typeofcontract]  int   NULL
,  [typeofcontract_value]  nvarchar(4000)   NULL
,  [valueofsubcontractseuro]  decimal(18,0)   NULL
,  [valueofsubcontractspercent]  decimal(18,2)   NULL
,  [valueoftotalworksvoparteuro]  decimal(18,0)   NULL
,  [valueoftotalworksvopartpercent]  decimal(18,2)   NULL
,  [vanoordentityid]  nvarchar(36)   NULL
,  [vanoordentityid_value]  nvarchar(100)   NULL
,  [vanoordsubmittingactingas]  int   NULL
,  [vanoordsubmittingactingas_value]  nvarchar(4000)   NULL
,  [vobusinessunitid]  nvarchar(36)   NULL
,  [vobusinessunitid_value]  nvarchar(100)   NULL
,  [voshareineuro]  decimal(18,0)   NULL
,  [vosharepercent]  decimal(18,2)   NULL
,  [withholdingtaxeuro]  decimal(18,0)   NULL
,  [withholdingtaxpercent]  decimal(18,2)   NULL
,  [workingcapitaleuro]  decimal(18,0)   NULL
,  [year]  int   NULL
,  [year_value]  nvarchar(4000)   NULL
,  [transactioncurrencyid_value]  nvarchar(100)   NULL
,  [createdby_value]  nvarchar(200)   NULL
,  [createdon]  datetime   NULL
,  [createdonbehalfby_value]  nvarchar(200)   NULL
,  [modifiedby_value]  nvarchar(200)   NULL
,  [modifiedon]  datetime   NULL
,  [modifiedonbehalfby_value]  nvarchar(200)   NULL
,  [ownerid_value]  nvarchar(200)   NULL
,  [statecode]  int   NULL
,  [statecode_value]  nvarchar(4000)   NULL
,  [statuscode]  int   NULL
,  [statuscode_value]  nvarchar(4000)   NULL
,  [timezoneruleversionnumber]  int   NULL
,  [versionnumber] BIGINT NULL,
    [Hash] VARBINARY(8000) NOT NULL,
    [ProcessRunID] UNIQUEIDENTIFIER NOT NULL
, CONSTRAINT [PK_processed.dyn_nonstandardproject] PRIMARY KEY CLUSTERED ([id] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100, DATA_COMPRESSION = PAGE)
);
GO

GO

exec sys.sp_addextendedproperty @name=N'Table Name', @value=N'dyn_nonstandardproject', @level0type=N'SCHEMA', @level0name=processed, @level1type=N'TABLE', @level1name=dyn_nonstandardproject
GO
exec sys.sp_addextendedproperty @name=N'Table Type', @value=N'Fact', @level0type=N'SCHEMA', @level0name=processed, @level1type=N'TABLE', @level1name=dyn_nonstandardproject
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'nonstandardproject', @level0type=N'SCHEMA', @level0name=processed, @level1type=N'TABLE', @level1name=dyn_nonstandardproject
GO
exec sys.sp_addextendedproperty @name=N'Database Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=processed, @level1type=N'TABLE', @level1name=dyn_nonstandardproject
GO
GO

exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'Primary key', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'id'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'valid_from', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'Valid_to', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'indicator active', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'Application ID', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'AK_nonstandardproject'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'GUID not used', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mainnonstandardprojectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Primary key', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'id'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Application id, unique identifier source', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'AK_nonstandardproject'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Exchange rate for the currency associated with the entity with respect to the base currency.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'exchangerate1'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Unique identifier for Time registration associated with Project.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'activetimeregistrationid'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Field used for the purpose of matching the Status Reason of the related Approval Request to the Project Snapshot as well.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'approvalstatus'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Field for the purpose of Non Standard Project reporting. Allows for differentiating between the latest version of a Stage Gate 2C Non Standard Project Snapshot and a revised record.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'approvalstatussg2c'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Division of the various Dredging area''s', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'(Expected) contract award date from Client / Main contractor', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'awarddateexpected'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Unique Award Summary Number', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'awardsummarynumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'If available, insert the budget the Employer has allocated for this project; expressed in Euro. If the price is not known, enter the value of -1 to express the value of Unknown', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'budgetexpectedpricelevelclienteuro';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Automated calculation: the sum of the "D&I" and "profit/loss" values inserted; expressed in Euro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'cashflowarpleuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Automated calculation; based on value (in Euro) calculated', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'cashflowarplpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Specify which type of contract conditions is used', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'contractconditions'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Country where the project will be executed', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'countryid'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Insert the remaining value of any Van Oord specific investment(s)  for this particular project once the project is completed; expressed in Euro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'depreciationinvestmenteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Automated calculation; based on value (in Euro) inserted', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'depreciationinvestmentpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'State if VO has design responsibility Yes or No', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'designresponsibilityyn'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Duration of contract covering preparation, execution and close out', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'durationofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Insert your educated guess on what the price of the competition would be; expressed in Euro. If the price is not known, enter the value of -1 to express the value of Unknown.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'expectedpricelevelcompetitioneuro';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'(Expected) start of work for VO''s scope of work (preparation, execution)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'expectedstartofwork'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Specify the form of Contract: such as Design and Construct, EPIC or Construct only, etc', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'formofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Select the type of tender such as Private, Public, Restricted etc', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'formoftender'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'State the name of the location from where the equipment is mobilised at the start of the project', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'frommobdemob'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Name of the project which is used by Client / Company', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'fullclientprojectname'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Insert the value of inflation applicable to this project; expressed in Euro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'inflationeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Automated calculation; based on value (in Euro) inserted', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'inflationpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Latitude degrees', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'latitudedegrees'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Latitude in degrees, minutes, seconds.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'latitudedms'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Latitude in seconds', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'latitudeseconds'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Insert the value of any local taxes (except withholding tax) associated with this project ("local" in this context relates to "outside of the Netherlands"); expressed in Euro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'localtaxeseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Automated calculation; based on value (in Euro) inserted', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'localtaxespercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Location where the project will be executed, can be: city, river, sea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'location'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'List the longitude, or show location on map (longitude then automatic)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitudedegrees'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Longitude in degrees, minutes, seconds.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitudedms'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Longitude in minutes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitudeminutes'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Longitude in seconds', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitudeseconds'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Status of a ''Non Standard Project: Mackley'' to define whether the cumulative amounts for reporting are qualified as Awarded or Submitted.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mackleystatus'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Insert the value of the depreciation and interest ("A+r") amount related to Van Oord''s equipment deployment; expressed in Euro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mainequipmentareuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Automated calculation; based on value (in Euro) inserted', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mainequipmentarpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Unique identifier for Non Standard Project associated with Non Standard Project.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mainnonstandardprojectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Indication of market drivers (Maritime Transport, Urbanisation, Energy, Tourism or Environmental) concerning the origin of this project', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'marketdrivers'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Insert the maximum financing value based in Euro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'maxfinancingeur'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Automated calculation; based on value (in Euro) inserted', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'maxfinancingpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Insert the value of the mobilisation, installation, demobilisation and site reintatement costs associated with this project; expressed in Euro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mobdemobeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Automated calculation; based on value (in Euro) inserted', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mobdemobpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Name of the project which will be used.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'negotiatecomplete'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Substantiation on Negative (historic) Media Attention', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'negotiatecomplete_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'On hold yes or no', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'onhold'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Insert the value of the "general cost" ("AK") portion related to the works under the umbrella of Van Oord; expressed in Euro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'overheadexpenseseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Automated calculation; based on value (in Euro) inserted', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'overheadexpensespercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Define the period for reporting purposes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'period'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Indicate if a Pre Qualifiation process is applicable', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'pq'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Provide remarks if applicable', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'pqremarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'This field facilitates business process flow stages without any steps.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'processnostepfield'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Insert the value of profit / loss portion related to the works under the umbrella of Van Oord; expressed in Euro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'profitlosseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Automated calculation; based on value (in Euro) inserted', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'profitlosspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Provide a brief description of the project to be executed.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectdescription'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'List of Workflow Acquisition / Tendering or Realisation', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectphase'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Specify date for Project Preparation Meeting', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectpreparationmeeting'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Insert the value of purchased items that are executed under the umbrella of Van Oord; expressed in Euro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'purchaseeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Automated calculation; based on value (in Euro) inserted', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'purchasepercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Insert the value of the remaining portion related to the works under the umbrella of Van Oord (such as costs for agent, bonds, financing, etc.) ; expressed in Euro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'remainingcostseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Automated calculation; based on value (in Euro) inserted', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'remainingcostspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'State any comments that you may have regaring the rough estimate figure provided', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'remarksroughestimate'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Insert the value of the risk allowance portion related to the works under the umbrella of Van Oord; expressed in Euro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'riskeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Automated calculation; based on value (in Euro) inserted', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'riskpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'List a more detailed scope of work description, like activity and proposed type of equipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'scopeofworkvanoord'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Insert the value of the (Van Oord) site supervision portion related to the works under the umbrella of Van Oord; expressed in Euro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'sitesupervisioncostseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Automated calculation; based on value (in Euro) inserted', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'sitesupervisioncostspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Insert the value of any Van Oord specific investment(s)  for this particular project; expressed in Euro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'specificinvestmenteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Automated calculation; based on value (in Euro) inserted', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'specificinvestmentpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Calculated field in which the correct stage gate is being calculated based upon the status reason and the sub phase.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'stagegate'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Used to store stage gate for workflow', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'stagegatecopy'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Division within the separate area''s and productgroups inside Offshore', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'subareaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'List of various Subphase status', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'substatusreason'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Date of tender submission', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Date when the tendervalidity expires', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tenderenddate'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'State the place where the tender need to be submitted', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tendersubmissionplace'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Select type of Tender: Prospect (early indication), Budget or Tender', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tendertype'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'State the validity of the tender', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tendervalidity'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'State the name of the location to where the equipment is demobilised upon completion of the project', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tomobdemob'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Insert the total value of the contract in Euro (in case an offer is by a JV or consortium in which Van Oord participates insert the contract value offered by the JV or consortium)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'totalcontractvalueeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Insert the value in the amount of the tender currency', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'totalcontractvaluetender_currency'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Value of the Total Contract Value in base currency.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'totalcontractvaluetender_currency_base'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Insert the value of the contract for which Van Oord is responsible in Euro (this value includes any amounts associated with subcontractors and / or suppliers that work under the umbrella of Van Oord)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'totaleuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Automated calculation; based on value (in Euro) inserted', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'totalpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Specify the type of contract with respect to cost: Lumpsum, unit rate, budget', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'typeofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Insert the value of sub-contract works that are executed under the umbrella of Van Oord; expressed in Euro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'valueofsubcontractseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Automated calculation; based on value (in Euro) inserted', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'valueofsubcontractspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Insert the netto value of the works that are executed by Van Oord themself; expressed in Euro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'valueoftotalworksvoparteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Automated calculation; based on value (in Euro) inserted', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'valueoftotalworksvopartpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Specify the Legal entity which will be used for this tender by VO', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vanoordentityid'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'State the role of Van Oord: Maincontractor or Subcontractor', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vanoordsubmittingactingas'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Entity for separate VO''s business: Offshore, Offshore Wind Parks, Wicks, Paans', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vobusinessunitid'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Insert the value of the contract for which Van Oord is responsible in Euro (this value includes any amounts associated with subcontractors and / or suppliers that work under the umbrella of Van Oord)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'voshareineuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Calculated automatically as the ratio between "VO Share" and "Total Contract Value"', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vosharepercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'List the value of Withholding Tax', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'withholdingtaxeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Insert the value of the local withholding tax associated with this project ("local" in this context relates to "outside of the Netherlands"); expressed in Euro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'withholdingtaxpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Insert the value of Van Oord''s maximum financial exposure for any given month during project execution as derived from the project "cash flow forecast"', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'workingcapitaleuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'createdonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'modifiedonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'timezoneruleversionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'id'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2023-04-20', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2023-04-25', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FFF6A5DD-5D9A-4EE8-A7DF-3ABE71AA1410', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'AK_nonstandardproject'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'MCK2023 - 9  ', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zuidersluis IJmuiden', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'10000000000', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'exchangerate1'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FFE2A6E0-E04D-EC11-8C62-0022487FB16D', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'activetimeregistrationid'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zuidersluis IJmuiden - Copy', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'activetimeregistrationid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000006', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'additionalreason'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Type of Work', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'additionalreason_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'alternatekeyperiod'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Submitted', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'alternatekeystatus'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Tender', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'alternatekeytendertype'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2023', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'alternatekeyyear'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'anonymizedata'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'No', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'anonymizedata_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Werknummer voor verhuur materieel en', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'approvalinitiatorremarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000001', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'approvalstatus'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Rejected', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'approvalstatus_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000001', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'approvalstatussg2c'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Revised', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'approvalstatussg2c_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'approvalworkflowinprogress'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Yes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'approvalworkflowinprogress_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FA498CA7-90F8-E411-8109-C4346BACCE18', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'WICKS', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'areaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'07-04-2023', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'awarddateexpected'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Default', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'awardnumberid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'https://vanoord01', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'awardsummaryinstanceurl'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2023 - 9 ', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'awardsummarynumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'ff908fbe-064c-4ea8-8694-805a106e5dc4', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'awardsummaryprojectsnapshoturl'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'https://vanoord01.crm4.dynamics.com/', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'awardsummaryreportlink'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'bingmapzoomlevel'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'40000', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'budgetexpectedpricelevelclienteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'90384', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'cashflowarpleuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'55.69', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'cashflowarplpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'commercialresponsibleid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000011', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'contractconditions'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'UAV GC', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'contractconditions_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'F6C2BBF8-90F8-E411-810E-C4346BACCC0C', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'countryid'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'United Kingdom', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'countryid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'depreciationinvestmenteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0.00', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'depreciationinvestmentpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'designresponsibilityyn'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Yes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'designresponsibilityyn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'85.0', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'durationofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0.890', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'exchangerate2'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'250000', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'expectedpricelevelcompetitioneuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'02-07-2023', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'expectedstartofwork'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000019', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'formofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'VO conditions', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'formofcontract_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000003', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'formoftender'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Restricted', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'formoftender_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Tilbury', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'frommobdemob'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zuydoever Loosdrecht', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'fullclientprojectname'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'inflationeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0.00', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'inflationpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'896730', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'latitude'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'8', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'latitudedegrees'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'60°23''13"N', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'latitudedms'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'7', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'latitudeminutes'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000000', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'atitudenorthsouth'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'North', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'latitudenorthsouth_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'latitudeseconds'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'localtaxeseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0.00', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'localtaxespercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zwijndrecht', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'location'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'982640', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitude'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitudedegrees'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'09°49''35"E', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitudedms'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000001', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitudeeastwest'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'West', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitudeeastwest_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitudeminutes'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitudeseconds'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Default', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mackleyautonumber_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000001', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mackleystatus'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Submitted', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mackleystatus_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'8600', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mainequipmentareuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'5.60', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mainequipmentarpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FF280F56-9887-4FEE-94D2-AAB885EA9912', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mainnonstandardprojectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zuidersluis IJmuiden', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mainnonstandardprojectid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000004', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'marketdrivers'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Urbanisation', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'marketdrivers_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'maxfinancingeur'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0.00', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'maxfinancingpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9814', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mobdemobeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'5.07', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mobdemobpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'negotiatecomplete'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'No', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'negotiatecomplete_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'WID', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'nonstandardid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'nonstandardprojectsnapshot'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Yes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'nonstandardprojectsnapshot_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'-1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'onhold'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Yes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'onhold_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'onholdreason'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Project Cancelled', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'onholdreason_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9701', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'overheadexpenseseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9.00', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'overheadexpensespercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000012', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'period'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'period_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'-1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'pq'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Yes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'pq_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Prequalified', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'pqremarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'preparecomplete'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'No', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'preparecomplete_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'processnostepfield'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'No', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'processnostepfield_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000003', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'productgroupsnl'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Infra Land', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'productgroupsnl_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'807', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'profitlosseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'5.00', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'profitlosspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zandhandel', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectdescription'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FF3F1719-F5CA-ED11-B597-6045BD8C9EFE', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectgeneral'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zuidersluis IJmuiden', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectgeneral_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000002', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectphase'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Tendering', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectphase_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'29-01-2023', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectpreparationmeeting'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'31-03-2023', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectreportdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'92673', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'purchaseeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'8.09', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'purchasepercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'71071', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'remainingcostseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'5.54', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'remainingcostspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Via Non Standard Project aangemaakt,', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'remarksroughestimate'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2023-3', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'reportperiod_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'802', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'riskeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'6.53', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'riskpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Verwijderen van een vaste steiger in', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'scopeofworkvanoord'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'-1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'setautonumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Yes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'setautonumber_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9056', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'sitesupervisioncostseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9.88', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'sitesupervisioncostspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'specificinvestmenteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0.00', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'specificinvestmentpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'6', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'stagegate'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Award', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'stagegate_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'6', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'stagegatecopy'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Award', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'stagegatecopy_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'6', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'stagegatesnapshot'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Award', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'stagegatesnapshot_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'D4820AA8-91F8-E411-8109-C4346BACCE18', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'subareaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'WICKS', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'subareaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000020', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'substatusreason'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Register', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'substatusreason_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'24-04-2023', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'29-04-2023', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tenderenddate'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Waddinxveen', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tendersubmissionplace'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000002', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tendertype'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Tender', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tendertype_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'90', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tendervalidity'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tmpapprovalinitiator_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zuidersluis IJmuiden', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tmpnonstandardprojectsnapshot_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Unknown', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tomobdemob'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9993', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'totalcontractvalueeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'97420', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'totalcontractvaluetender_currency'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'91554', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'totalcontractvaluetender_currency_base'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9993', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'totaleuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100.00', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'totalpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000002', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'typeofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Unitrates', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'typeofcontract_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9000', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'valueofsubcontractseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'8.47', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'valueofsubcontractspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9993', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'valueoftotalworksvoparteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'92.00', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'valueoftotalworksvopartpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'E2D932B6-A9F8-E411-810A-C4346BACBCC0', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vanoordentityid'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Wicks B.V.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vanoordentityid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000003', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vanoordsubmittingactingas'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Sub Contractor', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vanoordsubmittingactingas_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'A63D9A42-8922-EC11-B6E6-6045BD887A95', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vobusinessunitid'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Netherlands', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vobusinessunitid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9993', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'voshareineuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'66.82', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vosharepercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'withholdingtaxeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0.00', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'withholdingtaxpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'78090', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'workingcapitaleuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000008', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'year'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2023', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'year_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'GBP', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'transactioncurrencyid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Sep 30 2022  9:49AM', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'createdonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Mar 31 2023  9:46AM', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'modifiedonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Inactive', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Unsuccessful Tender', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'42', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'timezoneruleversionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'152171308', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'id'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'AK_nonstandardproject'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'exchangerate1'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'activetimeregistrationid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'activetimeregistrationid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'additionalreason'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'additionalreason_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'alternatekeyperiod'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'alternatekeystatus'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'alternatekeytendertype'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'alternatekeyyear'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'anonymizedata'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'anonymizedata_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'approvalinitiatorremarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'approvalstatus'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'approvalstatus_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'approvalstatussg2c'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'approvalstatussg2c_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'approvalworkflowinprogress'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'approvalworkflowinprogress_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'areaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'awarddateexpected'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'awardnumberid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'awardsummaryinstanceurl'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'awardsummarynumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'awardsummaryprojectsnapshoturl'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'awardsummaryreportlink'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'bingmapzoomlevel'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'budgetexpectedpricelevelclienteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'cashflowarpleuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'cashflowarplpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'commercialresponsibleid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'contractconditions'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'contractconditions_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'countryid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'countryid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'depreciationinvestmenteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'depreciationinvestmentpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'designresponsibilityyn'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'designresponsibilityyn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'durationofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'exchangerate2'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'expectedpricelevelcompetitioneuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'expectedstartofwork'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'formofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'formofcontract_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'formoftender'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'formoftender_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'frommobdemob'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'fullclientprojectname'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'inflationeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'inflationpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'latitude'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'latitudedegrees'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'latitudedms'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'latitudeminutes'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'atitudenorthsouth'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'latitudenorthsouth_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'latitudeseconds'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'localtaxeseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'localtaxespercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'location'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitude'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitudedegrees'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitudedms'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitudeeastwest'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitudeeastwest_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitudeminutes'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitudeseconds'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mackleyautonumber_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mackleystatus'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mackleystatus_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mainequipmentareuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mainequipmentarpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mainnonstandardprojectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mainnonstandardprojectid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'marketdrivers'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'marketdrivers_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'maxfinancingeur'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'maxfinancingpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mobdemobeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mobdemobpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'negotiatecomplete'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'negotiatecomplete_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'nonstandardid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'nonstandardprojectsnapshot'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'nonstandardprojectsnapshot_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'onhold'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'onhold_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'onholdreason'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'onholdreason_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'overheadexpenseseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'overheadexpensespercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'period'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'period_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'pq'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'pq_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'pqremarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'preparecomplete'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'preparecomplete_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'processnostepfield'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'processnostepfield_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'productgroupsnl'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'productgroupsnl_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'profitlosseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'profitlosspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectdescription'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectgeneral'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectgeneral_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectphase'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectphase_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectpreparationmeeting'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectreportdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'purchaseeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'purchasepercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'remainingcostseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'remainingcostspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'remarksroughestimate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'reportperiod_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'riskeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'riskpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'scopeofworkvanoord'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'setautonumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'setautonumber_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'sitesupervisioncostseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'sitesupervisioncostspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'specificinvestmenteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'specificinvestmentpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'stagegate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'stagegate_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'stagegatecopy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'stagegatecopy_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'stagegatesnapshot'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'stagegatesnapshot_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'subareaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'subareaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'substatusreason'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'substatusreason_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tenderenddate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tendersubmissionplace'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tendertype'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tendertype_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tendervalidity'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tmpapprovalinitiator_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tmpnonstandardprojectsnapshot_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tomobdemob'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'totalcontractvalueeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'totalcontractvaluetender_currency'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'totalcontractvaluetender_currency_base'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'totaleuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'totalpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'typeofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'typeofcontract_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'valueofsubcontractseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'valueofsubcontractspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'valueoftotalworksvoparteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'valueoftotalworksvopartpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vanoordentityid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vanoordentityid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vanoordsubmittingactingas'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vanoordsubmittingactingas_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vobusinessunitid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vobusinessunitid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'voshareineuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vosharepercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'withholdingtaxeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'withholdingtaxpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'workingcapitaleuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'year'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'year_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'transactioncurrencyid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'createdonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'modifiedonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'timezoneruleversionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'AK_nonstandardproject'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'exchangerate1'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'activetimeregistrationid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'activetimeregistrationid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'additionalreason'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'additionalreason_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'alternatekeyperiod'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'alternatekeystatus'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'alternatekeytendertype'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'alternatekeyyear'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'anonymizedata'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'anonymizedata_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'approvalinitiatorremarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'approvalstatus'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'approvalstatus_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'approvalstatussg2c'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'approvalstatussg2c_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'approvalworkflowinprogress'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'approvalworkflowinprogress_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'areaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'awarddateexpected'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'awardnumberid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'awardsummaryinstanceurl'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'awardsummarynumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'awardsummaryprojectsnapshoturl'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'awardsummaryreportlink'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'bingmapzoomlevel'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'budgetexpectedpricelevelclienteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'cashflowarpleuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'cashflowarplpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'commercialresponsibleid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'contractconditions'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'contractconditions_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'countryid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'countryid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'depreciationinvestmenteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'depreciationinvestmentpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'designresponsibilityyn'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'designresponsibilityyn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'durationofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'exchangerate2'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'expectedpricelevelcompetitioneuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'expectedstartofwork'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'formofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'formofcontract_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'formoftender'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'formoftender_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'frommobdemob'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'fullclientprojectname'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'inflationeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'inflationpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'latitude'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'latitudedegrees'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'latitudedms'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'latitudeminutes'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'atitudenorthsouth'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'latitudenorthsouth_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'latitudeseconds'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'localtaxeseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'localtaxespercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'location'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitude'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitudedegrees'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitudedms'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitudeeastwest'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitudeeastwest_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitudeminutes'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitudeseconds'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mackleyautonumber_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mackleystatus'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mackleystatus_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mainequipmentareuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mainequipmentarpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mainnonstandardprojectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mainnonstandardprojectid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'marketdrivers'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'marketdrivers_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'maxfinancingeur'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'maxfinancingpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mobdemobeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mobdemobpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'negotiatecomplete'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'negotiatecomplete_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'nonstandardid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'nonstandardprojectsnapshot'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'nonstandardprojectsnapshot_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'onhold'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'onhold_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'onholdreason'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'onholdreason_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'overheadexpenseseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'overheadexpensespercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'period'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'period_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'pq'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'pq_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'pqremarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'preparecomplete'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'preparecomplete_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'processnostepfield'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'processnostepfield_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'productgroupsnl'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'productgroupsnl_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'profitlosseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'profitlosspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectdescription'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectgeneral'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectgeneral_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectphase'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectphase_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectpreparationmeeting'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectreportdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'purchaseeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'purchasepercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'remainingcostseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'remainingcostspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'remarksroughestimate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'reportperiod_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'riskeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'riskpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'scopeofworkvanoord'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'setautonumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'setautonumber_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'sitesupervisioncostseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'sitesupervisioncostspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'specificinvestmenteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'specificinvestmentpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'stagegate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'stagegate_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'stagegatecopy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'stagegatecopy_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'stagegatesnapshot'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'stagegatesnapshot_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'subareaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'subareaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'substatusreason'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'substatusreason_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tenderenddate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tendersubmissionplace'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tendertype'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tendertype_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tendervalidity'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tmpapprovalinitiator_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tmpnonstandardprojectsnapshot_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tomobdemob'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'totalcontractvalueeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'totalcontractvaluetender_currency'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'totalcontractvaluetender_currency_base'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'totaleuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'totalpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'typeofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'typeofcontract_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'valueofsubcontractseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'valueofsubcontractspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'valueoftotalworksvoparteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'valueoftotalworksvopartpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vanoordentityid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vanoordentityid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vanoordsubmittingactingas'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vanoordsubmittingactingas_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vobusinessunitid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vobusinessunitid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'voshareineuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vosharepercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'withholdingtaxeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'withholdingtaxpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'workingcapitaleuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'year'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'year_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'transactioncurrencyid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'createdonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'modifiedonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'timezoneruleversionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'AK_nonstandardproject'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'exchangerate1'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'activetimeregistrationid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'activetimeregistrationid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'additionalreason'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'additionalreason_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'alternatekeyperiod'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'alternatekeystatus'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'alternatekeytendertype'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'alternatekeyyear'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'anonymizedata'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'anonymizedata_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'approvalinitiatorremarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'approvalstatus'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'approvalstatus_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'approvalstatussg2c'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'approvalstatussg2c_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'approvalworkflowinprogress'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'approvalworkflowinprogress_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'areaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'awarddateexpected'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'awardnumberid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'awardsummaryinstanceurl'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'awardsummarynumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'awardsummaryprojectsnapshoturl'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'awardsummaryreportlink'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'bingmapzoomlevel'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'budgetexpectedpricelevelclienteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'cashflowarpleuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'cashflowarplpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'commercialresponsibleid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'contractconditions'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'contractconditions_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'countryid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'countryid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'depreciationinvestmenteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'depreciationinvestmentpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'designresponsibilityyn'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'designresponsibilityyn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'durationofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'exchangerate2'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'expectedpricelevelcompetitioneuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'expectedstartofwork'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'formofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'formofcontract_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'formoftender'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'formoftender_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'frommobdemob'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'fullclientprojectname'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'inflationeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'inflationpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'latitude'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'latitudedegrees'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'latitudedms'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'latitudeminutes'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'atitudenorthsouth'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'latitudenorthsouth_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'latitudeseconds'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'localtaxeseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'localtaxespercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'location'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitude'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitudedegrees'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitudedms'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitudeeastwest'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitudeeastwest_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitudeminutes'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitudeseconds'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mackleyautonumber_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mackleystatus'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mackleystatus_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mainequipmentareuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mainequipmentarpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mainnonstandardprojectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mainnonstandardprojectid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'marketdrivers'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'marketdrivers_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'maxfinancingeur'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'maxfinancingpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mobdemobeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mobdemobpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'negotiatecomplete'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'negotiatecomplete_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'nonstandardid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'nonstandardprojectsnapshot'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'nonstandardprojectsnapshot_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'onhold'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'onhold_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'onholdreason'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'onholdreason_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'overheadexpenseseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'overheadexpensespercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'period'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'period_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'pq'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'pq_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'pqremarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'preparecomplete'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'preparecomplete_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'processnostepfield'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'processnostepfield_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'productgroupsnl'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'productgroupsnl_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'profitlosseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'profitlosspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectdescription'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectgeneral'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectgeneral_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectphase'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectphase_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectpreparationmeeting'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectreportdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'purchaseeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'purchasepercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'remainingcostseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'remainingcostspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'remarksroughestimate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'reportperiod_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'riskeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'riskpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'scopeofworkvanoord'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'setautonumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'setautonumber_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'sitesupervisioncostseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'sitesupervisioncostspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'specificinvestmenteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'specificinvestmentpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'stagegate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'stagegate_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'stagegatecopy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'stagegatecopy_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'stagegatesnapshot'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'stagegatesnapshot_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'subareaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'subareaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'substatusreason'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'substatusreason_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tenderenddate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tendersubmissionplace'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tendertype'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tendertype_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tendervalidity'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tmpapprovalinitiator_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tmpnonstandardprojectsnapshot_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tomobdemob'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'totalcontractvalueeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'totalcontractvaluetender_currency'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'totalcontractvaluetender_currency_base'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'totaleuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'totalpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'typeofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'typeofcontract_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'valueofsubcontractseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'valueofsubcontractspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'valueoftotalworksvoparteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'valueoftotalworksvopartpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vanoordentityid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vanoordentityid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vanoordsubmittingactingas'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vanoordsubmittingactingas_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vobusinessunitid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vobusinessunitid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'voshareineuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vosharepercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'withholdingtaxeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'withholdingtaxpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'workingcapitaleuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'year'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'year_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'transactioncurrencyid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'createdonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'modifiedonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'timezoneruleversionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_nonstandardprojectid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'AK_nonstandardproject'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_projectnumber', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_name', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'exchangerate', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'exchangerate1'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_activetimeregistrationid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'activetimeregistrationid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_activetimeregistrationid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'activetimeregistrationid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_additionalreason', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'additionalreason'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_additionalreason_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'additionalreason_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_alternatekeyperiod', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'alternatekeyperiod'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_alternatekeystatus', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'alternatekeystatus'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_alternatekeytendertype', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'alternatekeytendertype'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_alternatekeyyear', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'alternatekeyyear'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_anonymizedata', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'anonymizedata'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_anonymizedata_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'anonymizedata_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_approvalinitiatorremarks', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'approvalinitiatorremarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_approvalstatus', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'approvalstatus'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_approvalstatus_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'approvalstatus_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_approvalstatussg2c', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'approvalstatussg2c'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_approvalstatussg2c_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'approvalstatussg2c_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_approvalworkflowinprogress', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'approvalworkflowinprogress'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_approvalworkflowinprogress_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'approvalworkflowinprogress_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_areaid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_areaid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'areaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_awarddateexpected', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'awarddateexpected'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_awardnumberid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'awardnumberid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_awardsummaryinstanceurl', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'awardsummaryinstanceurl'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_awardsummarynumber', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'awardsummarynumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_awardsummaryprojectsnapshoturl', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'awardsummaryprojectsnapshoturl'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_awardsummaryreportlink', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'awardsummaryreportlink'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_bingmapzoomlevel', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'bingmapzoomlevel'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_budgetexpectedpricelevelclienteuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'budgetexpectedpricelevelclienteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_cashflowarpleuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'cashflowarpleuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_cashflowarplpercent', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'cashflowarplpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_commercialresponsibleid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'commercialresponsibleid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_contractconditions', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'contractconditions'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_contractconditions_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'contractconditions_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_countryid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'countryid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_countryid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'countryid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_depreciationinvestmenteuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'depreciationinvestmenteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_depreciationinvestmentpercent', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'depreciationinvestmentpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_designresponsibilityyn', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'designresponsibilityyn'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_designresponsibilityyn_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'designresponsibilityyn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_durationofcontract', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'durationofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_exchangerate', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'exchangerate2'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_expectedpricelevelcompetitioneuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'expectedpricelevelcompetitioneuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_expectedstartofwork', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'expectedstartofwork'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_formofcontract', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'formofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_formofcontract_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'formofcontract_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_formoftender', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'formoftender'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_formoftender_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'formoftender_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_frommobdemob', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'frommobdemob'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_fullclientprojectname', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'fullclientprojectname'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_inflationeuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'inflationeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_inflationpercent', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'inflationpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_latitude', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'latitude'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_latitudedegrees', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'latitudedegrees'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_latitudedms', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'latitudedms'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_latitudeminutes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'latitudeminutes'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_latitudenorthsouth', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'atitudenorthsouth'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_latitudenorthsouth_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'latitudenorthsouth_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_latitudeseconds', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'latitudeseconds'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_localtaxeseuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'localtaxeseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_localtaxespercent', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'localtaxespercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_location', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'location'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_longitude', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitude'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_longitudedegrees', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitudedegrees'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_longitudedms', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitudedms'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_longitudeeastwest', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitudeeastwest'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_longitudeeastwest_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitudeeastwest_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_longitudeminutes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitudeminutes'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_longitudeseconds', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitudeseconds'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_mackleyautonumber_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mackleyautonumber_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_mackleystatus', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mackleystatus'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_mackleystatus_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mackleystatus_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_mainequipmentareuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mainequipmentareuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_mainequipmentarpercent', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mainequipmentarpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_mainnonstandardprojectid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mainnonstandardprojectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_mainnonstandardprojectid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mainnonstandardprojectid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_marketdrivers', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'marketdrivers'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_marketdrivers_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'marketdrivers_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_maxfinancingeur', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'maxfinancingeur'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_maxfinancingpercent', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'maxfinancingpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_mobdemobeuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mobdemobeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_mobdemobpercent', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mobdemobpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_negotiatecomplete', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'negotiatecomplete'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_negotiatecomplete_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'negotiatecomplete_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_nonstandardid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'nonstandardid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_nonstandardprojectsnapshot', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'nonstandardprojectsnapshot'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_nonstandardprojectsnapshot_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'nonstandardprojectsnapshot_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_onhold', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'onhold'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_onhold_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'onhold_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_onholdreason', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'onholdreason'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_onholdreason_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'onholdreason_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_overheadexpenseseuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'overheadexpenseseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_overheadexpensespercent', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'overheadexpensespercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_period', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'period'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_period_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'period_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_pq', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'pq'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_pq_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'pq_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_pqremarks', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'pqremarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_preparecomplete', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'preparecomplete'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_preparecomplete_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'preparecomplete_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_processnostepfield', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'processnostepfield'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_processnostepfield_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'processnostepfield_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_productgroupsnl', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'productgroupsnl'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_productgroupsnl_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'productgroupsnl_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_profitlosseuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'profitlosseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_profitlosspercent', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'profitlosspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_projectdescription', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectdescription'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_projectgeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectgeneral'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_projectgeneral_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectgeneral_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_projectphase', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectphase'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_projectphase_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectphase_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_projectpreparationmeeting', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectpreparationmeeting'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_projectreportdate', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectreportdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_purchaseeuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'purchaseeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_purchasepercent', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'purchasepercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_remainingcostseuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'remainingcostseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_remainingcostspercent', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'remainingcostspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_remarksroughestimate', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'remarksroughestimate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_reportperiod_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'reportperiod_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_riskeuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'riskeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_riskpercent', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'riskpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_scopeofworkvanoord', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'scopeofworkvanoord'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_setautonumber', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'setautonumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_setautonumber_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'setautonumber_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_sitesupervisioncostseuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'sitesupervisioncostseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_sitesupervisioncostspercent', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'sitesupervisioncostspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_specificinvestmenteuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'specificinvestmenteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_specificinvestmentpercent', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'specificinvestmentpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_stagegate', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'stagegate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_stagegate_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'stagegate_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_stagegatecopy', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'stagegatecopy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_stagegatecopy_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'stagegatecopy_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_stagegatesnapshot', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'stagegatesnapshot'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_stagegatesnapshot_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'stagegatesnapshot_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_subareaid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'subareaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_subareaid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'subareaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_substatusreason', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'substatusreason'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_substatusreason_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'substatusreason_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_tenderdate', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_tenderenddate', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tenderenddate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_tendersubmissionplace', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tendersubmissionplace'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_tendertype', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tendertype'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_tendertype_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tendertype_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_tendervalidity', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tendervalidity'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_tmpapprovalinitiator_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tmpapprovalinitiator_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_tmpnonstandardprojectsnapshot_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tmpnonstandardprojectsnapshot_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_tomobdemob', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tomobdemob'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_totalcontractvalueeuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'totalcontractvalueeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_totalcontractvaluetender_currency', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'totalcontractvaluetender_currency'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_totalcontractvaluetender_currency_base', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'totalcontractvaluetender_currency_base'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_totaleuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'totaleuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_totalpercent', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'totalpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_typeofcontract', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'typeofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_typeofcontract_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'typeofcontract_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_valueofsubcontractseuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'valueofsubcontractseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_valueofsubcontractspercent', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'valueofsubcontractspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_valueoftotalworksvoparteuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'valueoftotalworksvoparteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_valueoftotalworksvopartpercent', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'valueoftotalworksvopartpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_vanoordentityid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vanoordentityid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_vanoordentityid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vanoordentityid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_vanoordsubmittingactingas', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vanoordsubmittingactingas'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_vanoordsubmittingactingas_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vanoordsubmittingactingas_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_vobusinessunitid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vobusinessunitid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_vobusinessunitid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vobusinessunitid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_voshareineuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'voshareineuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_vosharepercent', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vosharepercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_withholdingtaxeuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'withholdingtaxeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_withholdingtaxpercent', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'withholdingtaxpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_workingcapitaleuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'workingcapitaleuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_year', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'year'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_year_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'year_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_transactioncurrencyid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'transactioncurrencyid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_createdby_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'createdon', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_createdonbehalfby_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'createdonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_modifiedby_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'modifiedon', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_modifiedonbehalfby_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'modifiedonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_ownerid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'statecode', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_statecode_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'statuscode', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_statuscode_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'timezoneruleversionnumber', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'timezoneruleversionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'versionnumber', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'AK_nonstandardproject'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,10)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'exchangerate1'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'activetimeregistrationid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'activetimeregistrationid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'additionalreason'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'additionalreason_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'alternatekeyperiod'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'alternatekeystatus'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'alternatekeytendertype'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'alternatekeyyear'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'anonymizedata'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'anonymizedata_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'ntext', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'approvalinitiatorremarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'approvalstatus'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'approvalstatus_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'approvalstatussg2c'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'approvalstatussg2c_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'approvalworkflowinprogress'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'approvalworkflowinprogress_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'areaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'date', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'awarddateexpected'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'awardnumberid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'awardsummaryinstanceurl'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'awardsummarynumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'awardsummaryprojectsnapshoturl'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(500)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'awardsummaryreportlink'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'bingmapzoomlevel'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'budgetexpectedpricelevelclienteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'cashflowarpleuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,2)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'cashflowarplpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'commercialresponsibleid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'contractconditions'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'contractconditions_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'countryid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'countryid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'depreciationinvestmenteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,2)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'depreciationinvestmentpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'designresponsibilityyn'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'designresponsibilityyn_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,1)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'durationofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,3)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'exchangerate2'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'expectedpricelevelcompetitioneuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'date', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'expectedstartofwork'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'formofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'formofcontract_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'formoftender'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'formoftender_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(500)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'frommobdemob'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'fullclientprojectname'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'inflationeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,2)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'inflationpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,5)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'latitude'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'latitudedegrees'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(20)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'latitudedms'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'latitudeminutes'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'atitudenorthsouth'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'latitudenorthsouth_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'latitudeseconds'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'localtaxeseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,2)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'localtaxespercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'location'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,5)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitude'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitudedegrees'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(20)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitudedms'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitudeeastwest'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitudeeastwest_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitudeminutes'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitudeseconds'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mackleyautonumber_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mackleystatus'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mackleystatus_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mainequipmentareuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,2)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mainequipmentarpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mainnonstandardprojectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mainnonstandardprojectid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'marketdrivers'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'marketdrivers_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'maxfinancingeur'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,2)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'maxfinancingpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mobdemobeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,2)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mobdemobpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'negotiatecomplete'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'negotiatecomplete_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'nonstandardid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'nonstandardprojectsnapshot'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'nonstandardprojectsnapshot_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'onhold'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'onhold_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'onholdreason'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'onholdreason_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'overheadexpenseseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,2)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'overheadexpensespercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'period'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'period_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'pq'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'pq_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'ntext', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'pqremarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'preparecomplete'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'preparecomplete_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'processnostepfield'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'processnostepfield_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'productgroupsnl'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'productgroupsnl_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'profitlosseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,2)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'profitlosspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'ntext', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectdescription'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectgeneral'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectgeneral_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectphase'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectphase_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'date', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectpreparationmeeting'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'date', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectreportdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'purchaseeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,2)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'purchasepercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'remainingcostseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,2)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'remainingcostspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'ntext', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'remarksroughestimate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'reportperiod_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'riskeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,2)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'riskpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'ntext', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'scopeofworkvanoord'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'setautonumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'setautonumber_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'sitesupervisioncostseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,2)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'sitesupervisioncostspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'specificinvestmenteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,2)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'specificinvestmentpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'stagegate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'stagegate_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'stagegatecopy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'stagegatecopy_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'stagegatesnapshot'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'stagegatesnapshot_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'subareaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'subareaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'substatusreason'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'substatusreason_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'date', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'date', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tenderenddate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tendersubmissionplace'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tendertype'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tendertype_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tendervalidity'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tmpapprovalinitiator_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tmpnonstandardprojectsnapshot_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(500)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'tomobdemob'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'hso_totalcontractvalueeuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'totalcontractvalueeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'hso_totalcontractvaluetender_currency', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'totalcontractvaluetender_currency'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'hso_totalcontractvaluetender_currency_base', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'totalcontractvaluetender_currency_base'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'hso_totaleuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'totaleuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'hso_totalpercent', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'totalpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'typeofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'typeofcontract_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'hso_valueofsubcontractseuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'valueofsubcontractseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'hso_valueofsubcontractspercent', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'valueofsubcontractspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'hso_valueoftotalworksvoparteuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'valueoftotalworksvoparteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'hso_valueoftotalworksvopartpercent', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'valueoftotalworksvopartpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vanoordentityid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vanoordentityid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vanoordsubmittingactingas'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vanoordsubmittingactingas_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vobusinessunitid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vobusinessunitid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'hso_voshareineuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'voshareineuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'hso_vosharepercent', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vosharepercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'hso_withholdingtaxeuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'withholdingtaxeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'hso_withholdingtaxpercent', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'withholdingtaxpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'hso_workingcapitaleuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'workingcapitaleuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'year'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'year_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'transactioncurrencyid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'datetime', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'createdonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'datetime', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'modifiedonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'timezoneruleversionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'bigint', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'AK_nonstandardproject'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'exchangerate1'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'activetimeregistrationid'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'budgetexpectedpricelevelclienteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'cashflowarpleuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'cashflowarplpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'countryid'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'depreciationinvestmenteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'depreciationinvestmentpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'durationofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'exchangerate2'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'expectedpricelevelcompetitioneuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'inflationeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'inflationpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'latitude'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'latitudedegrees'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'latitudeminutes'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'latitudeseconds'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'localtaxeseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'localtaxespercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitude'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitudedegrees'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitudeminutes'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'longitudeseconds'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mainequipmentareuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mainequipmentarpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mainnonstandardprojectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'maxfinancingeur'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'maxfinancingpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mobdemobeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mobdemobpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'overheadexpenseseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'overheadexpensespercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'profitlosseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'profitlosspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectgeneral'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'purchaseeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'purchasepercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'remainingcostseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'remainingcostspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'riskeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'riskpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'sitesupervisioncostseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'sitesupervisioncostspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'specificinvestmenteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'specificinvestmentpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'subareaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'totalcontractvalueeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'totalcontractvaluetender_currency'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'totalcontractvaluetender_currency_base'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'totaleuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'totalpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'valueofsubcontractseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'valueofsubcontractspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'valueoftotalworksvoparteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'valueoftotalworksvopartpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vanoordentityid'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vobusinessunitid'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'voshareineuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vosharepercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'withholdingtaxeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'withholdingtaxpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'workingcapitaleuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Comments', @value=N'refers to EntityTimeRegistration', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'activetimeregistrationid'; 
GO
exec sys.sp_addextendedproperty @name=N'Comments', @value=N'refers to EntityArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Comments', @value=N'refers to EntityCountry', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'countryid'; 
GO
exec sys.sp_addextendedproperty @name=N'Comments', @value=N'refers to nonstandardprojectid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'mainnonstandardprojectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Comments', @value=N'refers to EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'projectgeneral'; 
GO
exec sys.sp_addextendedproperty @name=N'Comments', @value=N'refers to EntitySubArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'subareaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Comments', @value=N'refers to EntityVanOordEntity', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vanoordentityid'; 
GO
exec sys.sp_addextendedproperty @name=N'Comments', @value=N'refers to EntityVOBusinessUnit', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_nonstandardproject', @level2type=N'COLUMN', @level2name=N'vobusinessunitid'; 
GO
GO