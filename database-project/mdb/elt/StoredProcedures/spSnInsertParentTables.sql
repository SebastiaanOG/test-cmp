CREATE PROCEDURE [elt].[spSnInsertParentTables]
    @parent_tables nvarchar(255),
	@base_table nvarchar(255),
    @system_name nvarchar(255),
    @system_code nvarchar(255)
AS   
IF EXISTS (SELECT * FROM elt.MetadataTables where EntityName = @base_table AND SystemCode = @system_code AND SystemName = @system_name)
BEGIN
UPDATE [elt].[MetadataTables] SET ParentTable = @parent_tables WHERE EntityName = @base_table AND SystemCode = @system_code AND SystemName = @system_name
END
ELSE
BEGIN
INSERT INTO [elt].[MetadataTables](EntityName, SystemCode, SystemName, ParentTable) VALUES (@base_table, @system_code, @system_name, @parent_tables)
END
GO

