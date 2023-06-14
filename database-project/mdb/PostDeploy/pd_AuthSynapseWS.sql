/* Managed Identity Synapse Workspace */
IF @@SERVERNAME = 'sql-vo-cmp-dev-weu-001' AND NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = 'sywsvocmpdevweu001')
BEGIN
    EXEC('CREATE USER [sywsvocmpdevweu001] WITH SID = 0x9695758E99EDEE4FA3BD86408F5B0053, TYPE = E;');
    EXEC sys.sp_addrolemember @rolename = N'db_owner', @membername = N'sywsvocmpdevweu001';
END
GO

IF @@SERVERNAME = 'sql-vo-cmp-acc-weu-001' AND NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = 'sywsvocmpaccweu001')
BEGIN
    EXEC('CREATE USER [sywsvocmpaccweu001] WITH SID = 0x3BB7CCE04F873146828F454996FA8E55, TYPE = E;');
    EXEC sys.sp_addrolemember @rolename = N'db_owner', @membername = N'sywsvocmpaccweu001';
END
GO

IF @@SERVERNAME = 'sql-vo-cmp-prd-weu-001' AND NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = 'sywsvocmpprdweu001')
BEGIN
    EXEC('CREATE USER [sywsvocmpprdweu001] WITH SID = "not_provisioned_yet", TYPE = E;');
    EXEC sys.sp_addrolemember @rolename = N'db_owner', @membername = N'sywsvocmpprdweu001';
END
GO

