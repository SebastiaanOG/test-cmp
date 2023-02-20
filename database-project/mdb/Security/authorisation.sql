-- managed identity Synapse Workspace
CREATE USER [sywsvocmpdevweu001] FROM EXTERNAL PROVIDER
GO
ALTER ROLE [db_owner] ADD MEMBER [sywsvocmpdevweu001]
GO
