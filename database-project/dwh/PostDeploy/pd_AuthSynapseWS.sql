-- This file contains SQL statements that will be executed after the build script.
/*
Post-Deployment Script Template
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.
 Use SQLCMD syntax to include a file in the post-deployment script.
 Example:      :r .\myfile.sql
 Use SQLCMD syntax to reference a variable in the post-deployment script.
 Example:      :setvar TableName MyTable
               SELECT * FROM [$(TableName)]
--------------------------------------------------------------------------------------
*/

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
    EXEC('CREATE USER [sywsvocmpprdweu001] WITH SID = 0xB649E55CD9CEBE4A9A679FCDD8625547, TYPE = E;');
    EXEC sys.sp_addrolemember @rolename = N'db_owner', @membername = N'sywsvocmpprdweu001';
END
GO