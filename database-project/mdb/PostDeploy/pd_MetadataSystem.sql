--- This will fill the MetadataSystem table

TRUNCATE TABLE [elt].[MetadataSystem];

IF @@SERVERNAME = 'sql-vo-cmp-dev-weu-001'
BEGIN
    INSERT INTO [elt].[MetadataSystem] ([SystemCode],[SystemName],[SystemType],[Active],[Created]) VALUES ('cmptest','cmp-test','sqlserver',1,'2023-04-07 09:00:00.000')
    INSERT INTO [elt].[MetadataSystem] ([SystemCode],[SystemName],[SystemType],[Active],[Created]) VALUES ('dyn','Dyn01DataDb01A','sqlserver',1,'2023-04-07 09:00:00.000')
    INSERT INTO [elt].[MetadataSystem] ([SystemCode],[SystemName],[SystemType],[Active],[Created]) VALUES ('snp','servicenow-projects','servicenow',1,'2023-04-12 09:00:00.000')
END
GO

IF @@SERVERNAME = 'sql-vo-cmp-acc-weu-001'
BEGIN
    INSERT INTO [elt].[MetadataSystem] ([SystemCode],[SystemName],[SystemType],[Active],[Created]) VALUES ('cmptest','cmp-test','sqlserver',0,'2023-04-07 09:00:00.000')
    INSERT INTO [elt].[MetadataSystem] ([SystemCode],[SystemName],[SystemType],[Active],[Created]) VALUES ('dyn','Dyn01DataDb01A','sqlserver',1,'2023-04-07 09:00:00.000')
    INSERT INTO [elt].[MetadataSystem] ([SystemCode],[SystemName],[SystemType],[Active],[Created]) VALUES ('snp','servicenow-projects','servicenow',1,'2023-04-12 09:00:00.000')
END
GO

IF @@SERVERNAME = 'sql-vo-cmp-prd-weu-001'
BEGIN
    INSERT INTO [elt].[MetadataSystem] ([SystemCode],[SystemName],[SystemType],[Active],[Created]) VALUES ('cmptest','cmp-test','sqlserver',0,'2023-04-07 09:00:00.000')
    INSERT INTO [elt].[MetadataSystem] ([SystemCode],[SystemName],[SystemType],[Active],[Created]) VALUES ('snp','servicenow-projects','servicenow',1,'2023-04-12 09:00:00.000')
END
GO