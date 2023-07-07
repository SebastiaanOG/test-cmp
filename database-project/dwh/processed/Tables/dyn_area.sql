CREATE TABLE [processed].[dyn_area] (
    [id] BIGINT IDENTITY NOT NULL,
    [dwh_valid_from] DATE NOT NULL,
    [dwh_valid_to] DATE NULL,
    [dwh_active] BIT NOT NULL,
    [AK_area] NVARCHAR(36) NULL,
    [name] NVARCHAR(100) NULL,
    [areaabbreviation] NVARCHAR(20) NULL,
    [businessunitid] NVARCHAR(36) NULL,
    [businessunitid_value] NVARCHAR(100) NULL,
    [financialprojectsowner_value] NVARCHAR(160) NULL,
    [hoursreminderdeputy] INT NULL,
    [nspowner_value] NVARCHAR(160) NULL,
    [waitinghours] INT NULL,
    [waitinghoursreminderemail] INT NULL,
    [createdby_value] NVARCHAR(200) NULL,
    [createdon] datetime NULL,
    [importsequencenumber] INT NULL,
    [modifiedby_value] NVARCHAR(200) NULL,
    [modifiedon] datetime NULL,
    [ownerid_value] NVARCHAR(200) NULL,
    [statecode_value] NVARCHAR(4000) NULL,
    [statuscode] INT NULL,
    [statuscode_value] NVARCHAR(4000) NULL,
    [versionnumber] BIGINT NULL,
    [Hash] VARBINARY(8000) NOT NULL,
    [ProcessRunID] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [PK_processed.dyn_area] PRIMARY KEY CLUSTERED ([id] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100, DATA_COMPRESSION = PAGE)
);
GO

exec sys.sp_addextendedproperty @name=N'Table Name', @value=N'dyn_area', @level0type=N'SCHEMA', @level0name=processed, @level1type=N'TABLE', @level1name=dyn_area;
GO
exec sys.sp_addextendedproperty @name=N'Table Type', @value=N'Fact', @level0type=N'SCHEMA', @level0name=processed, @level1type=N'TABLE', @level1name=dyn_area;
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'area', @level0type=N'SCHEMA', @level0name=processed, @level1type=N'TABLE', @level1name=dyn_area;
GO
exec sys.sp_addextendedproperty @name=N'Database Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=processed, @level1type=N'TABLE', @level1name=dyn_area;
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'Primary key', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'id';
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'valid_from', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'dwh_valid_from';
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'Valid_to', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'dwh_valid_to';
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'indicator active', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'dwh_active';
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'Application ID', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'AK_area';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Primary key', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'id';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Application id, unique identifier source', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'AK_area';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Unique identifier for Van Oord Business Unit associated with Area.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'businessunitid';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'createdby_value';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'createdon';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'importsequencenumber';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'modifiedby_value';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'modifiedon';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'ownerid_value';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'statecode_value';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'statuscode';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'statuscode_value';
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'versionnumber';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'id';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2023-04-20', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'dwh_valid_from';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2023-04-25', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'dwh_valid_to';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'dwh_active';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FE498CA7-90F8-E411-8109-C4346BACCE18', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'AK_area';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'WICKS', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'name';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'WICKS', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'areaabbreviation';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'A63D9A42-8922-EC11-B6E6-6045BD887A95', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'businessunitid';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Offshore Wind', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'businessunitid_value';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'@VOOW - Offshore Wind - Financial - ', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'financialprojectsowner_value';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'72', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'hoursreminderdeputy';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'@VOOW - Offshore Wind - Project - RO', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'nspowner_value';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'48', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'waitinghours';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'24', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'waitinghoursreminderemail';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'createdby_value';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Oct 20 2015  8:38PM', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'createdon';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'5', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'importsequencenumber';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'# VO-SRV-CRM', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'modifiedby_value';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Mar 24 2023  1:18PM', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'modifiedon';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N' @VOOW - Offshore Wind - Project - RO', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'ownerid_value';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Active', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'statecode_value';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'statuscode';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Active', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'statuscode_value';
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'147548534', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'versionnumber';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'id';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'dwh_valid_from';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'dwh_valid_to';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'dwh_active';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'AK_area';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'name';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'areaabbreviation';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'businessunitid';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'businessunitid_value';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'financialprojectsowner_value';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'hoursreminderdeputy';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'nspowner_value';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'waitinghours';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'waitinghoursreminderemail';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'createdby_value';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'createdon';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'importsequencenumber';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'modifiedby_value';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'modifiedon';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'ownerid_value';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'statecode_value';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'statuscode';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'statuscode_value';
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'versionnumber';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'AK_area';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'name';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'areaabbreviation';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'businessunitid';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'businessunitid_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'financialprojectsowner_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'hoursreminderdeputy';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'nspowner_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'waitinghours';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'waitinghoursreminderemail';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'createdby_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'createdon';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'importsequencenumber';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'modifiedby_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'modifiedon';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'ownerid_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'statecode_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'statuscode';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'statuscode_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'versionnumber';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'AK_area';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'name';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'areaabbreviation';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'businessunitid';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'businessunitid_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'financialprojectsowner_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'hoursreminderdeputy';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'nspowner_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'waitinghours';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'waitinghoursreminderemail';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'createdby_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'createdon';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'importsequencenumber';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'modifiedby_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'modifiedon';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'ownerid_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'statecode_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'statuscode';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'statuscode_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityArea', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'versionnumber';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_areaid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'AK_area';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_name', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'name';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_areaabbreviation', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'areaabbreviation';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_businessunitid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'businessunitid';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_businessunitid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'businessunitid_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_financialprojectsowner_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'financialprojectsowner_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_hoursreminderdeputy', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'hoursreminderdeputy';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_nspowner_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'nspowner_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_waitinghours', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'waitinghours';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_waitinghoursreminderemail', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'waitinghoursreminderemail';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_createdby_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'createdby_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'createdon', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'createdon';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'importsequencenumber', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'importsequencenumber';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_modifiedby_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'modifiedby_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'modifiedon', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'modifiedon';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_ownerid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'ownerid_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_statecode_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'statecode_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'statuscode', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'statuscode';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_statuscode_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'statuscode_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'versionnumber', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'versionnumber';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'NVARCHAR(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'AK_area';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'NVARCHAR(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'name';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'NVARCHAR(20)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'areaabbreviation';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'NVARCHAR(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'businessunitid';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'NVARCHAR(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'businessunitid_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'NVARCHAR(160)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'financialprojectsowner_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'hoursreminderdeputy';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'NVARCHAR(160)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'nspowner_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'waitinghours';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'waitinghoursreminderemail';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'NVARCHAR(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'createdby_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'datetime', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'createdon';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'importsequencenumber';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'NVARCHAR(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'modifiedby_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'datetime', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'modifiedon';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'NVARCHAR(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'ownerid_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'NVARCHAR(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'statecode_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'statuscode';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'NVARCHAR(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'statuscode_value';
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'bigint', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'versionnumber';
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'AK_area';
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'businessunitid';
GO
exec sys.sp_addextendedproperty @name=N'Comments', @value=N'refers to EntityVOBusinessUnit', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_area', @level2type=N'COLUMN', @level2name=N'businessunitid';
GO