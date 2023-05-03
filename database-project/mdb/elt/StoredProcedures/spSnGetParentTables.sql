CREATE PROCEDURE [elt].[SnGetParentTables]
    @EntityName nvarchar(255),
	@SystemName nvarchar(255),
    @SystemCode nvarchar(255)
AS
SELECT STRING_AGG(REPLACE(value, '"', ''), '^ORname=') AS parent_tables_query
FROM (
    SELECT ParentTable FROM [elt].[MetadataTables] where EntityName = @EntityName AND SystemName = @SystemName AND SystemCode = @SystemCode ) as subquery 
CROSS APPLY OPENJSON(subquery.ParentTable)
    WITH (value VARCHAR(500) '$')
GO

