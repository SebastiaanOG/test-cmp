CREATE TABLE modelled.DimArea (
   [pk_area]  int IDENTITY  NOT NULL
,  [dwh_valid_from]  date   NOT NULL
,  [dwh_valid_to]  date   NULL
,  [dwh_active]  bit   NOT NULL
,  [dwh_process_run_id]  uniqueidentifier   NULL
,  [dwh_hash]  varbinary(8000)   NULL
,  [ak_area]  nvarchar(36)   NOT NULL
,  [area_name]  nvarchar(100)   NULL
,  [area_groupname]  nvarchar(100)   NULL
,  [area_abbrevation]  nvarchar(20)   NULL
,  [area_businessunit]  nvarchar(100)   NULL
,  [area_owner]  nvarchar(200)   NULL
,  [company]  nvarchar(100)   NULL
, CONSTRAINT [PK_modelled.DimArea] PRIMARY KEY CLUSTERED ([pk_area] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100, DATA_COMPRESSION = PAGE))
GO

exec sys.sp_addextendedproperty @name=N'Table Name', @value=N'DimArea', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=DimArea
GO
exec sys.sp_addextendedproperty @name=N'Table Type', @value=N'Dimension', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=DimArea
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'Area', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=DimArea
GO
exec sys.sp_addextendedproperty @name=N'Database Schema', @value=N'modelled', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=DimArea
GO
exec sys.sp_addextendedproperty @name=N'Generate Script?', @value=N'N', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=DimArea
GO
GO

exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'area key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'pk_area';
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'record startdate', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'dwh_valid_from';
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'record endate', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'dwh_valid_to';
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'indicator active', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'dwh_active';
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dwh_process_run_id', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id';
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dwh_hash', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'dwh_hash';
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'area application key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'ak_area';
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'area name', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'area_name';
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'area group name', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'area_groupname';
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'area abbrevation', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'area_abbrevation';
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'area businessunit', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'area_businessunit';
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'area owner', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'area_owner';
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'company', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'company';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Primary key dimension', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'pk_area';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'record startdate', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'dwh_valid_from';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'record endate', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'dwh_valid_to';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'indicator active', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'dwh_active';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'proces run id of the synapse pipeline', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'hash of the columns that will be compared with the staged layer', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'dwh_hash';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'area application key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'ak_area';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'area name', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'area_name';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'area name grouped based on business logic', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'area_groupname';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'area abbrevation', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'area_abbrevation';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'area businessunit', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'area_businessunit';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'area owner', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'area_owner';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'company', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'company';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1, 2, 3…', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'pk_area';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'26-05-2023', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'dwh_valid_from';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'26-05-2023', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'dwh_valid_to';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0/1', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'dwh_active';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FFF57AF8-D10A-EA11-A811-000D3A2C5614', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0xBF35F538E0E96618230E2FEA1CC000EA', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'dwh_hash';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'f8498ca7-90f8-e411-8109-c4346bacce18', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'ak_area';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'WICKS', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'area_name';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'WICKS', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'area_groupname';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'WICKS', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'area_abbrevation';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Offshore Wind', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'area_businessunit';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'@VOOW - Offshore Wind - Project - RO', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'area_owner';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Van Oord', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'company';
GO
exec sys.sp_addextendedproperty @name=N'SCD  Type', @value=N'2', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'ak_area';
GO
exec sys.sp_addextendedproperty @name=N'SCD  Type', @value=N'2', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'area_name';
GO
exec sys.sp_addextendedproperty @name=N'SCD  Type', @value=N'2', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'area_groupname';
GO
exec sys.sp_addextendedproperty @name=N'SCD  Type', @value=N'2', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'area_abbrevation';
GO
exec sys.sp_addextendedproperty @name=N'SCD  Type', @value=N'2', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'area_businessunit';
GO
exec sys.sp_addextendedproperty @name=N'SCD  Type', @value=N'2', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'area_owner';
GO
exec sys.sp_addextendedproperty @name=N'SCD  Type', @value=N'2', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'company';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'pk_area';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'dwh_valid_from';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'dwh_valid_to';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'dwh_active';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived from synapse pipeline', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'dwh_hash';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'ak_area';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'area_name';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'area_groupname';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'area_abbrevation';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'area_businessunit';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'area_owner';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'company';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'ak_area';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'area_name';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'area_groupname';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'area_abbrevation';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'area_businessunit';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'area_owner';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'company';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_area', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'ak_area';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_area', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'area_name';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_area', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'area_groupname';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_area', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'area_abbrevation';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_area', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'area_businessunit';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_area', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'area_owner';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_area', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'company';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'areaid', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'ak_area';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'name', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'area_name';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'name', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'area_groupname';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'areaabbrevation', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'area_abbrevation';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'businessunit_value', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'area_businessunit';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'ownerid_value', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'area_owner';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'name', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'company';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'ak_area';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'area_name';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'area_groupname';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(20)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'area_abbrevation';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'area_businessunit';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'area_owner';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'company';
GO
exec sys.sp_addextendedproperty @name=N'ETL Rules', @value=N'Zie Comments', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'area_groupname';
GO
exec sys.sp_addextendedproperty @name=N'ETL Rules', @value=N'IF(origional areaname in (''Subsidiaries'',''WICKS'',''Dravosa'' then areaname else ''Van Oord'' AS Company', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimArea', @level2type=N'COLUMN', @level2name=N'company';
GO