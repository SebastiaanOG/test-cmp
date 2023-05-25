CREATE FUNCTION [elt].[fnSnCreateEntityTranslator] (
    @systemname VARCHAR(64),
    @schemaname VARCHAR(50),
    @entityname VARCHAR(64)
) RETURNS VARCHAR(MAX) AS
BEGIN
    DECLARE @result VARCHAR(MAX);

    SELECT @result = CONCAT(
            '{"type":"TabularTranslator","mappings":[',
            STRING_AGG(
                CONVERT(VARCHAR(MAX), CONCAT('{"source": {"path":"[''',  [Name], ''']"},"sink":{"name":"', [Name],'","type":"', [InterimDataType], '"}}')),
                ','
            ) WITHIN GROUP (ORDER BY [OrdinalPosition] ASC),
           ',{"source":"ProcessRunId", "sink":{"name":"ProcessRunId"}}',
            ']',
            ',"collectionReference": "$[''result'']", "mapComplexValuesToString": true}'
        )
    FROM
        [elt].vwMetaDataRaw
    WHERE
        SYSTEMNAME = @systemname
        AND ENTITYNAME = @entityname
        AND SCHEMANAME = @schemaname
        --AND [InterimDataType] NOT IN ('date', 'datetime')


    RETURN @result
END
GO

