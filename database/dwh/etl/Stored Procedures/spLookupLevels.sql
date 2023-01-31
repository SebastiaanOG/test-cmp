
CREATE PROCEDURE [etl].[spLookupLevels] AS

SELECT DISTINCT 
	Level
FROM [etl].[StorageTables]
WHERE 1=1
	AND [Active] = 1
ORDER BY 
	Level ASC