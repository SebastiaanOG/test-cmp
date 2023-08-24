CREATE TABLE modelled.DimContractValueClass (
   [pk_contractvalue_class]  int IDENTITY  NOT NULL
,  [rk_contractvalue_class]  int   NOT NULL
,  [dwh_valid_from]  date   NOT NULL
,  [dwh_valid_to]  date   NULL
,  [dwh_active]  bit   NOT NULL
,  [dwh_process_run_id]  uniqueidentifier   NULL
,  [dwh_hash]  varbinary(8000)   NULL
,  [contractvalue_class]  nvarchar(30)   NOT NULL
,  [total_VO_share_from]  numeric(18,2)   NOT NULL
,  [total_VO_share_to]  numeric(18,2)   NOT NULL
,  [sort_contractvalue_class]  int   NOT NULL
, CONSTRAINT [PK_modelled.DimContractValueClass] PRIMARY KEY CLUSTERED ([pk_contractvalue_class] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100, DATA_COMPRESSION = PAGE))
GO

GO

exec sys.sp_addextendedproperty @name=N'Table Name', @value=N'DimContractValueClass', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=DimContractValueClass
GO
exec sys.sp_addextendedproperty @name=N'Table Type', @value=N'Dimension', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=DimContractValueClass
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'ContractValueClass', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=DimContractValueClass
GO
exec sys.sp_addextendedproperty @name=N'Database Schema', @value=N'modelled', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=DimContractValueClass
GO
exec sys.sp_addextendedproperty @name=N'Generate Script?', @value=N'N', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=DimContractValueClass
GO
GO

exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'contractvalue class key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'pk_contractvalue_class'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'contractvalue reference key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'rk_contractvalue_class'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dwh startdate', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dwh endate', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'indicator active', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dwh_process_run_id', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dwh_hash', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'dwh_hash'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'contractvalue class', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'contractvalue_class'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'total VO share from', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'total_VO_share_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'total VO share to', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'total_VO_share_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'sort contractvalue class', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'sort_contractvalue_class'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Primary key dimension', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'pk_contractvalue_class'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Reference key to reference table', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'rk_contractvalue_class'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'record startdate', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'record endate', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'indicator active', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'proces run id of the synapse pipeline', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'hash of the columns that will be compared with the staged layer', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'dwh_hash'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'contractvalue class', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'contractvalue_class'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'total VO share from', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'total_VO_share_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'total VO share to', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'total_VO_share_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'sort contractvalue class', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'sort_contractvalue_class'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1, 2, 3…', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'pk_contractvalue_class'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1, 2, 3…', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'rk_contractvalue_class'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'26-05-2023', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'26-05-2023', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0/1', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FFF57AF8-D10A-EA11-A811-000D3A2C5614', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0xBF35F538E0E96618230E2FEA1CC000EA', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'dwh_hash'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0-1', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'contractvalue_class'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'total_VO_share_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'total_VO_share_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'sort_contractvalue_class'; 
GO
exec sys.sp_addextendedproperty @name=N'SCD  Type', @value=N'0', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'contractvalue_class'; 
GO
exec sys.sp_addextendedproperty @name=N'SCD  Type', @value=N'0', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'total_VO_share_from'; 
GO
exec sys.sp_addextendedproperty @name=N'SCD  Type', @value=N'0', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'total_VO_share_to'; 
GO
exec sys.sp_addextendedproperty @name=N'SCD  Type', @value=N'0', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'sort_contractvalue_class'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'pk_contractvalue_class'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Reference', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'rk_contractvalue_class'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived from synapse pipeline', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'dwh_hash'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Reference', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'contractvalue_class'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Reference', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'total_VO_share_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Reference', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'total_VO_share_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Reference', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'sort_contractvalue_class'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'reference table?', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'contractvalue_class'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'reference table?', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'total_VO_share_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'reference table?', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'total_VO_share_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'reference table?', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimContractValueClass', @level2type=N'COLUMN', @level2name=N'sort_contractvalue_class'; 
GO
GO
