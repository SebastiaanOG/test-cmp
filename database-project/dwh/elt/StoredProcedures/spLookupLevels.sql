CREATE PROCEDURE [elt].[spLookupLevels]
    @use_case_code varchar(max)
AS
BEGIN
    SELECT DISTINCT Level
    FROM [elt].[ProcessedTables]
    WHERE 1 = 1
        AND [Active] = 1
        AND [UseCaseCode] = @use_case_code
    ORDER BY
        Level ASC
END