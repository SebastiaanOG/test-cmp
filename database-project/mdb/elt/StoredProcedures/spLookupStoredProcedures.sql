CREATE PROCEDURE [elt].[spLookupStoredProcedures]
    @level INT
AS
BEGIN

    SELECT
        [Schema], --*1 Project is het schema van de storage-laag. *2 De stored procedures dienen als voorzetsel 'Load_' in de naam te hebben.
        [EntityName],
        CONCAT(
            '[', [Schema]/*1*/, '].[Load_'/*2*/, [EntityName], ']'
        ) AS [Procedure]
    FROM [elt].[StorageTables]
    WHERE 1 = 1
        --AND [TableType] = 'Dim' 
        AND [Level] = @level
        AND [Active] = 1

END
