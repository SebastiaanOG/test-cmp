CREATE Procedure [elt].[spUpdateLastIncrement] 
	@source_system_name nvarchar(100),
	@source_entity_name nvarchar(100),
	@source_entity_increment_column nvarchar(100)
AS


BEGIN 

	DECLARE @query_statement nvarchar(max);

SELECT @query_statement = 
	CASE
		WHEN @source_entity_increment_column IS NOT NULL
		THEN CONCAT('UPDATE elt.MetadataTables SET LastIncrement = '
					, '(SELECT MAX('
					, @source_entity_increment_column
					, ') AS NewLastIncrement FROM '
					, @source_system_name
					, '.'
					, @source_entity_name
					, ') '
					, 'WHERE SystemName = '
					, '''', @source_system_name, ''''
					, ' AND EntityName = '
					, '''', @source_entity_name, ''''
					)
		ELSE CONCAT('PRINT(','''','Geen te updaten increment','''',')')
		END
		--Misschien nog een optie toevoegen die de LastIncrement kolom weer NULL maakt als er geen source_entity_increment_column is.
		
END

BEGIN
	EXEC(@query_statement)
END;