CREATE TABLE processed.dyn_subarea (
   [id]  bigint IDENTITY  NOT NULL
,  [dwh_valid_from]  date   NOT NULL
,  [dwh_valid_to]  bit   NOT NULL
,  [dwh_active]  bit   NOT NULL
,  [AK_subarea]  nvarchar(36)   NULL
,  [name]  nvarchar(100)   NULL
,  [areaid]  nvarchar(36)   NULL
,  [areaid_value]  nvarchar(100)   NULL
,  [budirector_value]  nvarchar(200)   NULL
,  [businesscontrollerid_value]  nvarchar(200)   NULL
,  [deputybudirector_value]  nvarchar(200)   NULL
,  [deputydirectorid_value]  nvarchar(200)   NULL
,  [deputybusinesscontrollerid_value]  nvarchar(200)   NULL
,  [deputyebmemberid_value]  nvarchar(200)   NULL
,  [deputyfinancialdirectorid_value]  nvarchar(200)   NULL
,  [deputymanagerbusinesscontrolid_value]  nvarchar(200)   NULL
,  [deputymanagerid_value]  nvarchar(200)   NULL
,  [deputysbmemberid_value]  nvarchar(200)   NULL
,  [deputystaffdirectoreeid_value]  nvarchar(200)   NULL
,  [directorid_value]  nvarchar(200)   NULL
,  [ebmemberid_value]  nvarchar(200)   NULL
,  [financialdirectorid_value]  nvarchar(200)   NULL
,  [managerbusinesscontrolid_value]  nvarchar(200)   NULL
,  [managerid_value]  nvarchar(200)   NULL
,  [nextnumber]  int   NULL
,  [nextnumberid_value]  nvarchar(100)   NULL
,  [prefix]  nvarchar(20)   NULL
,  [sbmemberid_value]  nvarchar(200)   NULL
,  [staffdirectoreeid_value]  nvarchar(200)   NULL
,  [waitinghoursassignmentdeputy]  int   NULL
,  [waitinghoursreminderemail]  int   NULL
,  [waitinghoursreminderemaildeputy]  int   NULL
,  [createdby_value]  nvarchar(200)   NULL
,  [createdon]  datetime   NULL
,  [importsequencenumber]  int   NULL
,  [modifiedby_value]  nvarchar(200)   NULL
,  [modifiedon]  datetime   NULL
,  [ownerid_value]  nvarchar(200)   NULL
,  [statecode]  int   NULL
,  [statecode_value]  nvarchar(4000)   NULL
,  [statuscode]  int   NULL
,  [statuscode_value]  nvarchar(4000)   NULL
,  [versionnumber] BIGINT NULL,
    [Hash] VARBINARY(8000) NOT NULL,
    [ProcessRunID] UNIQUEIDENTIFIER NOT NULL
, CONSTRAINT [PK_processed.dyn_subarea] PRIMARY KEY CLUSTERED ([id] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100, DATA_COMPRESSION = PAGE)
);
GO

GO

exec sys.sp_addextendedproperty @name=N'Table Name', @value=N'dyn_subarea', @level0type=N'SCHEMA', @level0name=processed, @level1type=N'TABLE', @level1name=dyn_subarea
GO
exec sys.sp_addextendedproperty @name=N'Table Type', @value=N'Fact', @level0type=N'SCHEMA', @level0name=processed, @level1type=N'TABLE', @level1name=dyn_subarea
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'subarea', @level0type=N'SCHEMA', @level0name=processed, @level1type=N'TABLE', @level1name=dyn_subarea
GO
exec sys.sp_addextendedproperty @name=N'Database Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=processed, @level1type=N'TABLE', @level1name=dyn_subarea
GO
GO

exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'Primary key', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'id'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'valid_from', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'indicator active', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'indicator active', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'Application ID', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'AK_subarea'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Primary key', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'id'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Application id, unique identifier source', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'AK_subarea'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Unique identifier for Next Number associated with Sub Area / Product Group.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'nextnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Indicate after how many hours the approval request should be assigned to the deputy approver.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'waitinghoursassignmentdeputy'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Indicate after how many hours a reminder email should be sent to the initial approver.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'waitinghoursreminderemail'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Indicate after how many hours a reminder email should be sent to the deputy approver.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'waitinghoursreminderemaildeputy'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'importsequencenumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'id'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2023-04-20', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'D6820AA8-91F8-E411-8109-C4346BACCE18', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'AK_subarea'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'WICKS', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FE498CA7-90F8-E411-8109-C4346BACCE18', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'WICKS', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'areaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'budirector_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'businesscontrollerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputybudirector_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputydirectorid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputybusinesscontrollerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputyebmemberid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputyfinancialdirectorid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputymanagerbusinesscontrolid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputymanagerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputysbmemberid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputystaffdirectoreeid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'directorid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'ebmemberid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'financialdirectorid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'managerbusinesscontrolid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'managerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'4', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'nextnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Wicks', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'nextnumberid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'36', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'prefix'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'sbmemberid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'staffdirectoreeid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'48', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'waitinghoursassignmentdeputy'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'24', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'waitinghoursreminderemail'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'72', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'waitinghoursreminderemaildeputy'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Oct 20 2015  8:45PM', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'7', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'importsequencenumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'May 19 2020  1:54PM', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'# VO-SRV-CRM', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Inactive', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Inactive', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'94846757', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'id'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'AK_subarea'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'areaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'budirector_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'businesscontrollerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputybudirector_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputydirectorid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputybusinesscontrollerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputyebmemberid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputyfinancialdirectorid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputymanagerbusinesscontrolid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputymanagerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputysbmemberid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputystaffdirectoreeid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'directorid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'ebmemberid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'financialdirectorid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'managerbusinesscontrolid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'managerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'nextnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'nextnumberid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'prefix'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'sbmemberid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'staffdirectoreeid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'waitinghoursassignmentdeputy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'waitinghoursreminderemail'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'waitinghoursreminderemaildeputy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'importsequencenumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'AK_subarea'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'areaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'budirector_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'businesscontrollerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputybudirector_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputydirectorid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputybusinesscontrollerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputyebmemberid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputyfinancialdirectorid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputymanagerbusinesscontrolid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputymanagerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputysbmemberid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputystaffdirectoreeid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'directorid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'ebmemberid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'financialdirectorid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'managerbusinesscontrolid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'managerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'nextnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'nextnumberid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'prefix'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'sbmemberid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'staffdirectoreeid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'waitinghoursassignmentdeputy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'waitinghoursreminderemail'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'waitinghoursreminderemaildeputy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'importsequencenumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntitySubArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'AK_subarea'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntitySubArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntitySubArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntitySubArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'areaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntitySubArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'budirector_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntitySubArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'businesscontrollerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntitySubArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputybudirector_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntitySubArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputydirectorid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntitySubArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputybusinesscontrollerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntitySubArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputyebmemberid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntitySubArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputyfinancialdirectorid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntitySubArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputymanagerbusinesscontrolid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntitySubArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputymanagerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntitySubArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputysbmemberid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntitySubArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputystaffdirectoreeid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntitySubArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'directorid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntitySubArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'ebmemberid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntitySubArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'financialdirectorid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntitySubArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'managerbusinesscontrolid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntitySubArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'managerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntitySubArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'nextnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntitySubArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'nextnumberid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntitySubArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'prefix'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntitySubArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'sbmemberid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntitySubArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'staffdirectoreeid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntitySubArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'waitinghoursassignmentdeputy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntitySubArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'waitinghoursreminderemail'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntitySubArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'waitinghoursreminderemaildeputy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntitySubArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntitySubArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntitySubArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'importsequencenumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntitySubArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntitySubArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntitySubArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntitySubArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntitySubArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntitySubArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntitySubArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntitySubArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_subareaid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'AK_subarea'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_name', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_areaid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_areaid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'areaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_budirector_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'budirector_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_businesscontrollerid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'businesscontrollerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_deputybudirector_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputybudirector_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_deputydirectorid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputydirectorid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_deputybusinesscontrollerid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputybusinesscontrollerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_deputyebmemberid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputyebmemberid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_deputyfinancialdirectorid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputyfinancialdirectorid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_deputymanagerbusinesscontrolid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputymanagerbusinesscontrolid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_deputymanagerid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputymanagerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_deputysbmemberid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputysbmemberid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_deputystaffdirectoreeid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputystaffdirectoreeid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_directorid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'directorid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_ebmemberid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'ebmemberid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_financialdirectorid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'financialdirectorid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_managerbusinesscontrolid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'managerbusinesscontrolid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_managerid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'managerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_nextnumber', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'nextnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_nextnumberid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'nextnumberid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_prefix', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'prefix'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_sbmemberid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'sbmemberid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_staffdirectoreeid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'staffdirectoreeid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_waitinghoursassignmentdeputy', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'waitinghoursassignmentdeputy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_waitinghoursreminderemail', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'waitinghoursreminderemail'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_waitinghoursreminderemaildeputy', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'waitinghoursreminderemaildeputy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_createdby_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'createdon', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'importsequencenumber', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'importsequencenumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_modifiedby_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'modifiedon', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_ownerid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'statecode', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_statecode_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'statuscode', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_statuscode_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'versionnumber', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'AK_subarea'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'areaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'budirector_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'businesscontrollerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputybudirector_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputydirectorid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputybusinesscontrollerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputyebmemberid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputyfinancialdirectorid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputymanagerbusinesscontrolid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputymanagerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputysbmemberid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'deputystaffdirectoreeid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'directorid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'ebmemberid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'financialdirectorid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'managerbusinesscontrolid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'managerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'nextnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'nextnumberid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(20)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'prefix'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'sbmemberid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'staffdirectoreeid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'waitinghoursassignmentdeputy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'waitinghoursreminderemail'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'waitinghoursreminderemaildeputy'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'datetime', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'importsequencenumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'datetime', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'bigint', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'AK_subarea'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Comments', @value=N'refers to EntityArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_subarea', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
GO