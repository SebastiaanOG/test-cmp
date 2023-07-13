CREATE TABLE processed.dyn_projectgeneral (
   [id]  bigint IDENTITY  NOT NULL
,  [dwh_valid_from]  date   NOT NULL
,  [dwh_valid_to]  date   NULL
,  [dwh_active]  bit   NOT NULL
,  [dwh_proces_run_id]  uniqueidentifier   NULL
,  [dwh_hash]  varbinary(8000)   NULL
,  [ak_projectgeneral]  nvarchar(36)   NULL
,  [projectnumber]  nvarchar(100)   NULL
,  [name]  nvarchar(200)   NULL
,  [area2ndid]  nvarchar(36)   NULL
,  [area2ndid_value]  nvarchar(100)   NULL
,  [areaid]  nvarchar(36)   NULL
,  [areaid_value]  nvarchar(100)   NULL
,  [awarddateexpected]  date   NULL
,  [businessunit2ndid]  nvarchar(36)   NULL
,  [businessunit2ndid_value]  nvarchar(100)   NULL
,  [commercialresponsibleid_value]  nvarchar(200)   NULL
,  [countryid]  nvarchar(36)   NULL
,  [countryid_value]  nvarchar(100)   NULL
,  [durationofcontract]  decimal(18,1)   NULL
,  [expectedstartofwork]  date   NULL
,  [latitude]  float   NULL
,  [latitudedegrees]  decimal(18,0)   NULL
,  [latitudedms]  nvarchar(20)   NULL
,  [latitudeminutes]  decimal(18,0)   NULL
,  [atitudenorthsouth]  int   NULL
,  [latitudenorthsouth_value]  nvarchar(4000)   NULL
,  [latitudeseconds]  decimal(18,0)   NULL
,  [location]  nvarchar(100)   NULL
,  [longitude]  float   NULL
,  [longitudedegrees]  decimal(18,0)   NULL
,  [longitudedms]  nvarchar(20)   NULL
,  [longitudeeastwest]  int   NULL
,  [longitudeeastwest_value]  nvarchar(4000)   NULL
,  [longitudeminutes]  decimal(18,0)   NULL
,  [longitudeseconds]  decimal(18,0)   NULL
,  [nonstandardproject]  nvarchar(36)   NULL
,  [nonstandardproject_value]  nvarchar(200)   NULL
,  [pq]  int   NULL
,  [pq_value]  nvarchar(4000)   NULL
,  [project]  nvarchar(36)   NULL
,  [project_value]  nvarchar(200)   NULL
,  [projectawarded]  int   NULL
,  [projectawarded_value]  nvarchar(4000)   NULL
,  [startoftender]  date   NULL
,  [subarea2ndid]  nvarchar(36)   NULL
,  [subarea2ndid_value]  nvarchar(100)   NULL
,  [subareaid]  nvarchar(36)   NULL
,  [subareaid_value]  nvarchar(100)   NULL
,  [tenderdate]  date   NULL
,  [vobusinessunitid]  nvarchar(36)   NULL
,  [vobusinessunitid_value]  nvarchar(100)   NULL
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
,  [timezoneruleversionnumber]  int   NULL
,  [versionnumber]  bigint   NULL
, CONSTRAINT [PK_processed.dyn_projectgeneral] PRIMARY KEY CLUSTERED ([id] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100, DATA_COMPRESSION = PAGE) ON [DATA])
 ON [DATA]
GO

GO

exec sys.sp_addextendedproperty @name=N'Table Name', @value=N'dyn_projectgeneral', @level0type=N'SCHEMA', @level0name=processed, @level1type=N'TABLE', @level1name=dyn_projectgeneral
GO
exec sys.sp_addextendedproperty @name=N'Table Type', @value=N'Fact', @level0type=N'SCHEMA', @level0name=processed, @level1type=N'TABLE', @level1name=dyn_projectgeneral
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'projectgeneral', @level0type=N'SCHEMA', @level0name=processed, @level1type=N'TABLE', @level1name=dyn_projectgeneral
GO
exec sys.sp_addextendedproperty @name=N'Database Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=processed, @level1type=N'TABLE', @level1name=dyn_projectgeneral
GO
exec sys.sp_addextendedproperty @name=N'Generate Script?', @value=N'N', @level0type=N'SCHEMA', @level0name=processed, @level1type=N'TABLE', @level1name=dyn_projectgeneral
GO
GO

exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'Primary key', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'id'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'valid_from', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'Valid_to', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'indicator active', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dwh_proces_run_id', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'dwh_proces_run_id'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dwh_hash', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'dwh_hash'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'Application ID', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'ak_projectgeneral'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'GUID not used', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'businessunit2ndid'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Primary key', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'id'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'proces run id of the synapse pipeline', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'dwh_proces_run_id'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'hash of the columns that will be compared with the staged layer', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'dwh_hash'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Application id, unique identifier source', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'ak_projectgeneral'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'importsequencenumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'timezoneruleversionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'id'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2023-04-20', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2023-04-25', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FFF57AF8-D10A-EA11-A811-000D3A2C5614', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'dwh_proces_run_id'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0xBF35F538E0E96618230E2FEA1CC000EA', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'dwh_hash'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FFC7B168-87CA-ED11-B597-6045BD8958C6', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'ak_projectgeneral'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'W0497', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'projectnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zwolse Hoek Urk', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FE498CA7-90F8-E411-8109-C4346BACCE18', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'area2ndid'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Offshore', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'area2ndid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FE498CA7-90F8-E411-8109-C4346BACCE18', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'WICKS', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'areaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'01-01-2034', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'awarddateexpected'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'A63D9A42-8922-EC11-B6E6-6045BD887A95', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'businessunit2ndid'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Offshore', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'businessunit2ndid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'commercialresponsibleid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FEC2BBF8-90F8-E411-810E-C4346BACCC0C', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'countryid'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zimbabwe', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'countryid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'99999.0', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'durationofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'31-12-2035', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'expectedstartofwork'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'998222', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'latitude'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'latitudedegrees'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'N 6103183', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'latitudedms'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'latitudeminutes'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000001', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'atitudenorthsouth'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'South', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'latitudenorthsouth_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'latitudeseconds'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zws Vlaanderen en Walcheren', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'location'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'998572', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'longitude'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'99', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'longitudedegrees'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'E 387658', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'longitudedms'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000001', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'longitudeeastwest'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'West', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'longitudeeastwest_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'longitudeminutes'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'longitudeseconds'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FF280F56-9887-4FEE-94D2-AAB885EA9912', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'nonstandardproject'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zuidersluis IJmuiden', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'nonstandardproject_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'-1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'pq'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Yes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'pq_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FFFD461A-DD78-E511-8122-C4346BAC7E10', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'project'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zwolse Hoek Urk', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'project_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'-1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'projectawarded'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Yes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'projectawarded_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'01-07-2030', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'startoftender'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'C0820AA8-91F8-E411-8109-C4346BACCE18', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'subarea2ndid'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'United Kingdom & Ireland', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'subarea2ndid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'D6820AA8-91F8-E411-8109-C4346BACCE18', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'subareaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'West Asia', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'subareaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'31-12-2030', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'tenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'A63D9A42-8922-EC11-B6E6-6045BD887A95', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'vobusinessunitid'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Offshore Wind', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'vobusinessunitid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Mar 31 2023  6:14AM', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'103', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'importsequencenumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Mar 31 2023 11:48AM', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Inactive', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Inactive', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'timezoneruleversionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'153671650', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'id'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived from synapse pipeline', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'dwh_proces_run_id'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'dwh_hash'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'ak_projectgeneral'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'projectnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'area2ndid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'area2ndid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'areaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'awarddateexpected'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'businessunit2ndid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'businessunit2ndid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'commercialresponsibleid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'countryid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'countryid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'durationofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'expectedstartofwork'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'latitude'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'latitudedegrees'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'latitudedms'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'latitudeminutes'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'atitudenorthsouth'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'latitudenorthsouth_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'latitudeseconds'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'location'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'longitude'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'longitudedegrees'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'longitudedms'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'longitudeeastwest'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'longitudeeastwest_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'longitudeminutes'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'longitudeseconds'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'nonstandardproject'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'nonstandardproject_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'pq'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'pq_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'project'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'project_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'projectawarded'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'projectawarded_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'startoftender'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'subarea2ndid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'subarea2ndid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'subareaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'subareaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'tenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'vobusinessunitid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'vobusinessunitid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'importsequencenumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'timezoneruleversionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'ak_projectgeneral'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'projectnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'area2ndid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'area2ndid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'areaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'awarddateexpected'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'businessunit2ndid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'businessunit2ndid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'commercialresponsibleid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'countryid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'countryid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'durationofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'expectedstartofwork'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'latitude'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'latitudedegrees'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'latitudedms'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'latitudeminutes'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'atitudenorthsouth'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'latitudenorthsouth_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'latitudeseconds'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'location'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'longitude'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'longitudedegrees'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'longitudedms'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'longitudeeastwest'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'longitudeeastwest_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'longitudeminutes'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'longitudeseconds'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'nonstandardproject'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'nonstandardproject_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'pq'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'pq_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'project'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'project_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'projectawarded'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'projectawarded_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'startoftender'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'subarea2ndid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'subarea2ndid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'subareaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'subareaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'tenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'vobusinessunitid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'vobusinessunitid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'importsequencenumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'timezoneruleversionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'ak_projectgeneral'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'projectnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'area2ndid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'area2ndid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'areaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'awarddateexpected'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'businessunit2ndid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'businessunit2ndid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'commercialresponsibleid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'countryid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'countryid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'durationofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'expectedstartofwork'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'latitude'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'latitudedegrees'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'latitudedms'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'latitudeminutes'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'atitudenorthsouth'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'latitudenorthsouth_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'latitudeseconds'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'location'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'longitude'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'longitudedegrees'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'longitudedms'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'longitudeeastwest'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'longitudeeastwest_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'longitudeminutes'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'longitudeseconds'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'nonstandardproject'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'nonstandardproject_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'pq'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'pq_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'project'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'project_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'projectawarded'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'projectawarded_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'startoftender'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'subarea2ndid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'subarea2ndid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'subareaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'subareaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'tenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'vobusinessunitid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'vobusinessunitid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'importsequencenumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'timezoneruleversionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityProjectGeneral', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_projectgeneralid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'ak_projectgeneral'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_projectnumber', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'projectnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_name', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_area2ndid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'area2ndid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_area2ndid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'area2ndid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_areaid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_areaid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'areaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_awarddateexpected', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'awarddateexpected'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_businessunit2ndid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'businessunit2ndid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_businessunit2ndid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'businessunit2ndid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_commercialresponsibleid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'commercialresponsibleid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_countryid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'countryid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_countryid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'countryid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_durationofcontract', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'durationofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_expectedstartofwork', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'expectedstartofwork'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_latitude', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'latitude'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_latitudedegrees', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'latitudedegrees'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_latitudedms', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'latitudedms'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_latitudeminutes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'latitudeminutes'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_latitudenorthsouth', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'atitudenorthsouth'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_latitudenorthsouth_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'latitudenorthsouth_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_latitudeseconds', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'latitudeseconds'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_location', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'location'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_longitude', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'longitude'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_longitudedegrees', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'longitudedegrees'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_longitudedms', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'longitudedms'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_longitudeeastwest', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'longitudeeastwest'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_longitudeeastwest_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'longitudeeastwest_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_longitudeminutes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'longitudeminutes'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_longitudeseconds', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'longitudeseconds'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_nonstandardproject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'nonstandardproject'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_nonstandardproject_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'nonstandardproject_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_pq', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'pq'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_pq_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'pq_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_project', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'project'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_project_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'project_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_projectawarded', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'projectawarded'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_projectawarded_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'projectawarded_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_startoftender', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'startoftender'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_subarea2ndid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'subarea2ndid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_subarea2ndid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'subarea2ndid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_subareaid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'subareaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_subareaid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'subareaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_tenderdate', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'tenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_vobusinessunitid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'vobusinessunitid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_vobusinessunitid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'vobusinessunitid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_createdby_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'createdon', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'importsequencenumber', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'importsequencenumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_modifiedby_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'modifiedon', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_ownerid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'statecode', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_statecode_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'statuscode', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_statuscode_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'timezoneruleversionnumber', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'timezoneruleversionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'versionnumber', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'ak_projectgeneral'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'projectnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'area2ndid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'area2ndid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'areaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'date', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'awarddateexpected'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'businessunit2ndid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'businessunit2ndid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'commercialresponsibleid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'countryid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'countryid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,1)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'durationofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'date', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'expectedstartofwork'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'float', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'latitude'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'latitudedegrees'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(20)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'latitudedms'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'latitudeminutes'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'atitudenorthsouth'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'latitudenorthsouth_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'latitudeseconds'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'location'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'float', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'longitude'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'longitudedegrees'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(20)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'longitudedms'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'longitudeeastwest'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'longitudeeastwest_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'longitudeminutes'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'longitudeseconds'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'nonstandardproject'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'nonstandardproject_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'pq'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'pq_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'project'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'project_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'projectawarded'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'projectawarded_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'date', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'startoftender'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'subarea2ndid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'subarea2ndid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'subareaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'subareaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'date', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'tenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'vobusinessunitid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'vobusinessunitid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'datetime', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'importsequencenumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'datetime', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'timezoneruleversionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'bigint', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'ak_projectgeneral'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'area2ndid'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'businessunit2ndid'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'countryid'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'durationofcontract'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'latitudedegrees'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'latitudeminutes'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'latitudeseconds'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'longitudedegrees'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'longitudeminutes'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'longitudeseconds'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'nonstandardproject'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'project'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'subarea2ndid'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'subareaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'vobusinessunitid'; 
GO
exec sys.sp_addextendedproperty @name=N'Comments', @value=N'refers to EntityArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'area2ndid'; 
GO
exec sys.sp_addextendedproperty @name=N'Comments', @value=N'refers to EntityArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Comments', @value=N'refers to EntityVOBusinessUnit', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'businessunit2ndid'; 
GO
exec sys.sp_addextendedproperty @name=N'Comments', @value=N'refers to EntityCountry', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'countryid'; 
GO
exec sys.sp_addextendedproperty @name=N'Comments', @value=N'refers to EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'nonstandardproject'; 
GO
exec sys.sp_addextendedproperty @name=N'Comments', @value=N'refers to EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'project'; 
GO
exec sys.sp_addextendedproperty @name=N'Comments', @value=N'refers to EntitySubArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'subarea2ndid'; 
GO
exec sys.sp_addextendedproperty @name=N'Comments', @value=N'refers to EntitySubArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'subareaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Comments', @value=N'refers to EntityVOBusinessUnit', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_projectgeneral', @level2type=N'COLUMN', @level2name=N'vobusinessunitid'; 
GO
GO
