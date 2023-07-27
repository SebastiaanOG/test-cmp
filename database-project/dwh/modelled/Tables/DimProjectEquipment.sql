CREATE TABLE modelled.DimProjectEquipment (
   [pk_projectequipment]  int IDENTITY  NOT NULL
,  [dwh_valid_from]  date   NOT NULL
,  [dwh_valid_to]  date   NULL
,  [dwh_active]  bit   NOT NULL
,  [dwh_process_run_id]  uniqueidentifier   NULL
,  [dwh_hash]  varbinary(8000)   NULL
,  [ak_projectequipment]  nvarchar(36)   NOT NULL
,  [projectequipment_description]  nvarchar(100)   NULL
,  [projectequipment_activity]  nvarchar(100)   NULL
,  [projectequipment_product_services]  nvarchar(100)   NULL
,  [projectequipment_scope]  nvarchar(100)   NULL
,  [soiltype]  nvarchar(4000)   NULL
,  [dredging_volume]  decimal(18,0)   NULL
,  [dredging_volume_unit]  nvarchar(100)   NULL
,  [projectequipment_remarks]  nvarchar(1000)   NULL
,  [equipment_unit_category]  nvarchar(100)   NULL
,  [equipment_name]  nvarchar(100)   NULL
, CONSTRAINT [PK_modelled.DimProjectEquipment] PRIMARY KEY CLUSTERED ([pk_projectequipment] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100, DATA_COMPRESSION = PAGE))
GO

GO

exec sys.sp_addextendedproperty @name=N'Table Name', @value=N'DimProjectEquipment', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=DimProjectEquipment
GO
exec sys.sp_addextendedproperty @name=N'Table Type', @value=N'Dimension', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=DimProjectEquipment
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'ProjectEquipment', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=DimProjectEquipment
GO
exec sys.sp_addextendedproperty @name=N'Database Schema', @value=N'modelled', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=DimProjectEquipment
GO
exec sys.sp_addextendedproperty @name=N'Generate Script?', @value=N'N', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=DimProjectEquipment
GO
GO

exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'projectequipment key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'pk_projectequipment';
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dwh startdate', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'dwh_valid_from';
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dwh endate', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'dwh_valid_to';
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'indicator active', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'dwh_active';
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dwh_process_run_id', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id';
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dwh_hash', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'dwh_hash';
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'Application key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'ak_projectequipment';
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'projectequipment description', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'projectequipment_description';
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'equipment activity', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'projectequipment_activity';
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'equipment product services', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'projectequipment_product_services';
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'equipment scope', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'projectequipment_scope';
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'soiltype', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'soiltype';
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dredging volume', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'dredging_volume';
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dredging volume unit', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'dredging_volume_unit';
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'projectequipment remarks', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'projectequipment_remarks';
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'equipment category', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'equipment_unit_category';
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'equipment name', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'equipment_name';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Projectequipment primary key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'pk_projectequipment';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'record startdate', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'dwh_valid_from';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'record endate', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'dwh_valid_to';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'indicator active', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'dwh_active';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'proces run id of the synapse pipeline', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'hash of the columns that will be compared with the staged layer', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'dwh_hash';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Application id, unique identifier source', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'ak_projectequipment';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'projectequipment description', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'projectequipment_description';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'equipment activity', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'projectequipment_activity';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'equipment product services', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'projectequipment_product_services';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'equipment scope', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'projectequipment_scope';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'soiltype', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'soiltype';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'dredging volume', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'dredging_volume';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'dredging volume unit', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'dredging_volume_unit';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'projectequipment remarks', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'projectequipment_remarks';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'equipment category', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'equipment_unit_category';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'equipment name', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'equipment_name';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1, 2, 3…', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'pk_projectequipment';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'26-05-2023', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'dwh_valid_from';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'26-05-2023', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'dwh_valid_to';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0/1', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'dwh_active';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FFF57AF8-D10A-EA11-A811-000D3A2C5614', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0xBF35F538E0E96618230E2FEA1CC000EA', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'dwh_hash';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'equipment_unit_category';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'pk_projectequipment';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'dwh_valid_from';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'dwh_valid_to';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'dwh_active';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived from synapse pipeline', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'dwh_hash';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'ak_projectequipment';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'projectequipment_description';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'projectequipment_activity';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'projectequipment_product_services';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'projectequipment_scope';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'soiltype';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'dredging_volume';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'dredging_volume_unit';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'projectequipment_remarks';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'equipment_unit_category';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'equipment_name';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'ak_projectequipment';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'projectequipment_description';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'projectequipment_activity';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'projectequipment_product_services';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'projectequipment_scope';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'soiltype';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'dredging_volume';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'dredging_volume_unit';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'projectequipment_remarks';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'equipment_name';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_QuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'ak_projectequipment';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_QuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'projectequipment_description';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_QuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'projectequipment_activity';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_QuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'projectequipment_product_services';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_QuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'projectequipment_scope';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_QuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'soiltype';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_QuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'dredging_volume';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_QuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'dredging_volume_unit';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_QuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'projectequipment_remarks';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'reference table?', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'equipment_unit_category';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_QuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'equipment_name';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'quantitiesequipmentid', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'ak_projectequipment';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'name', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'projectequipment_description';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'groupid_value', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'projectequipment_activity';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'workelelmentid_value', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'projectequipment_product_services';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'scopeid_value', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'projectequipment_scope';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'soiltype_value', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'soiltype';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'quantityvo', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'dredging_volume';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'unitid_quantity', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'dredging_volume_unit';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'equipmentremarks', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'projectequipment_remarks';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'equipmentid_value', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'equipment_name';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'ak_projectequipment';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'projectequipment_description';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'projectequipment_activity';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'projectequipment_product_services';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'projectequipment_scope';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'soiltype';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'dredging_volume';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'dredging_volume_unit';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(1000)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'projectequipment_remarks';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'equipment_name';
GO
exec sys.sp_addextendedproperty @name=N'ETL Rules', @value=N'catagory defined on groupid_value, workelelmentid_value and soiltype_value. See translation below. Maby we should add it via table in a AddOn-schema. (As extracomptabel in finance)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProjectEquipment', @level2type=N'COLUMN', @level2name=N'equipment_unit_category';
GO
GO
