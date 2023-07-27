CREATE TABLE modelled.DimEquipmentType (
   [pk_equipmenttype]  int IDENTITY  NOT NULL
,  [dwh_valid_from]  date   NOT NULL
,  [dwh_valid_to]  date   NULL
,  [dwh_active]  bit   NOT NULL
,  [dwh_process_run_id]  uniqueidentifier   NULL
,  [dwh_hash]  varbinary(8000)   NULL
,  [ak_equipmenttype]  nvarchar(36)   NOT NULL
,  [equipmenttype_name]  nvarchar(100)   NULL
, CONSTRAINT [PK_modelled.DimEquipmentType] PRIMARY KEY CLUSTERED ([pk_equipmenttype] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100, DATA_COMPRESSION = PAGE))
GO

GO

exec sys.sp_addextendedproperty @name=N'Table Name', @value=N'DimEquipmentType', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=DimEquipmentType
GO
exec sys.sp_addextendedproperty @name=N'Table Type', @value=N'Dimension', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=DimEquipmentType
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'EquipmentType', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=DimEquipmentType
GO
exec sys.sp_addextendedproperty @name=N'Database Schema', @value=N'modelled', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=DimEquipmentType
GO
exec sys.sp_addextendedproperty @name=N'Generate Script?', @value=N'N', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=DimEquipmentType
GO
GO

exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'equipmenttype primary key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimEquipmentType', @level2type=N'COLUMN', @level2name=N'pk_equipmenttype'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dwh startdate', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimEquipmentType', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dwh endate', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimEquipmentType', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'indicator active', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimEquipmentType', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dwh_process_run_id', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimEquipmentType', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dwh_hash', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimEquipmentType', @level2type=N'COLUMN', @level2name=N'dwh_hash'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'Equipmenttype Application key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimEquipmentType', @level2type=N'COLUMN', @level2name=N'ak_equipmenttype'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'equipmenttype name', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimEquipmentType', @level2type=N'COLUMN', @level2name=N'equipmenttype_name'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'equipmenttype primary key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimEquipmentType', @level2type=N'COLUMN', @level2name=N'pk_equipmenttype'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'record startdate', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimEquipmentType', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'record endate', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimEquipmentType', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'indicator active', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimEquipmentType', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'proces run id of the synapse pipeline', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimEquipmentType', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'hash of the columns that will be compared with the staged layer', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimEquipmentType', @level2type=N'COLUMN', @level2name=N'dwh_hash'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Equipmenttype Application key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimEquipmentType', @level2type=N'COLUMN', @level2name=N'ak_equipmenttype'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'equipmenttype name', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimEquipmentType', @level2type=N'COLUMN', @level2name=N'equipmenttype_name'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1, 2, 3…', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimEquipmentType', @level2type=N'COLUMN', @level2name=N'pk_equipmenttype'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'26-05-2023', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimEquipmentType', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'26-05-2023', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimEquipmentType', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0/1', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimEquipmentType', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FFF57AF8-D10A-EA11-A811-000D3A2C5614', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimEquipmentType', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0xBF35F538E0E96618230E2FEA1CC000EA', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimEquipmentType', @level2type=N'COLUMN', @level2name=N'dwh_hash'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FFFD461A-DD78-E511-8122-C4346BAC7E10', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimEquipmentType', @level2type=N'COLUMN', @level2name=N'ak_equipmenttype'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Trailing Suction Hopper Dredger', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimEquipmentType', @level2type=N'COLUMN', @level2name=N'equipmenttype_name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimEquipmentType', @level2type=N'COLUMN', @level2name=N'pk_equipmenttype'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimEquipmentType', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimEquipmentType', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimEquipmentType', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived from synapse pipeline', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimEquipmentType', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimEquipmentType', @level2type=N'COLUMN', @level2name=N'dwh_hash'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimEquipmentType', @level2type=N'COLUMN', @level2name=N'ak_equipmenttype'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimEquipmentType', @level2type=N'COLUMN', @level2name=N'equipmenttype_name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimEquipmentType', @level2type=N'COLUMN', @level2name=N'ak_equipmenttype'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimEquipmentType', @level2type=N'COLUMN', @level2name=N'equipmenttype_name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_equipmenttype', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimEquipmentType', @level2type=N'COLUMN', @level2name=N'ak_equipmenttype'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_equipmenttype', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimEquipmentType', @level2type=N'COLUMN', @level2name=N'equipmenttype_name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'AK_equipment', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimEquipmentType', @level2type=N'COLUMN', @level2name=N'ak_equipmenttype'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'name', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimEquipmentType', @level2type=N'COLUMN', @level2name=N'equipmenttype_name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimEquipmentType', @level2type=N'COLUMN', @level2name=N'ak_equipmenttype'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimEquipmentType', @level2type=N'COLUMN', @level2name=N'equipmenttype_name'; 
GO
GO
