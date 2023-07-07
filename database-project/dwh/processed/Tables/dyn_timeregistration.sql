CREATE TABLE processed.dyn_timeregistration (
   [id]  bigint IDENTITY  NOT NULL
,  [dwh_valid_from]  date   NOT NULL
,  [dwh_valid_to]  date   NULL
,  [dwh_active]  bit   NOT NULL
,  [AK_timeregistration]  nvarchar(36)   NULL
,  [name]  nvarchar(100)   NULL
,  [endtime]  datetime   NULL
,  [entity]  nvarchar(100)   NULL
,  [nonstandardprojectid]  nvarchar(36)   NULL
,  [nonstandardprojectid_value]  nvarchar(200)   NULL
,  [projectid]  nvarchar(36)   NULL
,  [projectid_value]  nvarchar(200)   NULL
,  [recordid]  nvarchar(100)   NULL
,  [recordname]  nvarchar(100)   NULL
,  [stage]  nvarchar(100)   NULL
,  [starttime]  datetime   NULL
,  [createdby_value]  nvarchar(200)   NULL
,  [createdon]  datetime   NULL
,  [createdonbehalfby_value]  nvarchar(200)   NULL
,  [importsequencenumber]  int   NULL
,  [modifiedby_value]  nvarchar(200)   NULL
,  [modifiedon]  datetime   NULL
,  [modifiedonbehalfby_value]  nvarchar(200)   NULL
,  [ownerid_value]  nvarchar(200)   NULL
,  [statecode]  int   NULL
,  [statecode_value]  nvarchar(4000)   NULL
,  [statuscode]  int   NULL
,  [statuscode_value]  nvarchar(4000)   NULL
,  [timezoneruleversionnumber]  int   NULL
,  [versionnumber] BIGINT NULL,
    [Hash] VARBINARY(8000) NOT NULL,
    [ProcessRunID] UNIQUEIDENTIFIER NOT NULL
, CONSTRAINT [PK_processed.dyn_timeregistration] PRIMARY KEY CLUSTERED ([id] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100, DATA_COMPRESSION = PAGE)
);
GO

GO

exec sys.sp_addextendedproperty @name=N'Table Name', @value=N'dyn_timeregistration', @level0type=N'SCHEMA', @level0name=processed, @level1type=N'TABLE', @level1name=dyn_timeregistration
GO
exec sys.sp_addextendedproperty @name=N'Table Type', @value=N'Fact', @level0type=N'SCHEMA', @level0name=processed, @level1type=N'TABLE', @level1name=dyn_timeregistration
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'timeregistration', @level0type=N'SCHEMA', @level0name=processed, @level1type=N'TABLE', @level1name=dyn_timeregistration
GO
exec sys.sp_addextendedproperty @name=N'Database Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=processed, @level1type=N'TABLE', @level1name=dyn_timeregistration
GO
GO

exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'Primary key', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'id'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'valid_from', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'Valid_to', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'indicator active', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'Application ID', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'AK_timeregistration'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Primary key', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'id'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Application id, unique identifier source', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'AK_timeregistration'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Unique identifier for Non Standard Project associated with Time registration.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'nonstandardprojectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Unique identifier for Project associated with Time registration.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'projectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'createdonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'importsequencenumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'modifiedonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'timezoneruleversionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'id'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2023-04-20', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2023-04-25', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FFFD1221-4A28-EB11-A81D-000D3A2C5ED7', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'AK_timeregistration'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zwolse Hoek Urk', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Sep 30 2022 12:13PM', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'endtime'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Project', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'entity'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FFF6A5DD-5D9A-4EE8-A7DF-3ABE71AA1410', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'nonstandardprojectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zuidersluis IJmuiden', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'nonstandardprojectid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FFFD461A-DD78-E511-8122-C4346BAC7E10', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'projectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zwolse Hoek Urk', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'projectid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zwolse Hoek Urk', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'recordid'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zwolse Hoek Urk', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'recordname'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Unsuccessful Tender', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'stage'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Sep 30 2022 12:13PM', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'starttime'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Sep 30 2022 12:13PM', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'createdonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'24', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'importsequencenumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'SYSTEM', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Sep 10 2020  9:41AM', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'modifiedonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Active', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Active', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'timezoneruleversionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'87746013', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'id'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'AK_timeregistration'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'endtime'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'entity'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'nonstandardprojectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'nonstandardprojectid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'projectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'projectid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'recordid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'recordname'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'stage'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'starttime'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'createdonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'importsequencenumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'modifiedonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'timezoneruleversionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'AK_timeregistration'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'endtime'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'entity'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'nonstandardprojectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'nonstandardprojectid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'projectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'projectid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'recordid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'recordname'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'stage'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'starttime'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'createdonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'importsequencenumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'modifiedonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'timezoneruleversionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityTimeRegistration', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'AK_timeregistration'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityTimeRegistration', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityTimeRegistration', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'endtime'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityTimeRegistration', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'entity'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityTimeRegistration', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'nonstandardprojectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityTimeRegistration', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'nonstandardprojectid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityTimeRegistration', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'projectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityTimeRegistration', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'projectid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityTimeRegistration', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'recordid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityTimeRegistration', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'recordname'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityTimeRegistration', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'stage'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityTimeRegistration', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'starttime'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityTimeRegistration', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityTimeRegistration', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityTimeRegistration', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'createdonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityTimeRegistration', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'importsequencenumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityTimeRegistration', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityTimeRegistration', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityTimeRegistration', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'modifiedonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityTimeRegistration', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityTimeRegistration', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityTimeRegistration', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityTimeRegistration', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityTimeRegistration', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityTimeRegistration', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'timezoneruleversionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityTimeRegistration', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_timeregistrationid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'AK_timeregistration'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_name', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_endtime', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'endtime'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_entity', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'entity'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_nonstandardprojectid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'nonstandardprojectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_nonstandardprojectid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'nonstandardprojectid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_projectid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'projectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_projectid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'projectid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_recordid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'recordid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_recordname', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'recordname'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_stage', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'stage'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_starttime', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'starttime'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_createdby_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'createdon', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_createdonbehalfby_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'createdonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'importsequencenumber', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'importsequencenumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_modifiedby_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'modifiedon', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_modifiedonbehalfby_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'modifiedonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_ownerid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'statecode', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_statecode_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'statuscode', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_statuscode_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'timezoneruleversionnumber', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'timezoneruleversionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'versionnumber', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'AK_timeregistration'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'datetime', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'endtime'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'entity'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'nonstandardprojectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'nonstandardprojectid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'projectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'projectid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'recordid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'recordname'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'stage'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'datetime', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'starttime'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'datetime', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'createdonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'importsequencenumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'datetime', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'modifiedonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'timezoneruleversionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'bigint', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'AK_timeregistration'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'nonstandardprojectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'projectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Comments', @value=N'refers to EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'nonstandardprojectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Comments', @value=N'refers to EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_timeregistration', @level2type=N'COLUMN', @level2name=N'projectid'; 
GO
GO