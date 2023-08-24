CREATE TABLE modelled.DimDredgingCategory (
   [pk_dredgingcategory]  int IDENTITY  NOT NULL
,  [dwh_valid_from]  date   NOT NULL
,  [dwh_valid_to]  date   NULL
,  [dwh_active]  bit   NOT NULL
,  [dwh_process_run_id]  uniqueidentifier   NULL
,  [dwh_hash]  varbinary(8000)   NULL
,  [ak_dredgingcategory]  int   NOT NULL
,  [dredgingcategory_name]  nvarchar(20)   NULL
,  [default_dredgingcategory_duration]  int   NULL
,  [default_days_to_startdate_of_work]  int   NULL
,  [default_days_to_tenderdate]  int   NULL
,  [default_winning_chance_percent]  int   NULL
,  [default_contract_value]  int   NULL
,  [default_VO_contact_value]  int   NULL
, CONSTRAINT [PK_modelled.DimDredgingCategory] PRIMARY KEY CLUSTERED ([pk_dredgingcategory] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100, DATA_COMPRESSION = PAGE))
GO

GO

exec sys.sp_addextendedproperty @name=N'Table Name', @value=N'DimDredgingCategory', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=DimDredgingCategory
GO
exec sys.sp_addextendedproperty @name=N'Table Type', @value=N'Dimension', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=DimDredgingCategory
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'DredgingCategory', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=DimDredgingCategory
GO
exec sys.sp_addextendedproperty @name=N'Database Schema', @value=N'modelled', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=DimDredgingCategory
GO
exec sys.sp_addextendedproperty @name=N'Generate Script?', @value=N'N', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=DimDredgingCategory
GO
GO

exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dredgingcategory key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'pk_dredgingcategory'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dwh startdate', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dwh endate', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'indicator active', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dwh_process_run_id', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dwh_hash', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'dwh_hash'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dredgingcategory application key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'ak_dredgingcategory'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dredgingcategory name', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'dredgingcategory_name'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'default dredgingcategory duration', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'default_dredgingcategory_duration'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'default days to startdate of work', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'default_days_to_startdate_of_work'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'default days to tenderdate', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'default_days_to_tenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'default winning chance %', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'default_winning_chance_percent'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'default contract value mln', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'default_contract_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'default VO contact value mln', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'default_VO_contact_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'dredging catagory key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'pk_dredgingcategory'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'record startdate', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'record endate', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'indicator active', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'proces run id of the synapse pipeline', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'hash of the columns that will be compared with the staged layer', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'dwh_hash'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'dredgingcategory application key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'ak_dredgingcategory'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'dredgingcategory name', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'dredgingcategory_name'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'default dredgingcategory duration', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'default_dredgingcategory_duration'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'default days to startdate of work', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'default_days_to_startdate_of_work'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'default days to tenderdate', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'default_days_to_tenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'default winning chance %', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'default_winning_chance_percent'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'default contract value mln', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'default_contract_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'default VO contact value mln', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'default_VO_contact_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1, 2, 3…', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'pk_dredgingcategory'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'26-05-2023', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'26-05-2023', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0/1', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FFF57AF8-D10A-EA11-A811-000D3A2C5614', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0xBF35F538E0E96618230E2FEA1CC000EA', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'dwh_hash'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'pk_dredgingcategory'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived from synapse pipeline', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'dwh_hash'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'ak_dredgingcategory'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'dredgingcategory_name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'default_dredgingcategory_duration'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'default_days_to_startdate_of_work'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'default_days_to_tenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'default_winning_chance_percent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'default_contract_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'default_VO_contact_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'ak_dredgingcategory'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'dredgingcategory_name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'reference table?', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'default_dredgingcategory_duration'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'reference table?', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'default_days_to_startdate_of_work'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'reference table?', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'default_days_to_tenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'reference table?', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'default_winning_chance_percent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'reference table?', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'default_contract_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'reference table?', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'default_VO_contact_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_project', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'ak_dredgingcategory'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_project', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'dredgingcategory_name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'dredgingcategory', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'ak_dredgingcategory'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'dredgingcategory_value', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'dredgingcategory_name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'ak_dredgingcategory'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimDredgingCategory', @level2type=N'COLUMN', @level2name=N'dredgingcategory_name'; 
GO
GO