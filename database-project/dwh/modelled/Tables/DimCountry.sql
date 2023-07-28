CREATE TABLE modelled.DimCountry (
   [pk_country]  int IDENTITY  NOT NULL
,  [dwh_valid_from]  date   NOT NULL
,  [dwh_valid_to]  date   NULL
,  [dwh_active]  bit   NOT NULL
,  [dwh_process_run_id]  uniqueidentifier   NULL
,  [dwh_hash]  varbinary(8000)   NULL
,  [ak_country]  nvarchar(36)   NOT NULL
,  [country_name]  nvarchar(100)   NULL
,  [region_NL]  nvarchar(100)   NULL
,  [region_DR]  nvarchar(100)   NULL
,  [region_OF]  nvarchar(100)   NULL
,  [region_OW]  nvarchar(100)   NULL
,  [subregion_OF]  nvarchar(100)   NULL
,  [country_iso_31661alpha2]  nvarchar(2)   NULL
,  [country_iso_31661alpha3]  nvarchar(3)   NULL
,  [country_iso_31661numeric]  int   NULL
, CONSTRAINT [PK_modelled.DimCountry] PRIMARY KEY CLUSTERED ([pk_country] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100, DATA_COMPRESSION = PAGE))
GO

GO

exec sys.sp_addextendedproperty @name=N'Table Name', @value=N'DimCountry', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=DimCountry
GO
exec sys.sp_addextendedproperty @name=N'Table Type', @value=N'Dimension', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=DimCountry
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'Country', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=DimCountry
GO
exec sys.sp_addextendedproperty @name=N'Database Schema', @value=N'modelled', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=DimCountry
GO
exec sys.sp_addextendedproperty @name=N'Generate Script?', @value=N'N', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=DimCountry
GO
GO

exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'contract key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'pk_country'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dwh startdate', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dwh endate', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'indicator active', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dwh_process_run_id', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dwh_hash', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'dwh_hash'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'country application key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'ak_country'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'country name', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'country_name'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'region NL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'region_NL'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'region DR', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'region_DR'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'region OF', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'region_OF'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'region OW', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'region_OW'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'subregion OW', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'subregion_OF'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'country iso 31661alpha2', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'country_iso_31661alpha2'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'country iso 31661alpha3', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'country_iso_31661alpha3'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'country iso 31661numeric', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'country_iso_31661numeric'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Primary key dimension', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'pk_country'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'record startdate', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'record endate', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'indicator active', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'proces run id of the synapse pipeline', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'hash of the columns that will be compared with the staged layer', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'dwh_hash'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'country application key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'ak_country'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'country name', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'country_name'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'region NL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'region_NL'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'region DR', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'region_DR'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'region OF', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'region_OF'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'region OW', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'region_OW'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'subregion OW', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'subregion_OF'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1, 2, 3…', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'pk_country'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'26-05-2023', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'26-05-2023', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0/1', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FFF57AF8-D10A-EA11-A811-000D3A2C5614', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0xBF35F538E0E96618230E2FEA1CC000EA', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'dwh_hash'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1, 2, 3…', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'ak_country'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zimbabwe', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'country_name'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Netherlands/Belgium', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'region_NL'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Netherlands/Belgium', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'region_DR'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Netherlands/Belgium', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'region_OF'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Netherlands/Belgium', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'region_OW'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'West Asia', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'subregion_OF'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zw', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'country_iso_31661alpha2'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'ZWE', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'country_iso_31661alpha3'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'96', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'country_iso_31661numeric'; 
GO
exec sys.sp_addextendedproperty @name=N'SCD  Type', @value=N'2', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'country_name'; 
GO
exec sys.sp_addextendedproperty @name=N'SCD  Type', @value=N'2', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'region_NL'; 
GO
exec sys.sp_addextendedproperty @name=N'SCD  Type', @value=N'2', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'region_DR'; 
GO
exec sys.sp_addextendedproperty @name=N'SCD  Type', @value=N'2', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'region_OF'; 
GO
exec sys.sp_addextendedproperty @name=N'SCD  Type', @value=N'2', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'region_OW'; 
GO
exec sys.sp_addextendedproperty @name=N'SCD  Type', @value=N'2', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'subregion_OF'; 
GO
exec sys.sp_addextendedproperty @name=N'SCD  Type', @value=N'2', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'country_iso_31661alpha2'; 
GO
exec sys.sp_addextendedproperty @name=N'SCD  Type', @value=N'2', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'country_iso_31661alpha3'; 
GO
exec sys.sp_addextendedproperty @name=N'SCD  Type', @value=N'2', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'country_iso_31661numeric'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'pk_country'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived from synapse pipeline', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'dwh_hash'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'ak_country'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'country_name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'region_NL'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'region_DR'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'region_OF'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'region_OW'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'subregion_OF'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'country_iso_31661alpha2'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'country_iso_31661alpha3'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'country_iso_31661numeric'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'ak_country'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'country_name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'country_iso_31661alpha2'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'country_iso_31661alpha3'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'country_iso_31661numeric'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_country', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'ak_country'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_country', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'country_name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'reference table?', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'region_NL'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'reference table?', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'region_DR'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'reference table?', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'region_OF'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'reference table?', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'region_OW'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'reference table?', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'subregion_OF'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_country', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'country_iso_31661alpha2'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_country', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'country_iso_31661alpha3'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_country', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'country_iso_31661numeric'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'countryid', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'ak_country'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'name', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'country_name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'iso31661alpha2', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'country_iso_31661alpha2'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'iso31661alpha3', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'country_iso_31661alpha3'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'iso31661numeric', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'country_iso_31661numeric'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'ak_country'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'country_name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(2)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'country_iso_31661alpha2'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(3)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'country_iso_31661alpha3'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimCountry', @level2type=N'COLUMN', @level2name=N'country_iso_31661numeric'; 
GO
GO
