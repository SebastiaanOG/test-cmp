CREATE PROCEDURE [elt].[spLookupLevels]
AS
BEGIN
    SELECT DISTINCT Level
    FROM [elt].[ProcessedTables]
    WHERE 1 = 1
        AND [Active] = 1
    ORDER BY
        Level ASC
END