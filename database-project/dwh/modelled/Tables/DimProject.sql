CREATE TABLE modelled.DimProject (
   [pk_project]  int IDENTITY  NOT NULL
,  [dwh_valid_from]  date   NOT NULL
,  [dwh_valid_to]  date   NULL
,  [dwh_active]  bit   NOT NULL
,  [dwh_process_run_id]  uniqueidentifier   NULL
,  [dwh_hash]  varbinary(8000)   NULL
,  [ak_project]  nvarchar(36)   NULL
,  [project_number]  nvarchar(100)   NULL
,  [project_name]  nvarchar(200)   NULL
,  [project_description]  nvarchar(4000)   NULL
,  [project_contract_duration]  decimal(18,1)   NULL
,  [winning_chance_percent]  int   NULL
,  [winning_chance_description]  nvarchar(4000)   NULL
,  [going_ahead_chance_percent]  int   NULL
,  [going_ahead_chance_description]  nvarchar(4000)   NULL
,  [productgroups_nl]  nvarchar(4000)   NULL
,  [dredging_categoy]  nvarchar(4000)   NULL
,  [tender_type]  nvarchar(4000)   NULL
, CONSTRAINT [PK_modelled.DimProject] PRIMARY KEY CLUSTERED ([pk_project] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100, DATA_COMPRESSION = PAGE))
GO

GO

exec sys.sp_addextendedproperty @name=N'Table Name', @value=N'DimProject', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=DimProject
GO
exec sys.sp_addextendedproperty @name=N'Table Type', @value=N'Dimension', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=DimProject
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'Project', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=DimProject
GO
exec sys.sp_addextendedproperty @name=N'Database Schema', @value=N'modelled', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=DimProject
GO
exec sys.sp_addextendedproperty @name=N'Generate Script?', @value=N'N', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=DimProject
GO
GO

exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'project primary key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'pk_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dwh startdate', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dwh endate', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'indicator active', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dwh_process_run_id', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dwh_hash', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'dwh_hash'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'Project application key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'ak_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'project number', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'project_number'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'project name', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'project_name'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'project description', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'project_description'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'project contract duration', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'project_contract_duration'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'% winning change', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'winning_chance_percent'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'winning chance description', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'winning_chance_description'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'% change of going ahead', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'going_ahead_chance_percent'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'chance of going ahead description', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'going_ahead_chance_description'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'productgroups nl', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'productgroups_nl'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dredging categoy', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'dredging_categoy'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'tender type', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'tender_type'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'project primary key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'pk_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'record startdate', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'record endate', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'indicator active', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'proces run id of the synapse pipeline', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'hash of the columns that will be compared with the staged layer', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'dwh_hash'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Project application key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'ak_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'project number', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'project_number'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'project name', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'project_name'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'project description', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'project_description'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'project contract duration', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'project_contract_duration'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'% winning change', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'winning_chance_percent'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'winning chance description', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'winning_chance_description'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'% change of going ahead', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'going_ahead_chance_percent'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'chance of going ahead description', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'going_ahead_chance_description'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'productgroups nl', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'productgroups_nl'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'dredging categoy', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'dredging_categoy'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'tender type', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'tender_type'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1, 2, 3…', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'pk_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'26-05-2023', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'26-05-2023', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0/1', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FFF57AF8-D10A-EA11-A811-000D3A2C5614', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0xBF35F538E0E96618230E2FEA1CC000EA', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'dwh_hash'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1,2,3', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'ak_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'pk_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived from synapse pipeline', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'dwh_hash'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'ak_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'project_number'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'project_name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'project_description'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'project_contract_duration'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'winning_chance_percent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'winning_chance_description'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'going_ahead_chance_percent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'going_ahead_chance_description'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'productgroups_nl'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'dredging_categoy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'tender_type'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'ak_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'project_number'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'project_name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'project_description'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'project_contract_duration'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'winning_chance_percent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'winning_chance_description'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'going_ahead_chance_percent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'going_ahead_chance_description'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'productgroups_nl'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'dredging_categoy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'tender_type'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_project', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'ak_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_project', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'project_number'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_project', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'project_name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_project', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'project_description'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_project', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'project_contract_duration'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_project', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'winning_chance_percent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_project', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'winning_chance_description'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_project', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'going_ahead_chance_percent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_project', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'going_ahead_chance_description'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_project', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'productgroups_nl'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_project', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'dredging_categoy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_project', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'tender_type'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'projectid', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'ak_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'projectnumber', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'project_number'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'name', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'project_name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'projectdescription', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'project_description'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'durationofcontract', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'project_contract_duration'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'chanceofwinningcommercialposition_value', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'winning_chance_percent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'chanceofwinningcommercialposition_value', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'winning_chance_description'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'chanceofgoingahead_value', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'going_ahead_chance_percent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'chanceofgoingahead_value', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'going_ahead_chance_description'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'productgroupsnl_value', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'productgroups_nl'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'dredgingcategory_value', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'dredging_categoy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'tendertype_value', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'tender_type'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'ak_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'project_number'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'project_name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'project_description'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,1)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'project_contract_duration'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'winning_chance_percent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'winning_chance_description'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'going_ahead_chance_percent'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'going_ahead_chance_description'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'productgroups_nl'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'dredging_categoy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'tender_type'; 
GO
exec sys.sp_addextendedproperty @name=N'ETL Rules', @value=N'(if (chanceofwinningcommercialposition_value = Low then 5; Medium then 15; High then 33; Very High then 50; else 0)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'winning_chance_percent'; 
GO
exec sys.sp_addextendedproperty @name=N'ETL Rules', @value=N'if chanceofgoingahead_value = Low then 25; Medium then 50; High then 75; Very High then 100', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimProject', @level2type=N'COLUMN', @level2name=N'going_ahead_chance_percent'; 
GO
GO
