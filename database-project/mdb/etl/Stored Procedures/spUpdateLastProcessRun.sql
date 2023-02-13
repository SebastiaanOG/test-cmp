CREATE Procedure [etl].[spUpdateLastProcessRun] 
	@source_system_name nvarchar(100),
	@source_entity_name nvarchar(100),
	@process_run_date DATETIME
AS

BEGIN 

	DECLARE @query_statement nvarchar(max);

SELECT @query_statement = 
		 CONCAT('UPDATE etl.MetadataTables SET LastProcessRun = '
					, '''', @process_run_date, ''''
					, ' WHERE SystemName = '
					, '''', @source_system_name, ''''
					, ' AND EntityName = '
					, '''', @source_entity_name, ''''
					)
		
END

BEGIN
	EXEC(@query_statement)
END;