CREATE
	FUNCTION [etl].[fnCreateEntityStructure] (
		@systemname VARCHAR(64)
		, @schemaname VARCHAR(50)
		, @entityname VARCHAR(64)
	) 
	RETURNS VARCHAR(MAX) AS
BEGIN

	DECLARE @result VARCHAR(MAX);


SELECT
	@result = CONCAT('[', STRING_AGG(CONVERT(VARCHAR(MAX), CONCAT('{"name":"', [Name], '","type":"', [InterimDataType], '"}')), ',') WITHIN GROUP (ORDER BY [OrdinalPosition] ASC) , ',{"name":"ProcessRunId", "type":"Int32"}', ']')
FROM
	[etl].[vwMetaData]
WHERE
	[SystemName] = @systemname
	AND [EntityName] = @entityname
	AND [SchemaName] = @schemaname

return @result
end