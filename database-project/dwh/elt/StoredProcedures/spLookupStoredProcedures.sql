CREATE PROCEDURE [elt].[spLookupStoredProcedures]
    @level INT,
    @use_case_code nvarchar(MAX)
AS
BEGIN

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


END
