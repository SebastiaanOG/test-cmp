CREATE TABLE processed.dyn_projectfinancial (
   [id]  bigint IDENTITY  NOT NULL
,  [dwh_valid_from]  date   NOT NULL
,  [dwh_valid_to]  date   NULL
,  [dwh_active]  bit   NOT NULL
,  [dwh_process_run_id]  uniqueidentifier   NULL
,  [dwh_hash]  varbinary(8000)   NULL
,  [ak_projectfinancial]  nvarchar(36)   NULL
,  [name]  nvarchar(100)   NULL
,  [exchangerate1]  decimal(18,3)   NULL
,  [additionalcoststenderbudget]  decimal(18,0)   NULL
,  [areaid]  nvarchar(36)   NULL
,  [areaid_value]  nvarchar(100)   NULL
,  [budgetexpectedpricelevelclienteuro]  decimal(18,0)   NULL
,  [cashflowdipleuro]  decimal(18,0)   NULL
,  [cashflowdiplpercent]  decimal(18,2)   NULL
,  [depreciationinvestmenteuro]  decimal(18,0)   NULL
,  [depreciationinvestmentpercent]  decimal(18,2)   NULL
,  [exchangerate2]  decimal(18,3)   NULL
,  [expectedpricelevelcompetitioneuro]  decimal(18,0)   NULL
,  [externalstaffcostestimate]  decimal(18,0)   NULL
,  [inflationeuro]  decimal(18,0)   NULL
,  [inflationpercent]  decimal(18,2)   NULL
,  [internalstaffcostestimate]  decimal(18,0)   NULL
,  [localtaxeseuro]  decimal(18,0)   NULL
,  [localtaxespercent]  decimal(18,2)   NULL
,  [mainequipmentdieuro]  decimal(18,0)   NULL
,  [mainequipmentdipercent]  decimal(18,2)   NULL
,  [mainprojectfinancial]  nvarchar(36)   NULL
,  [mainprojectfinancial_value]  nvarchar(100)   NULL
,  [maxfinancingeur]  decimal(18,0)   NULL
,  [maxfinancingpercent]  decimal(18,2)   NULL
,  [mobdemobeuro]  decimal(18,0)   NULL
,  [mobdemobpercent]  decimal(18,2)   NULL
,  [outofpocketcosts]  decimal(18,0)   NULL
,  [overheadexpenseseuro]  decimal(18,0)   NULL
,  [overheadexpensespercent]  decimal(18,2)   NULL
,  [profitlosseuro]  decimal(18,0)   NULL
,  [profitlosspercent]  decimal(18,2)   NULL
,  [project]  nvarchar(36)   NULL
,  [project_value]  nvarchar(200)   NULL
,  [purchaseeuro]  decimal(18,0)   NULL
,  [purchasepercent]  decimal(18,2)   NULL
,  [remainingcostseuro]  decimal(18,0)   NULL
,  [remainingcostspercent]  decimal(18,2)   NULL
,  [remarksroughestimate]  nvarchar(4000)   NULL
,  [riskeuro]  decimal(18,0)   NULL
,  [riskpercent]  decimal(18,2)   NULL
,  [sitesupervisioncostseuro]  decimal(18,0)   NULL
,  [sitesupervisioncostspercent]  decimal(18,2)   NULL
,  [specificinvestmenteuro]  decimal(18,0)   NULL
,  [specificinvestmentpercent]  decimal(18,2)   NULL
,  [tenderbudgetremarks]  nvarchar(4000)   NULL
,  [totalcontractvalueeuro]  decimal(18,0)   NULL
,  [totalcontractvaluetender_currency]  decimal(18,0)   NULL
,  [totalcontractvaluetender_currency_base]  decimal(18,0)   NULL
,  [totalcoststenderbudget]  decimal(18,0)   NULL
,  [totaleurocopy]  decimal(18,0)   NULL
,  [totaleurovanoordshare]  decimal(18,0)   NULL
,  [totalpercentvanoordshare]  decimal(18,2)   NULL
,  [valueofsubcontractseuro]  decimal(18,0)   NULL
,  [valueofsubcontractspercent]  decimal(18,2)   NULL
,  [valueoftotalworksvoparteuro]  decimal(18,0)   NULL
,  [valueoftotalworksvopartpercent]  decimal(18,2)   NULL
,  [voshareineuro]  decimal(18,0)   NULL
,  [vosharepercent]  decimal(18,2)   NULL
,  [withholdingtaxeuro]  decimal(18,0)   NULL
,  [withholdingtaxpercent]  decimal(18,2)   NULL
,  [workingcapital]  decimal(18,0)   NULL
,  [transactioncurrencyid_value]  nvarchar(100)   NULL
,  [createdby_value]  nvarchar(200)   NULL
,  [createdon]  datetime   NULL
,  [createdonbehalfby_value]  nvarchar(200)   NULL
,  [modifiedby_value]  nvarchar(200)   NULL
,  [modifiedon]  datetime   NULL
,  [ownerid_value]  nvarchar(200)   NULL
,  [statecode]  int   NULL
,  [statecode_value]  nvarchar(4000)   NULL
,  [statuscode]  int   NULL
,  [statuscode_value]  nvarchar(4000)   NULL
,  [versionnumber]  bigint   NULL
, CONSTRAINT [PK_processed.dyn_projectfinancial] PRIMARY KEY CLUSTERED ([id] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100, DATA_COMPRESSION = PAGE) ON [DATA])
 ON [DATA]
GO

GO

exec sys.sp_addextendedproperty @name=N'Table Name', @value=N'dyn_projectfinancial', @level0type=N'SCHEMA', @level0name=processed, @level1type=N'TABLE', @level1name=dyn_projectfinancial
GO
exec sys.sp_addextendedproperty @name=N'Table Type', @value=N'Fact', @level0type=N'SCHEMA', @level0name=processed, @level1type=N'TABLE', @level1name=dyn_projectfinancial
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'projectfinancial', @level0type=N'SCHEMA', @level0name=processed, @level1type=N'TABLE', @level1name=dyn_projectfinancial
GO
exec sys.sp_addextendedproperty @name=N'Database Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=processed, @level1type=N'TABLE', @level1name=dyn_projectfinancial
GO
exec sys.sp_addextendedproperty @name=N'Generate Script?', @value=N'N', @level0type=N'SCHEMA', @level0name=processed, @level1type=N'TABLE', @level1name=dyn_projectfinancial
GO
GO

exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'Primary key', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'id'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'valid_from', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'Valid_to', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'indicator active', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dwh_process_run_id', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dwh_hash', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'dwh_hash'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'Application ID', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'ak_projectfinancial'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Primary key', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'id'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'proces run id of the synapse pipeline', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'hash of the columns that will be compared with the staged layer', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'dwh_hash'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Application id, unique identifier source', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'ak_projectfinancial'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'createdonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'id'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2023-04-20', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2023-04-25', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FFF57AF8-D10A-EA11-A811-000D3A2C5614', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0xBF35F538E0E96618230E2FEA1CC000EA', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'dwh_hash'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FFFFA111-AECA-ED11-B597-6045BD895616', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'ak_projectfinancial'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zwolse Hoek Urk', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9520', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'exchangerate1'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'95000', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'additionalcoststenderbudget'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FE498CA7-90F8-E411-8109-C4346BACCE18', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'WICKS', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'areaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'999999999', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'budgetexpectedpricelevelclienteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9999999', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'cashflowdipleuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'99.57', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'cashflowdiplpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'987000', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'depreciationinvestmenteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9.94', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'depreciationinvestmentpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'99000', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'exchangerate2'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'999999999', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'expectedpricelevelcompetitioneuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'975000', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'externalstaffcostestimate'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'999840', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'inflationeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9.66', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'inflationpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'96000', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'internalstaffcostestimate'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'999987', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'localtaxeseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9.51', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'localtaxespercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9996300', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'mainequipmentdieuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9.99', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'mainequipmentdipercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FC25A8D0-93CA-ED11-B597-6045BD895616', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'mainprojectfinancial'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zand fase 4 Nobelhorst Almere', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'mainprojectfinancial_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'99748', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'maxfinancingeur'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'98.36', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'maxfinancingpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9993731', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'mobdemobeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9.98', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'mobdemobpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'975000', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'outofpocketcosts'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9994017', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'overheadexpenseseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9.99', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'overheadexpensespercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'999704', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'profitlosseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'99.98', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'profitlosspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FFFD461A-DD78-E511-8122-C4346BAC7E10', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'project'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zwolse Hoek Urk', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'project_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'999500', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'purchaseeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'97.32', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'purchasepercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'999930', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'remainingcostseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9.98', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'remainingcostspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zie voor meer informatie de inschrij', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'remarksroughestimate'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'99970', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'riskeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9.99', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'riskpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'999293', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'sitesupervisioncostseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9.99', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'sitesupervisioncostspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'993000', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'specificinvestmenteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9.79', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'specificinvestmentpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zie integraal tenderbudget BAVO', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'tenderbudgetremarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'99999', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'totalcontractvalueeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9999293', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'totalcontractvaluetender_currency'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'99984986', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'totalcontractvaluetender_currency_base'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'99885', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'totalcoststenderbudget'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'99999999', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'totaleurocopy'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'99999999', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'totaleurovanoordshare'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100.00', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'totalpercentvanoordshare'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'999903', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'valueofsubcontractseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'99.30', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'valueofsubcontractspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'99999', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'valueoftotalworksvoparteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'99.97', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'valueoftotalworksvopartpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'99999', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'voshareineuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'99.99', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'vosharepercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'99871', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'withholdingtaxeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9.00', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'withholdingtaxpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9992585', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'workingcapital'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'ZAR', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'transactioncurrencyid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Mar 31 2023 12:21PM', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'createdonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Apr 24 2023 10:11AM', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'@VOOW - Offshore Wind - Financial - ', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Inactive', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Unsuccessful Tender', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'153872045', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'id'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived from synapse pipeline', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'dwh_hash'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'ak_projectfinancial'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'exchangerate1'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'additionalcoststenderbudget'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'areaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'budgetexpectedpricelevelclienteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'cashflowdipleuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'cashflowdiplpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'depreciationinvestmenteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'depreciationinvestmentpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'exchangerate2'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'expectedpricelevelcompetitioneuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'externalstaffcostestimate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'inflationeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'inflationpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'internalstaffcostestimate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'localtaxeseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'localtaxespercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'mainequipmentdieuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'mainequipmentdipercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'mainprojectfinancial'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'mainprojectfinancial_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'maxfinancingeur'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'maxfinancingpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'mobdemobeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'mobdemobpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'outofpocketcosts'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'overheadexpenseseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'overheadexpensespercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'profitlosseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'profitlosspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'project'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'project_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'purchaseeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'purchasepercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'remainingcostseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'remainingcostspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'remarksroughestimate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'riskeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'riskpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'sitesupervisioncostseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'sitesupervisioncostspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'specificinvestmenteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'specificinvestmentpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'tenderbudgetremarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'totalcontractvalueeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'totalcontractvaluetender_currency'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'totalcontractvaluetender_currency_base'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'totalcoststenderbudget'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'totaleurocopy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'totaleurovanoordshare'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'totalpercentvanoordshare'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'valueofsubcontractseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'valueofsubcontractspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'valueoftotalworksvoparteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'valueoftotalworksvopartpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'voshareineuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'vosharepercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'withholdingtaxeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'withholdingtaxpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'workingcapital'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'transactioncurrencyid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'createdonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'ak_projectfinancial'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'exchangerate1'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'additionalcoststenderbudget'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'areaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'budgetexpectedpricelevelclienteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'cashflowdipleuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'cashflowdiplpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'depreciationinvestmenteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'depreciationinvestmentpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'exchangerate2'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'expectedpricelevelcompetitioneuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'externalstaffcostestimate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'inflationeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'inflationpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'internalstaffcostestimate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'localtaxeseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'localtaxespercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'mainequipmentdieuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'mainequipmentdipercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'mainprojectfinancial'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'mainprojectfinancial_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'maxfinancingeur'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'maxfinancingpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'mobdemobeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'mobdemobpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'outofpocketcosts'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'overheadexpenseseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'overheadexpensespercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'profitlosseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'profitlosspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'project'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'project_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'purchaseeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'purchasepercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'remainingcostseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'remainingcostspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'remarksroughestimate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'riskeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'riskpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'sitesupervisioncostseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'sitesupervisioncostspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'specificinvestmenteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'specificinvestmentpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'tenderbudgetremarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'totalcontractvalueeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'totalcontractvaluetender_currency'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'totalcontractvaluetender_currency_base'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'totalcoststenderbudget'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'totaleurocopy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'totaleurovanoordshare'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'totalpercentvanoordshare'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'valueofsubcontractseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'valueofsubcontractspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'valueoftotalworksvoparteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'valueoftotalworksvopartpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'voshareineuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'vosharepercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'withholdingtaxeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'withholdingtaxpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'workingcapital'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'transactioncurrencyid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'createdonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'ak_projectfinancial'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'exchangerate1'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'additionalcoststenderbudget'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'areaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'budgetexpectedpricelevelclienteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'cashflowdipleuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'cashflowdiplpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'depreciationinvestmenteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'depreciationinvestmentpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'exchangerate2'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'expectedpricelevelcompetitioneuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'externalstaffcostestimate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'inflationeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'inflationpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'internalstaffcostestimate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'localtaxeseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'localtaxespercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'mainequipmentdieuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'mainequipmentdipercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'mainprojectfinancial'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'mainprojectfinancial_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'maxfinancingeur'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'maxfinancingpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'mobdemobeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'mobdemobpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'outofpocketcosts'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'overheadexpenseseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'overheadexpensespercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'profitlosseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'profitlosspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'project'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'project_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'purchaseeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'purchasepercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'remainingcostseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'remainingcostspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'remarksroughestimate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'riskeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'riskpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'sitesupervisioncostseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'sitesupervisioncostspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'specificinvestmenteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'specificinvestmentpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'tenderbudgetremarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'totalcontractvalueeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'totalcontractvaluetender_currency'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'totalcontractvaluetender_currency_base'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'totalcoststenderbudget'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'totaleurocopy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'totaleurovanoordshare'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'totalpercentvanoordshare'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'valueofsubcontractseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'valueofsubcontractspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'valueoftotalworksvoparteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'valueoftotalworksvopartpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'voshareineuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'vosharepercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'withholdingtaxeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'withholdingtaxpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'workingcapital'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'transactioncurrencyid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'createdonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_projectfinancialid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'ak_projectfinancial'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_name', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'exchangerate', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'exchangerate1'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_additionalcoststenderbudget', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'additionalcoststenderbudget'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_areaid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_areaid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'areaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_budgetexpectedpricelevelclienteuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'budgetexpectedpricelevelclienteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_cashflowdipleuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'cashflowdipleuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_cashflowdiplpercent', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'cashflowdiplpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_depreciationinvestmenteuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'depreciationinvestmenteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_depreciationinvestmentpercent', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'depreciationinvestmentpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_exchangerate', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'exchangerate2'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_expectedpricelevelcompetitioneuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'expectedpricelevelcompetitioneuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_externalstaffcostestimate', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'externalstaffcostestimate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_inflationeuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'inflationeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_inflationpercent', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'inflationpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_internalstaffcostestimate', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'internalstaffcostestimate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_localtaxeseuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'localtaxeseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_localtaxespercent', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'localtaxespercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_mainequipmentdieuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'mainequipmentdieuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_mainequipmentdipercent', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'mainequipmentdipercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_mainprojectfinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'mainprojectfinancial'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_mainprojectfinancial_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'mainprojectfinancial_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_maxfinancingeur', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'maxfinancingeur'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_maxfinancingpercent', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'maxfinancingpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_mobdemobeuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'mobdemobeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_mobdemobpercent', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'mobdemobpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_outofpocketcosts', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'outofpocketcosts'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_overheadexpenseseuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'overheadexpenseseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_overheadexpensespercent', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'overheadexpensespercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_profitlosseuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'profitlosseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_profitlosspercent', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'profitlosspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_project', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'project'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_project_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'project_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_purchaseeuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'purchaseeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_purchasepercent', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'purchasepercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_remainingcostseuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'remainingcostseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_remainingcostspercent', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'remainingcostspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_remarksroughestimate', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'remarksroughestimate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_riskeuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'riskeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_riskpercent', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'riskpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_sitesupervisioncostseuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'sitesupervisioncostseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_sitesupervisioncostspercent', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'sitesupervisioncostspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_specificinvestmenteuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'specificinvestmenteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_specificinvestmentpercent', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'specificinvestmentpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_tenderbudgetremarks', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'tenderbudgetremarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_totalcontractvalueeuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'totalcontractvalueeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_totalcontractvaluetender_currency', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'totalcontractvaluetender_currency'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_totalcontractvaluetender_currency_base', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'totalcontractvaluetender_currency_base'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_totalcoststenderbudget', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'totalcoststenderbudget'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_totaleurocopy', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'totaleurocopy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_totaleurovanoordshare', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'totaleurovanoordshare'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_totalpercentvanoordshare', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'totalpercentvanoordshare'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_valueofsubcontractseuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'valueofsubcontractseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_valueofsubcontractspercent', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'valueofsubcontractspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_valueoftotalworksvoparteuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'valueoftotalworksvoparteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_valueoftotalworksvopartpercent', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'valueoftotalworksvopartpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_voshareineuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'voshareineuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_vosharepercent', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'vosharepercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_withholdingtaxeuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'withholdingtaxeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_withholdingtaxpercent', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'withholdingtaxpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_workingcapital', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'workingcapital'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_transactioncurrencyid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'transactioncurrencyid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_createdby_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'createdon', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_createdonbehalfby_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'createdonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_modifiedby_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'modifiedon', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_ownerid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'statecode', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_statecode_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'statuscode', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_statuscode_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'versionnumber', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'ak_projectfinancial'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,3)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'exchangerate1'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'additionalcoststenderbudget'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'areaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'budgetexpectedpricelevelclienteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'cashflowdipleuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,2)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'cashflowdiplpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'depreciationinvestmenteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,2)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'depreciationinvestmentpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,3)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'exchangerate2'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'expectedpricelevelcompetitioneuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'externalstaffcostestimate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'inflationeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,2)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'inflationpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'internalstaffcostestimate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'localtaxeseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,2)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'localtaxespercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'mainequipmentdieuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,2)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'mainequipmentdipercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'mainprojectfinancial'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'mainprojectfinancial_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'maxfinancingeur'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,2)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'maxfinancingpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'mobdemobeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,2)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'mobdemobpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'outofpocketcosts'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'overheadexpenseseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,2)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'overheadexpensespercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'profitlosseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,2)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'profitlosspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'project'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'project_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'purchaseeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,2)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'purchasepercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'remainingcostseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,2)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'remainingcostspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'ntext', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'remarksroughestimate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'riskeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,2)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'riskpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'sitesupervisioncostseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,2)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'sitesupervisioncostspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'specificinvestmenteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,2)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'specificinvestmentpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'ntext', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'tenderbudgetremarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'totalcontractvalueeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'totalcontractvaluetender_currency'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'totalcontractvaluetender_currency_base'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'totalcoststenderbudget'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'totaleurocopy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'totaleurovanoordshare'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,2)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'totalpercentvanoordshare'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'valueofsubcontractseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,2)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'valueofsubcontractspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'valueoftotalworksvoparteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,2)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'valueoftotalworksvopartpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'voshareineuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,2)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'vosharepercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'withholdingtaxeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,2)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'withholdingtaxpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'workingcapital'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'transactioncurrencyid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'datetime', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'createdonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'datetime', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'bigint', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'ak_projectfinancial'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'exchangerate1'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'additionalcoststenderbudget'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'budgetexpectedpricelevelclienteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'cashflowdipleuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'cashflowdiplpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'depreciationinvestmenteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'depreciationinvestmentpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'exchangerate2'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'expectedpricelevelcompetitioneuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'externalstaffcostestimate'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'inflationeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'inflationpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'internalstaffcostestimate'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'localtaxeseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'localtaxespercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'mainequipmentdieuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'mainequipmentdipercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'mainprojectfinancial'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'maxfinancingeur'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'maxfinancingpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'mobdemobeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'mobdemobpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'outofpocketcosts'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'overheadexpenseseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'overheadexpensespercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'profitlosseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'profitlosspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'project'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'purchaseeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'purchasepercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'remainingcostseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'remainingcostspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'riskeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'riskpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'sitesupervisioncostseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'sitesupervisioncostspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'specificinvestmenteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'specificinvestmentpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'totalcontractvalueeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'totalcontractvaluetender_currency'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'totalcontractvaluetender_currency_base'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'totalcoststenderbudget'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'totaleurocopy'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'totaleurovanoordshare'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'totalpercentvanoordshare'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'valueofsubcontractseuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'valueofsubcontractspercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'valueoftotalworksvoparteuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'valueoftotalworksvopartpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'voshareineuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'vosharepercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'withholdingtaxeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'withholdingtaxpercent'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'workingcapital'; 
GO
exec sys.sp_addextendedproperty @name=N'Comments', @value=N'refers to EntityArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Comments', @value=N'refers to EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectfinancial', @level2type=N'COLUMN', @level2name=N'project'; 
GO
GO
