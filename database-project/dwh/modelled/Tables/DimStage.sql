CREATE TABLE modelled.DimStage (
   [pk_stage]  int IDENTITY  NOT NULL
,  [dwh_valid_from]  date   NOT NULL
,  [dwh_valid_to]  date   NULL
,  [dwh_active]  bit   NOT NULL
,  [dwh_process_run_id]  uniqueidentifier   NULL
,  [dwh_hash]  varbinary(8000)   NULL
,  [rk_stage]  int   NOT NULL
,  [statuscode]  nvarchar(4000)   NOT NULL
,  [typetender]  nvarchar(4000)   NOT NULL
,  [project_stage]  nvarchar(4000)   NULL
, CONSTRAINT [PK_modelled.DimStage] PRIMARY KEY CLUSTERED ([pk_stage] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100, DATA_COMPRESSION = PAGE))
GO

GO

exec sys.sp_addextendedproperty @name=N'Table Name', @value=N'DimStage', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=DimStage
GO
exec sys.sp_addextendedproperty @name=N'Table Type', @value=N'Dimension', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=DimStage
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'Stage', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=DimStage
GO
exec sys.sp_addextendedproperty @name=N'Database Schema', @value=N'modelled', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=DimStage
GO
exec sys.sp_addextendedproperty @name=N'Generate Script?', @value=N'N', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=DimStage
GO
GO

exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'stage key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimStage', @level2type=N'COLUMN', @level2name=N'pk_stage'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dwh startdate', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimStage', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dwh endate', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimStage', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'indicator active', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimStage', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dwh_process_run_id', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimStage', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dwh_hash', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimStage', @level2type=N'COLUMN', @level2name=N'dwh_hash'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'stage reference key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimStage', @level2type=N'COLUMN', @level2name=N'rk_stage'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'statuscode ', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimStage', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'typetender', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimStage', @level2type=N'COLUMN', @level2name=N'typetender'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'project stage', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimStage', @level2type=N'COLUMN', @level2name=N'project_stage'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Surrogate primary key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimStage', @level2type=N'COLUMN', @level2name=N'pk_stage'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'record startdate', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimStage', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'record endate', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimStage', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'indicator active', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimStage', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'proces run id of the synapse pipeline', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimStage', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'hash of the columns that will be compared with the staged layer', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimStage', @level2type=N'COLUMN', @level2name=N'dwh_hash'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Reference projectstage primary key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimStage', @level2type=N'COLUMN', @level2name=N'rk_stage'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'statuscode value of dynamics dyn project', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimStage', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'typetender value of dynamics dyn project', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimStage', @level2type=N'COLUMN', @level2name=N'typetender'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'project stage', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimStage', @level2type=N'COLUMN', @level2name=N'project_stage'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1, 2, 3…', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimStage', @level2type=N'COLUMN', @level2name=N'pk_stage'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'26-05-2023', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimStage', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'26-05-2023', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimStage', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0/1', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimStage', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FFF57AF8-D10A-EA11-A811-000D3A2C5614', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimStage', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0xBF35F538E0E96618230E2FEA1CC000EA', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimStage', @level2type=N'COLUMN', @level2name=N'dwh_hash'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1, 2, 3…', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimStage', @level2type=N'COLUMN', @level2name=N'rk_stage'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Tender', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimStage', @level2type=N'COLUMN', @level2name=N'project_stage'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimStage', @level2type=N'COLUMN', @level2name=N'pk_stage'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimStage', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimStage', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimStage', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived from synapse pipeline', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimStage', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimStage', @level2type=N'COLUMN', @level2name=N'dwh_hash'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimStage', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimStage', @level2type=N'COLUMN', @level2name=N'typetender'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Hardcoded', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimStage', @level2type=N'COLUMN', @level2name=N'project_stage'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimStage', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimStage', @level2type=N'COLUMN', @level2name=N'typetender'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_project', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimStage', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_project', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimStage', @level2type=N'COLUMN', @level2name=N'typetender'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'reference table?', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimStage', @level2type=N'COLUMN', @level2name=N'project_stage'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'statuscode_value', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimStage', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'tendertype_value', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimStage', @level2type=N'COLUMN', @level2name=N'typetender'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimStage', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimStage', @level2type=N'COLUMN', @level2name=N'typetender'; 
GO
GO
