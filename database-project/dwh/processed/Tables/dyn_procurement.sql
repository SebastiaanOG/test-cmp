﻿CREATE TABLE processed.dyn_procurement (
   [id]  bigint IDENTITY  NOT NULL
,  [dwh_valid_from]  date   NOT NULL
,  [dwh_valid_to]  date   NULL
,  [dwh_active]  bit   NOT NULL
,  [dwh_process_run_id]  uniqueidentifier   NULL
,  [dwh_hash]  varbinary(8000)   NULL
,  [ak_procurement]  nvarchar(36)   NULL
,  [name]  nvarchar(1000)   NULL
,  [areaid]  nvarchar(36)   NULL
,  [areaid_value]  nvarchar(100)   NULL
,  [preawardagreement]  int   NULL
,  [preawardagreement_value]  nvarchar(4000)   NULL
,  [projectfinancialid]  nvarchar(36)   NULL
,  [projectfinancialid_value]  nvarchar(100)   NULL
,  [projectid]  nvarchar(36)   NULL
,  [projectid_value]  nvarchar(200)   NULL
,  [remarks]  nvarchar(4000)   NULL
,  [totalvalueeuro]  decimal(18,2)   NULL
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
,  [versionnumber]  bigint   NULL
, CONSTRAINT [PK_processed.dyn_procurement] PRIMARY KEY CLUSTERED ([id] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100, DATA_COMPRESSION = PAGE))
GO

GO

exec sys.sp_addextendedproperty @name=N'Table Name', @value=N'dyn_procurement', @level0type=N'SCHEMA', @level0name=processed, @level1type=N'TABLE', @level1name=dyn_procurement
GO
exec sys.sp_addextendedproperty @name=N'Table Type', @value=N'Fact', @level0type=N'SCHEMA', @level0name=processed, @level1type=N'TABLE', @level1name=dyn_procurement
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'procurement', @level0type=N'SCHEMA', @level0name=processed, @level1type=N'TABLE', @level1name=dyn_procurement
GO
exec sys.sp_addextendedproperty @name=N'Database Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=processed, @level1type=N'TABLE', @level1name=dyn_procurement
GO
exec sys.sp_addextendedproperty @name=N'Generate Script?', @value=N'N', @level0type=N'SCHEMA', @level0name=processed, @level1type=N'TABLE', @level1name=dyn_procurement
GO
GO

exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'Primary key', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'id'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'valid_from', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'Valid_to', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'indicator active', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dwh_process_run_id', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dwh_hash', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'dwh_hash'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'Application ID', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'ak_procurement'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Primary key', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'id'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'proces run id of the synapse pipeline', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'hash of the columns that will be compared with the staged layer', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'dwh_hash'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Application id, unique identifier source', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'ak_procurement'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Description of the part of the works that needs to be procured separately (e.g. Steel, Cables, Rock, etc.)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Unique identifier for Area associated with Procurement.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Is a procurement contract/subcontract fully negotiated on the moment of signing of the main contract', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'preawardagreement'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Additional remarks', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'remarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Total costprice value of the procured/subcontracted part', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'totalvalueeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'createdonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'modifiedonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'id'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2023-04-20', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2023-04-25', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FFF57AF8-D10A-EA11-A811-000D3A2C5614', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0xBF35F538E0E96618230E2FEA1CC000EA', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'dwh_hash'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FF6270C7-3458-E811-8142-70106FAAB941', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'ak_procurement'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'WP4 Deico system', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FE498CA7-90F8-E411-8109-C4346BACCE18', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Offshore Wind', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'areaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'-1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'preawardagreement'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Yes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'preawardagreement_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FF383574-96CA-ED11-B597-6045BD8958C6', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'projectfinancialid'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zohr Project', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'projectfinancialid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FEEBF14C-918D-E711-810D-70106FA7B0B1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'projectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zohr Project', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'projectid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'ZTT (China) / TKF (NL)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'remarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'984020.00', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'totalvalueeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Sep 22 2016  6:53AM', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'createdonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'SYSTEM', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Oct 22 2015  2:29PM', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'modifiedonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Active', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Active', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'87746037', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'id'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived from synapse pipeline', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'dwh_hash'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'ak_procurement'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'areaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'preawardagreement'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'preawardagreement_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'projectfinancialid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'projectfinancialid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'projectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'projectid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'remarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'totalvalueeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'createdonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'modifiedonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'ak_procurement'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'areaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'preawardagreement'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'preawardagreement_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'projectfinancialid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'projectfinancialid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'projectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'projectid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'remarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'totalvalueeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'createdonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'modifiedonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProcurement', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'ak_procurement'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProcurement', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProcurement', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProcurement', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'areaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProcurement', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'preawardagreement'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProcurement', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'preawardagreement_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProcurement', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'projectfinancialid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProcurement', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'projectfinancialid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProcurement', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'projectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProcurement', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'projectid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProcurement', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'remarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProcurement', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'totalvalueeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProcurement', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProcurement', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProcurement', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'createdonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProcurement', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProcurement', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProcurement', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'modifiedonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProcurement', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProcurement', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProcurement', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProcurement', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProcurement', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProcurement', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_procurementid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'ak_procurement'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_name', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_areaid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_areaid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'areaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_preawardagreement', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'preawardagreement'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_preawardagreement_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'preawardagreement_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_projectfinancialid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'projectfinancialid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_projectfinancialid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'projectfinancialid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_projectid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'projectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_projectid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'projectid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_remarks', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'remarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_totalvalueeuro', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'totalvalueeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_createdby_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'createdon', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_createdonbehalfby_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'createdonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_modifiedby_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'modifiedon', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_modifiedonbehalfby_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'modifiedonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_ownerid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'statecode', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_statecode_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'statuscode', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_statuscode_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'versionnumber', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'ak_procurement'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(1000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'areaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'preawardagreement'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'preawardagreement_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'projectfinancialid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'projectfinancialid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'projectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'projectid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'ntext', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'remarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,2)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'totalvalueeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'datetime', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'createdonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'datetime', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'modifiedonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'bigint', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'ak_procurement'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'projectfinancialid'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'projectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'totalvalueeuro'; 
GO
exec sys.sp_addextendedproperty @name=N'Comments', @value=N'refers to EntityArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Comments', @value=N'refers to EntityProjectFinancial', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'projectfinancialid'; 
GO
exec sys.sp_addextendedproperty @name=N'Comments', @value=N'refers to EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_procurement', @level2type=N'COLUMN', @level2name=N'projectid'; 
GO
GO
