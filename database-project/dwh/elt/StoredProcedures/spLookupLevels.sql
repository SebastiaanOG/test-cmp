CREATE PROCEDURE [elt].[spLookupLevels] @layer_name NVARCHAR(50)
AS
BEGIN
    IF @layer_name = 'processed'
        SELECT DISTINCT Level
        FROM [elt].[ProcessedTables]
        WHERE 1 = 1
            AND [Active] = 1
        ORDER BY
            Level ASC
    ELSE IF @layer_name = 'modelled'
        SELECT DISTINCT Level
        FROM [elt].[ModelledTables]
        WHERE 1 = 1
            AND [Active] = 1
        ORDER BY
            Level ASC
    ELSE 
        SELECT 'Invalid layer name' AS Result; 
END