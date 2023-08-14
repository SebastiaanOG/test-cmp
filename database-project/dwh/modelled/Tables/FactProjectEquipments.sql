CREATE TABLE modelled.FactProjectEquipments (
   [pk_equipments]  int IDENTITY  NOT NULL
,  [dwh_valid_from]  date   NOT NULL
,  [dwh_valid_to]  date   NULL
,  [dwh_active]  bit   NOT NULL
,  [dwh_process_run_id]  uniqueidentifier   NULL
,  [dwh_hash]  varbinary(8000)   NULL
,  [ak_equipments]  nvarchar(36)   NOT NULL
,  [ak_project]  nvarchar(36)   NULL
,  [fk_date_from]  date   NOT NULL
,  [fk_date_to]  date   NOT NULL
,  [fk_project]  int   NOT NULL
,  [fk_area]  int   NOT NULL
,  [fk_equipmentobject]  int   NOT NULL
,  [fk_equipmenttype]  int   NOT NULL
,  [fk_projectequipment]  int   NOT NULL
,  [project_equipments_count]  int  DEFAULT 1 NOT NULL
,  [dredging_volume]  decimal(18,0)   NULL
,  [equipment_days]  int   NULL
,  [equipment_weeks]  int   NULL
, CONSTRAINT [PK_modelled.FactProjectEquipments] PRIMARY KEY CLUSTERED ([pk_equipments] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100, DATA_COMPRESSION = PAGE))
GO

GO

exec sys.sp_addextendedproperty @name=N'Table Name', @value=N'FactProjectEquipments', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=FactProjectEquipments
GO
exec sys.sp_addextendedproperty @name=N'Table Type', @value=N'Fact', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=FactProjectEquipments
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'ProjectEquipments', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=FactProjectEquipments
GO
exec sys.sp_addextendedproperty @name=N'Database Schema', @value=N'modelled', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=FactProjectEquipments
GO
exec sys.sp_addextendedproperty @name=N'Generate Script?', @value=N'N', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=FactProjectEquipments
GO
GO

exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'Primary key fact', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'pk_equipments'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'record startdate', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'record endate', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'indicator active', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dwh_process_run_id', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dwh_hash', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'dwh_hash'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'Application ID facttable', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'ak_equipments'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'Application Id project table', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'ak_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'DimDate dimension key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_date_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'DimDate dimension key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_date_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'DimProject dimension key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'DimAera dimension key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_area'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'DimEquipmentObject dimension key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_equipmentobject'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'DimEquipmenttype dimension key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_equipmenttype'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'DimProjectEquipment dimension key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_projectequipment'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'number of project equipments', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'project_equipments_count'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dredging volume', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'dredging_volume'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'days', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'equipment_days'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'weeks', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'equipment_weeks'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Primary key fact', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'pk_equipments'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'date that the new or updated row is inserted in dwh', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'date that the record is made inactive', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'indicator if the record is valid today or not', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'proces run id of the synapse pipeline', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'hash of the columns that will be compared with the staged layer', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'dwh_hash'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Application key, unique identifier source', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'ak_equipments'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Application key, unique identifier poject-table. ', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'ak_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'what is a good description here?', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_date_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'what is a good description here?', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_date_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Key to project details', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'VO work area, non geografical', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_area'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Key to EquipmentObject', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_equipmentobject'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Key to EquipmentType', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_equipmenttype'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Key to ProjectEquipment', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_projectequipment'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'number of project equipments', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'project_equipments_count'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'dredging volume', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'dredging_volume'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Is this duration?', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'equipment_days'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Is this duration?', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'equipment_weeks'; 
GO
exec sys.sp_addextendedproperty @name=N'FK To', @value=N'DimDate.PK_date', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_date_from'; 
GO
exec sys.sp_addextendedproperty @name=N'FK To', @value=N'DimDate.PK_date', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_date_to'; 
GO
exec sys.sp_addextendedproperty @name=N'FK To', @value=N'DimProject.PK_project', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_project'; 
GO
exec sys.sp_addextendedproperty @name=N'FK To', @value=N'DimArea.PK_area', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_area'; 
GO
exec sys.sp_addextendedproperty @name=N'FK To', @value=N'DimEquipmentObject.PK_equipmentobject', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_equipmentobject'; 
GO
exec sys.sp_addextendedproperty @name=N'FK To', @value=N'DimEquipmentType.PK_equipmenttype', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_equipmenttype'; 
GO
exec sys.sp_addextendedproperty @name=N'FK To', @value=N'DimProjectEquipment.PK_projectequipment', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_projectequipment'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'pk_equipments'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'26-05-2023', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'26-05-2023', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0/1', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FFFD461A-DD78-E511-8122-C4346BAC7E10', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'ak_equipments'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FFFD461A-DD78-E511-8122-C4346BAC7E10', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'ak_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'20230526', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_date_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'20230526', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_date_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1,2,3', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1,2,3', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_area'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1,2,3', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_equipmentobject'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1,2,3', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_equipmenttype'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1,2,3', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_projectequipment'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'project_equipments_count'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'8000', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'dredging_volume'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'7', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'equipment_days'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'equipment_weeks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'pk_equipments'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'FFF57AF8-D10A-EA11-A811-000D3A2C5614', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'0xBF35F538E0E96618230E2FEA1CC000EA', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'dwh_hash'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'ak_equipments'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'ak_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_date_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_date_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_area'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_equipmentobject'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_equipmenttype'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_projectequipment'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'project_equipments_count'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'dredging_volume'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'equipment_days'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'equipment_weeks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'ak_equipments'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'ak_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_date_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_date_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_area'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_equipmentobject'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_equipmenttype'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_projectequipment'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'dredging_volume'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'equipment_days'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'equipment_weeks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'Derived from synapse pipeline', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'dwh_hash'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_QuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'ak_equipments'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_QuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'ak_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_QuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_date_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_QuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_date_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_QuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_QuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_area'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_QuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_equipmentobject'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_QuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_equipmenttype'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_QuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_projectequipment'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_QuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'dredging_volume'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'equipment_days'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'equipment_weeks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'AK_projectequipment', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'ak_equipments'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'projectid', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'ak_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'datefrom', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_date_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'dateto', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_date_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'projectid', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'areaid', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_area'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'equipmenid', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_equipmentobject'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'equipmenid', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_equipmenttype'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'quantitiesequipmentid', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_projectequipment'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'quantityvo', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'dredging_volume'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'weeks', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'equipment_days'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'weeks', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'equipment_weeks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvachar(36)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'ak_equipments'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvachar(36)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'ak_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'date', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_date_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'date', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_date_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvachar(36)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_area'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_equipmentobject'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_equipmenttype'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_projectequipment'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'dredging_volume'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'integer', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'equipment_days'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'integer', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'equipment_weeks'; 
GO
exec sys.sp_addextendedproperty @name=N'ETL Rules', @value=N'Connect to DimDate via source field. If tenderdate is empty then FK_default_tenderdate is used.', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_date_from'; 
GO
exec sys.sp_addextendedproperty @name=N'ETL Rules', @value=N'Connect to DimDate via source field.', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_date_to'; 
GO
exec sys.sp_addextendedproperty @name=N'ETL Rules', @value=N'Connect to DimProject via source field. ', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_project'; 
GO
exec sys.sp_addextendedproperty @name=N'ETL Rules', @value=N'Connect to DimArea via source field. ', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_area'; 
GO
exec sys.sp_addextendedproperty @name=N'ETL Rules', @value=N'Connect to DimProjectEquipmentObject via source field. ', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_equipmentobject'; 
GO
exec sys.sp_addextendedproperty @name=N'ETL Rules', @value=N'Connect to DimProjectEquipmentObject via source field. ', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_equipmenttype'; 
GO
exec sys.sp_addextendedproperty @name=N'ETL Rules', @value=N'Connect to DimEquipment via source field. ', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'fk_projectequipment'; 
GO
exec sys.sp_addextendedproperty @name=N'ETL Rules', @value=N'weeks * 7', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjectEquipments', @level2type=N'COLUMN', @level2name=N'equipment_days'; 
GO
GO
