CREATE TABLE processed.dyn_quantitiesequipment (
   [id]  bigint IDENTITY  NOT NULL
,  [dwh_valid_from]  date   NOT NULL
,  [dwh_valid_to]  date   NULL
,  [dwh_active]  bit   NOT NULL
,  [AK_quantitiesequipment]  nvarchar(36)   NULL
,  [name]  nvarchar(100)   NULL
,  [areaid]  nvarchar(36)   NULL
,  [areaid_value]  nvarchar(100)   NULL
,  [datefrom]  date   NULL
,  [dateto]  date   NULL
,  [equipmentid]  nvarchar(36)   NULL
,  [equipmentid_value]  nvarchar(100)   NULL
,  [equipmentother]  int   NULL
,  [equipmentother_value]  nvarchar(4000)   NULL
,  [equipmentremarks]  nvarchar(1000)   NULL
,  [equipmenttypeid]  nvarchar(36)   NULL
,  [equipmenttypeid_value]  nvarchar(100)   NULL
,  [fasttrack]  int   NULL
,  [fasttrack_value]  nvarchar(4000)   NULL
,  [groupid_value]  nvarchar(100)   NULL
,  [maxdepth]  decimal(18,2)   NULL
,  [mindepth]  decimal(18,2)   NULL
,  [nonstandardprojectid]  nvarchar(36)   NULL
,  [nonstandardprojectid_value]  nvarchar(200)   NULL
,  [number]  decimal(18,0)   NULL
,  [numberofequipment]  decimal(18,0)   NULL
,  [projectid]  nvarchar(36)   NULL
,  [projectid_value]  nvarchar(200)   NULL
,  [provoremarks]  nvarchar(4000)   NULL
,  [quantityvo]  decimal(18,0)   NULL
,  [scopeid_value]  nvarchar(100)   NULL
,  [soiltype]  int   NULL
,  [soiltype_value]  nvarchar(4000)   NULL
,  [unitid_value]  nvarchar(100)   NULL
,  [vobusinessunitid]  nvarchar(36)   NULL
,  [vobusinessunitid_value]  nvarchar(100)   NULL
,  [weeks]  int   NULL
,  [workelementid]  nvarchar(36)   NULL
,  [workelementid_value]  nvarchar(100)   NULL
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
, CONSTRAINT [PK_processed.dyn_quantitiesequipment] PRIMARY KEY CLUSTERED ([id] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100, DATA_COMPRESSION = PAGE)
);
GO

GO

exec sys.sp_addextendedproperty @name=N'Table Name', @value=N'dyn_quantitiesequipment', @level0type=N'SCHEMA', @level0name=processed, @level1type=N'TABLE', @level1name=dyn_quantitiesequipment
GO
exec sys.sp_addextendedproperty @name=N'Table Type', @value=N'Fact', @level0type=N'SCHEMA', @level0name=processed, @level1type=N'TABLE', @level1name=dyn_quantitiesequipment
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'quantitiesequipment', @level0type=N'SCHEMA', @level0name=processed, @level1type=N'TABLE', @level1name=dyn_quantitiesequipment
GO
exec sys.sp_addextendedproperty @name=N'Database Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=processed, @level1type=N'TABLE', @level1name=dyn_quantitiesequipment
GO
GO

exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'Primary key', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'id'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'valid_from', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'Valid_to', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'indicator active', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'Application ID', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'AK_quantitiesequipment'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Primary key', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'id'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Application id, unique identifier source', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'AK_quantitiesequipment'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Unique identifier for Area associated with Quantities & Equipment.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Indicate the start date when this equipment unit is required on site', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'datefrom'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Indicate the end date (completion of scope) for this equipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'dateto'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'State the name of equipment, choose option from drop down menu', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'equipmentid'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Specify the name of equipment and the owner', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'equipmentremarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Specify the type of equipment like: cutter, backhoe, flexible fall pipe vessel, choose option from drop down menu', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'equipmenttypeid'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'State the maximum waterdepth which is applicable for the scope', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'maxdepth'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'State the minimum waterdepth which is applicable for the scope', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'mindepth'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Unique identifier for Non Standard Project associated with Quantities & Equipment.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'nonstandardprojectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Specify the number of quantity to be installed for example: 20 No. infield cables of 500m length', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'number'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'State the number of units of equipment, like barges', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'numberofequipment'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'State the quantity', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'quantityvo'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'State the type of soil to be dredged', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'soiltype'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Unique identifier for Van Oord BU associated with Quantities & Equipment.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'vobusinessunitid'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Indicate the number of weeks on site', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'weeks'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Specify the type of service, see for options drop down menu and matrix work elements', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'workelementid'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'createdonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'importsequencenumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'modifiedonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'timezoneruleversionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'id'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2023-04-20', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2023-04-25', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FFFFD1B6-C38F-E811-8155-70106FAAB941', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'AK_quantitiesequipment'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Quantity & Equipment - Project "3632', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FE498CA7-90F8-E411-8109-C4346BACCE18', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'WICKS', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'areaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'01-05-2106', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'datefrom'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'02-08-2120', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'dateto'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FE9C1250-D577-E511-8121-C4346BAC7E10', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'equipmentid'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zoetermeer', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'equipmentid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'-1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'equipmentother'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Yes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'equipmentother_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zwerver 3', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'equipmentremarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FFB2BA06-D577-E511-8121-C4346BAC5E4C', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'equipmenttypeid'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Wind Installation Vessel', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'equipmenttypeid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'-1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'fasttrack'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Yes', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'fasttrack_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'WTG''s', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'groupid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'958.00', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'maxdepth'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'95.00', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'mindepth'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FFF6A5DD-5D9A-4EE8-A7DF-3ABE71AA1410', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'nonstandardprojectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Woningbouwplan Vossenburcht', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'nonstandardprojectid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'99', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'number'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'961', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'numberofequipment'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FFFD0F44-1982-E911-A978-000D3A3A14BE', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'projectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zwakke Schakels Noord Holland', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'projectid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Unknown - Unknown  (233403): Dinopot', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'provoremarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9991000', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'quantityvo'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Windpark', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'scopeid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'100000009', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'soiltype'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Sand', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'soiltype_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'week(s)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'unitid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'A63D9A42-8922-EC11-B6E6-6045BD887A95', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'vobusinessunitid'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Offshore Wind', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'vobusinessunitid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'98', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'weeks'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FDC8957A-151B-E511-80FC-C4346BACCE50', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'workelementid'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'WTG''s', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'workelementid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Sep 30 2022 12:14PM', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'createdonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'27', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'importsequencenumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Sep  7 2020 10:56AM', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'modifiedonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Inactive', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Inactive', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'6', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'timezoneruleversionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'87746023', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'id'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'AK_quantitiesequipment'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'areaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'datefrom'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'dateto'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'equipmentid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'equipmentid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'equipmentother'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'equipmentother_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'equipmentremarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'equipmenttypeid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'equipmenttypeid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'fasttrack'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'fasttrack_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'groupid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'maxdepth'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'mindepth'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'nonstandardprojectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'nonstandardprojectid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'number'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'numberofequipment'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'projectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'projectid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'provoremarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'quantityvo'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'scopeid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'soiltype'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'soiltype_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'unitid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'vobusinessunitid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'vobusinessunitid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'weeks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'workelementid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'workelementid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'createdonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'importsequencenumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'modifiedonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'timezoneruleversionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'AK_quantitiesequipment'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'areaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'datefrom'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'dateto'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'equipmentid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'equipmentid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'equipmentother'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'equipmentother_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'equipmentremarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'equipmenttypeid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'equipmenttypeid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'fasttrack'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'fasttrack_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'groupid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'maxdepth'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'mindepth'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'nonstandardprojectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'nonstandardprojectid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'number'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'numberofequipment'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'projectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'projectid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'provoremarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'quantityvo'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'scopeid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'soiltype'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'soiltype_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'unitid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'vobusinessunitid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'vobusinessunitid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'weeks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'workelementid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'workelementid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'createdonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'importsequencenumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'modifiedonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'timezoneruleversionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'AK_quantitiesequipment'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'areaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'datefrom'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'dateto'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'equipmentid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'equipmentid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'equipmentother'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'equipmentother_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'equipmentremarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'equipmenttypeid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'equipmenttypeid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'fasttrack'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'fasttrack_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'groupid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'maxdepth'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'mindepth'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'nonstandardprojectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'nonstandardprojectid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'number'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'numberofequipment'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'projectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'projectid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'provoremarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'quantityvo'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'scopeid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'soiltype'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'soiltype_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'unitid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'vobusinessunitid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'vobusinessunitid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'weeks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'workelementid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'workelementid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'createdonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'importsequencenumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'modifiedonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'timezoneruleversionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityQuantitiesEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_quantitiesequipmentid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'AK_quantitiesequipment'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_name', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_areaid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_areaid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'areaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_datefrom', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'datefrom'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_dateto', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'dateto'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_equipmentid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'equipmentid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_equipmentid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'equipmentid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_equipmentother', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'equipmentother'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_equipmentother_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'equipmentother_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_equipmentremarks', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'equipmentremarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_equipmenttypeid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'equipmenttypeid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_equipmenttypeid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'equipmenttypeid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_fasttrack', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'fasttrack'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_fasttrack_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'fasttrack_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_groupid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'groupid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_maxdepth', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'maxdepth'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_mindepth', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'mindepth'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_nonstandardprojectid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'nonstandardprojectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_nonstandardprojectid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'nonstandardprojectid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_number', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'number'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_numberofequipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'numberofequipment'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_projectid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'projectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_projectid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'projectid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_provoremarks', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'provoremarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_quantityvo', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'quantityvo'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_scopeid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'scopeid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_soiltype', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'soiltype'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_soiltype_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'soiltype_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_unitid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'unitid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_vobusinessunitid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'vobusinessunitid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_vobusinessunitid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'vobusinessunitid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_weeks', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'weeks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_workelementid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'workelementid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_workelementid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'workelementid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_createdby_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'createdon', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_createdonbehalfby_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'createdonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'importsequencenumber', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'importsequencenumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_modifiedby_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'modifiedon', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_modifiedonbehalfby_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'modifiedonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_ownerid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'statecode', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_statecode_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'statuscode', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_statuscode_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'timezoneruleversionnumber', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'timezoneruleversionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'versionnumber', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'AK_quantitiesequipment'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'areaid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'date', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'datefrom'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'date', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'dateto'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'equipmentid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'equipmentid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'equipmentother'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'equipmentother_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(1000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'equipmentremarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'equipmenttypeid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'equipmenttypeid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'fasttrack'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'fasttrack_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'groupid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,2)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'maxdepth'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,2)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'mindepth'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'nonstandardprojectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'nonstandardprojectid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'number'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'numberofequipment'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'projectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'projectid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'ntext', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'provoremarks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'quantityvo'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'scopeid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'soiltype'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'soiltype_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'unitid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'vobusinessunitid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'vobusinessunitid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'weeks'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'workelementid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'workelementid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'datetime', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'createdonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'importsequencenumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'datetime', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'modifiedonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'timezoneruleversionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'bigint', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'AK_quantitiesequipment'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'equipmentid'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'equipmenttypeid'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'nonstandardprojectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dymanics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'number'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'numberofequipment'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'projectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'numeric in dynamics', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'quantityvo'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'vobusinessunitid'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'workelementid'; 
GO
exec sys.sp_addextendedproperty @name=N'Comments', @value=N'refers to EntityArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'areaid'; 
GO
exec sys.sp_addextendedproperty @name=N'Comments', @value=N'refers to EntityEquipment', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'equipmentid'; 
GO
exec sys.sp_addextendedproperty @name=N'Comments', @value=N'refers to EntityEquipmentType', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'equipmenttypeid'; 
GO
exec sys.sp_addextendedproperty @name=N'Comments', @value=N'refers to EntityNonStandardProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'nonstandardprojectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Comments', @value=N'refers to EntityProject', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'projectid'; 
GO
exec sys.sp_addextendedproperty @name=N'Comments', @value=N'refers to EntityVOBusinessUnit', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'vobusinessunitid'; 
GO
exec sys.sp_addextendedproperty @name=N'Comments', @value=N'refers to EntityWorkelement', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_quantitiesequipment', @level2type=N'COLUMN', @level2name=N'workelementid'; 
GO
GO