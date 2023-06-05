CREATE
FUNCTION [elt].[fnCreateTableName] (
    @layer_name VARCHAR(50),
    @system_code VARCHAR(8),
    @entity_name VARCHAR(64)
) RETURNS NVARCHAR(128) AS
BEGIN

DECLARE @result NVARCHAR(64);
SET @result = CONCAT(
    QUOTENAME(@layer_name),
    '.',
    QUOTENAME(CONCAT(@system_code, '_', @entity_name))
);

    RETURN @result
END
