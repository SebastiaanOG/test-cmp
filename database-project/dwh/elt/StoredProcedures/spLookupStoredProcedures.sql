CREATE PROCEDURE [elt].[spLookupStoredProcedures]
    @level INT,
    @use_case_code nvarchar(MAX)
    @layer_name NVARCHAR(50)
AS
BEGIN

    IF @layer_name = 'processed'
    SELECT
        [Schema],
        [StoredProcedureName],
        CONCAT(
            '[', [Schema], '].[', [StoredProcedureName], ']'
        ) AS [Procedure]
    FROM [elt].[ProcessedTables]
    WHERE 1 = 1
        AND [Level] = @level
        AND [Active] = 1
        AND [UseCaseCode] = @use_case_code
    ELSE IF @layer_name = 'modelled'
    SELECT
        [Schema],
        [StoredProcedureName],
        CONCAT(
            '[', [Schema], '].[', [StoredProcedureName], ']'
        ) AS [Procedure]
    FROM [elt].[ModelledTables]
    WHERE 1 = 1
        AND [Level] = @level
        AND [Active] = 1
    ELSE 
        SELECT 'Invalid layer name' AS Result;    


END
