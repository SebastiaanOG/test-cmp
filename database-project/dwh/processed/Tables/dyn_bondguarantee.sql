CREATE TABLE processed.dyn_bondguarantee (
   [id]  bigint IDENTITY  NOT NULL
,  [dwh_valid_from]  date   NOT NULL
,  [dwh_valid_to]  date   NULL
,  [dwh_active]  bit   NOT NULL
,  [dwh_process_run_id]  uniqueidentifier   NULL
,  [dwh_hash]  varbinary(8000)   NULL
,  [ak_bondguarantee]  nvarchar(36)   NULL
,  [name]  nvarchar(450)   NULL
,  [exchangerate]  decimal(18,10)   NULL
,  [amount]  decimal(18,2)   NULL
,  [amount_base]  decimal(18,2)   NULL
,  [areaid]  nvarchar(36)   NULL
,  [areaid_value]  nvarchar(100)   NULL
,  [bondguarantee]  int   NULL
,  [bondguarantee_value]  nvarchar(4000)   NULL
,  [percentcontractvalue]  decimal(18,1)   NULL
,  [projectid]  nvarchar(36)   NULL
,  [projectid_value]  nvarchar(200)   NULL
,  [type]  nvarchar(4000)   NULL
,  [validitydays]  decimal(18,0)   NULL
,  [transactioncurrencyid_value]  nvarchar(100)   NULL
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
,  [versionnumber]  bigint   NULL
, CONSTRAINT [PK_processed.dyn_bondguarantee] PRIMARY KEY CLUSTERED ([id] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100, DATA_COMPRESSION = PAGE))
GO

GO

exec sys.sp_addextendedproperty @name=N'Table Name', @value=N'dyn_bondguarantee', @level0type=N'SCHEMA', @level0name=processed, @level1type=N'TABLE', @level1name=dyn_bondguarantee
GO
exec sys.sp_addextendedproperty @name=N'Table Type', @value=N'Fact', @level0type=N'SCHEMA', @level0name=processed, @level1type=N'TABLE', @level1name=dyn_bondguarantee
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'bondguarantee', @level0type=N'SCHEMA', @level0name=processed, @level1type=N'TABLE', @level1name=dyn_bondguarantee
GO
exec sys.sp_addextendedproperty @name=N'Database Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=processed, @level1type=N'TABLE', @level1name=dyn_bondguarantee
GO
exec sys.sp_addextendedproperty @name=N'Generate Script?', @value=N'N', @level0type=N'SCHEMA', @level0name=processed, @level1type=N'TABLE', @level1name=dyn_bondguarantee
GO
GO

exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'Primary key', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'id';
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'valid_from', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'dwh_valid_from';
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'Valid_to', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'dwh_valid_to';
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'indicator active', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'dwh_active';
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dwh_process_run_id', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id';
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dwh_hash', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'dwh_hash';
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'Application ID', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'ak_bondguarantee';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Primary key', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'id';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'proces run id of the synapse pipeline', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'hash of the columns that will be compared with the staged layer', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'dwh_hash';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Application id, unique identifier source', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'ak_bondguarantee';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Exchange rate for the currency associated with the entity with respect to the base currency.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'exchangerate';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'State the height of the guarantee in Currency', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'amount';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Value of the Amount in base currency.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'amount_base';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Unique identifier for Area associated with Guarantee.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'areaid';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Unique identifier for entity instances', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'bondguarantee';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'State the height of the guarantee in % of Contract Value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'percentcontractvalue';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Unique identifier for Project associated with Bond / Guarantee.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'projectid';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'State the Validity duration of the guarantee', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'validitydays';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'createdby_value';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'createdon';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'createdonbehalfby_value';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'importsequencenumber';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'modifiedby_value';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'modifiedon';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'modifiedonbehalfby_value';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'ownerid_value';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'statecode';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'statecode_value';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'statuscode';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'statuscode_value';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'versionnumber';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'id';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2023-04-20', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'dwh_valid_from';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2023-04-25', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'dwh_valid_to';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'dwh_active';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FFF57AF8-D10A-EA11-A811-000D3A2C5614', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0xBF35F538E0E96618230E2FEA1CC000EA', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'dwh_hash';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FFFD619D-6246-ED11-BBA2-6045BD8C96D2', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'ak_bondguarantee';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Tender Guarantee / Bond - Zarzis mai', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'name';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'95200000000', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'exchangerate';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'99970.00', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'amount';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'99970.00', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'amount_base';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FE498CA7-90F8-E411-8109-C4346BACCE18', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'areaid';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'WICKS', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'areaid_value';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000007', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'bondguarantee';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Tender Guarantee / Bond', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'bondguarantee_value';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'85.0', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'percentcontractvalue';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FFE845E4-3FBC-E811-8157-70106FA5FD31', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'projectid';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zwakke Schakels Noord Holland', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'projectid_value';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'zekerheidsstelling', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'type';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'975', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'validitydays';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'ZAR', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'transactioncurrencyid_value';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'createdby_value';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Sep 30 2022  4:50PM', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'createdon';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'createdonbehalfby_value';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'26', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'importsequencenumber';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'SYSTEM', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'modifiedby_value';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Oct 22 2015  2:29PM', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'modifiedon';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'modifiedonbehalfby_value';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'ownerid_value';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'statecode';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Inactive', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'statecode_value';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'statuscode';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Inactive', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'statuscode_value';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'87746045', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'versionnumber';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'id';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'dwh_valid_from';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'dwh_valid_to';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'dwh_active';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived from synapse pipeline', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'dwh_hash';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'ak_bondguarantee';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'name';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'exchangerate';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'amount';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'amount_base';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'areaid';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'areaid_value';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'bondguarantee';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'bondguarantee_value';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'percentcontractvalue';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'projectid';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'projectid_value';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'type';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'validitydays';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'transactioncurrencyid_value';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'createdby_value';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'createdon';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'createdonbehalfby_value';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'importsequencenumber';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'modifiedby_value';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'modifiedon';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'modifiedonbehalfby_value';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'ownerid_value';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'statecode';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'statecode_value';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'statuscode';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'statuscode_value';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'versionnumber';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'ak_bondguarantee';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'name';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'exchangerate';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'amount';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'amount_base';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'areaid';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'areaid_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'bondguarantee';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'bondguarantee_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'percentcontractvalue';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'projectid';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'projectid_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'type';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'validitydays';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'transactioncurrencyid_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'createdby_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'createdon';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'createdonbehalfby_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'importsequencenumber';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'modifiedby_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'modifiedon';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'modifiedonbehalfby_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'ownerid_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'statecode';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'statecode_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'statuscode';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'statuscode_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'versionnumber';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityBondguarantee', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'ak_bondguarantee';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityBondguarantee', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'name';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityBondguarantee', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'exchangerate';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityBondguarantee', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'amount';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityBondguarantee', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'amount_base';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityBondguarantee', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'areaid';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityBondguarantee', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'areaid_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityBondguarantee', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'bondguarantee';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityBondguarantee', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'bondguarantee_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityBondguarantee', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'percentcontractvalue';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityBondguarantee', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'projectid';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityBondguarantee', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'projectid_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityBondguarantee', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'type';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityBondguarantee', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'validitydays';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityBondguarantee', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'transactioncurrencyid_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityBondguarantee', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'createdby_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityBondguarantee', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'createdon';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityBondguarantee', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'createdonbehalfby_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityBondguarantee', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'importsequencenumber';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityBondguarantee', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'modifiedby_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityBondguarantee', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'modifiedon';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityBondguarantee', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'modifiedonbehalfby_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityBondguarantee', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'ownerid_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityBondguarantee', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'statecode';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityBondguarantee', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'statecode_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityBondguarantee', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'statuscode';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityBondguarantee', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'statuscode_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityBondguarantee', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'versionnumber';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_bondguaranteeid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'ak_bondguarantee';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_name', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'name';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'exchangerate', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'exchangerate';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_amount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'amount';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_amount_base', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'amount_base';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_areaid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'areaid';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_areaid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'areaid_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_bondguarantee', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'bondguarantee';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_bondguarantee_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'bondguarantee_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_percentcontractvalue', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'percentcontractvalue';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_projectid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'projectid';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_projectid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'projectid_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_type', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'type';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_validitydays', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'validitydays';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_transactioncurrencyid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'transactioncurrencyid_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_createdby_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'createdby_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'createdon', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'createdon';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_createdonbehalfby_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'createdonbehalfby_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'importsequencenumber', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'importsequencenumber';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_modifiedby_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'modifiedby_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'modifiedon', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'modifiedon';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_modifiedonbehalfby_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'modifiedonbehalfby_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_ownerid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'ownerid_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'statecode', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'statecode';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_statecode_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'statecode_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'statuscode', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'statuscode';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_statuscode_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'statuscode_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'versionnumber', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'versionnumber';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'ak_bondguarantee';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(450)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'name';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,10)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'exchangerate';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,2)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'amount';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,2)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'amount_base';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'areaid';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'areaid_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'bondguarantee';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'bondguarantee_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,1)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'percentcontractvalue';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'projectid';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'projectid_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'ntext', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'type';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'validitydays';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'transactioncurrencyid_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'createdby_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'datetime', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'createdon';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'createdonbehalfby_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'importsequencenumber';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'modifiedby_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'datetime', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'modifiedon';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'modifiedonbehalfby_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'ownerid_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'statecode';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'statecode_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'statuscode';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'statuscode_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'bigint', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'versionnumber';
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'ak_bondguarantee';
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'exchangerate';
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'amount';
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'amount_base';
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'areaid';
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'percentcontractvalue';
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'projectid';
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'validitydays';
GO
exec sys.sp_addextendedproperty @name=N'Comments', @value=N'refers to EntityArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'areaid';
GO
exec sys.sp_addextendedproperty @name=N'Comments', @value=N'refers to EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_bondguarantee', @level2type=N'COLUMN', @level2name=N'projectid';
GO
GO
