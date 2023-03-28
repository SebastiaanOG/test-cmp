
CREATE Procedure [audit].[spInsertDataLogStaging]
	@pipeline_run_id uniqueidentifier,
	@process_run_id [int],
	@system_name [nvarchar](100),
	@entity_name [nvarchar](100)


AS 
BEGIN 
BEGIN TRY
	BEGIN TRANSACTION

	INSERT INTO [audit].[DataLog]
	SELECT @process_run_id
		   ,@pipeline_run_id
		   ,'Staging'
		   ,@system_name
		   ,@entity_name
		   ,s.row_count
		   , NULL
		   , NULL
		   ,s.row_count
		   ,GETDATE() AS LogDate
	FROM	sys.tables t
	INNER JOIN sys.dm_db_partition_stats s
		ON t.object_id = s.object_id
		AND s.index_id IN (0, 1) -- 0 = Heap, 1 = Clustered index, >= 2 = nonclustered index
	INNER JOIN sys.schemas sc
		ON sc.schema_id = t.schema_id
		AND sc.name = @system_name
WHERE 1=1
AND t.name = @entity_name /*LOWER(REPLACE(@entity_name, ' ', '_'))*/ --see fnCreateTableName

		  
	COMMIT TRANSACTION

END TRY

	BEGIN CATCH
		DECLARE
			@ErrorMessage     NVARCHAR(MAX)
			, @ErrorSeverity  TINYINT
			, @ErrorState     TINYINT
			, @ErrorLine	  TINYINT

		SET @ErrorMessage  = ERROR_MESSAGE()
		SET @ErrorSeverity = ERROR_SEVERITY()
		SET @ErrorState    = ERROR_STATE()
		SET @ErrorLine	   = ERROR_LINE()
		
		RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState, @ErrorLine)

		ROLLBACK TRANSACTION

	END CATCH


END