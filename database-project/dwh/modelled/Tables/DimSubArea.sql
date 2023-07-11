/* Drop table modelled.DimSubArea */
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'modelled.DimSubArea') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE modelled.DimSubArea 
GO

/* Create table modelled.DimSubArea */
CREATE TABLE modelled.DimSubArea (
   [pk_subarea]  int IDENTITY  NOT NULL
,  [dwh_valid_from]  date   NOT NULL
,  [dwh_valid_to]  date   NULL
,  [dwh_active]  bit   NOT NULL
,  [ak_subarea]  nvarchar(36)   NOT NULL
,  [subarea_name]  nvarchar(100)   NULL
, CONSTRAINT [PK_modelled.DimSubArea] PRIMARY KEY CLUSTERED ([pk_subarea] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100, DATA_COMPRESSION = PAGE) )
GO

exec sys.sp_addextendedproperty @name=N'Table Name', @value=N'DimSubArea', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=DimSubArea
GO
exec sys.sp_addextendedproperty @name=N'Table Type', @value=N'Dimension', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=DimSubArea
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'SubArea', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=DimSubArea
GO
exec sys.sp_addextendedproperty @name=N'Database Schema', @value=N'modelled', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=DimSubArea
GO
GO

exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'subarea primary key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimSubArea', @level2type=N'COLUMN', @level2name=N'pk_subarea'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dwh startdate', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimSubArea', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dwh endate', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimSubArea', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'indicator active', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimSubArea', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'subarea application key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimSubArea', @level2type=N'COLUMN', @level2name=N'ak_subarea'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'subarea name', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimSubArea', @level2type=N'COLUMN', @level2name=N'subarea_name'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'subarea primary key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimSubArea', @level2type=N'COLUMN', @level2name=N'pk_subarea'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'record startdate', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimSubArea', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'record endate', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimSubArea', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'indicator active', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimSubArea', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'subarea application key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimSubArea', @level2type=N'COLUMN', @level2name=N'ak_subarea'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'subarea name', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimSubArea', @level2type=N'COLUMN', @level2name=N'subarea_name'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1, 2, 3…', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimSubArea', @level2type=N'COLUMN', @level2name=N'pk_subarea'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'26-05-2023', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimSubArea', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'26-05-2023', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimSubArea', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0/1', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimSubArea', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimSubArea', @level2type=N'COLUMN', @level2name=N'pk_subarea'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimSubArea', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimSubArea', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimSubArea', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimSubArea', @level2type=N'COLUMN', @level2name=N'ak_subarea'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimSubArea', @level2type=N'COLUMN', @level2name=N'subarea_name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'Staged', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimSubArea', @level2type=N'COLUMN', @level2name=N'ak_subarea'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'Staged', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimSubArea', @level2type=N'COLUMN', @level2name=N'subarea_name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'Subarea', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimSubArea', @level2type=N'COLUMN', @level2name=N'ak_subarea'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'Subarea', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimSubArea', @level2type=N'COLUMN', @level2name=N'subarea_name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'Subareaid', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimSubArea', @level2type=N'COLUMN', @level2name=N'ak_subarea'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'name', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimSubArea', @level2type=N'COLUMN', @level2name=N'subarea_name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimSubArea', @level2type=N'COLUMN', @level2name=N'ak_subarea'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'DimSubArea', @level2type=N'COLUMN', @level2name=N'subarea_name'; 
GO