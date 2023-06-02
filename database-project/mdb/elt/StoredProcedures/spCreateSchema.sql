
CREATE PROCEDURE [elt].[spCreateSchema]
        @layer_name nvarchar(max)
AS
BEGIN
    DECLARE
        @create_statement nvarchar(max) = CONCAT('CREATE SCHEMA ', '[', @layer_name, ']')
    
    SELECT Concat('IF NOT EXISTS
            (
                SELECT *
                FROM INFORMATION_SCHEMA.SCHEMATA
                WHERE [SCHEMA_NAME] = '+ '''' + @layer_name + '''' + '
            )
			BEGIN'
			,' EXEC('
			,''''
			, @create_statement
			, ''''
			, ')'
			, ' END'
			 )  AS CreateSchemaStatement
    END