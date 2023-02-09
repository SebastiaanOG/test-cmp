CREATE
	FUNCTION [etl].[fnCreateEntityTranslator] (
		@systemname VARCHAR(64)
		, @schemaname VARCHAR(50)
		, @entityname VARCHAR(64)
	) RETURNS VARCHAR(MAX) AS
BEGIN
	DECLARE @result VARCHAR(MAX);

SELECT
	@result = CONCAT('{"type":"tabulartranslator","columnmappings":{', string_agg(CONVERT(VARCHAR(MAX), CONCAT('"', [Name], '":"',  [Name], '"')), ',') WITHIN GROUP (ORDER BY [OrdinalPosition] ASC), ',"ProcessRunId":"ProcessRunId"', '}}')
FROM
	[etl].vwMetaData
WHERE
	SystemName = @systemname
	AND EntityName = @entityname
	AND SchemaName = @schemaname


RETURN @result
END