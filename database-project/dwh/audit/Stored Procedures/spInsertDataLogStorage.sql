
CREATE Procedure [audit].[spInsertDataLogStorage]
	@process_run_id [int],
	@pipeline_run_id uniqueidentifier,
	@schema nvarchar(100),
	@entity_name [nvarchar](100),
	@rows_affected_insert [int] = NULL,
	@rows_affected_update [int] = NULL,
	@rows_affected_delete [int] = NULL


AS 
BEGIN 
BEGIN TRY
	BEGIN TRANSACTION

	INSERT INTO [audit].[DataLog]
	SELECT @process_run_id
		   ,@pipeline_run_id
		   ,'Storage'
		   ,@schema
		   ,@entity_name
		   ,@rows_affected_insert
		   , @rows_affected_update
		   , @rows_affected_delete
		   ,s.row_count
		   ,GETDATE() AS LogDate
	FROM	sys.tables t
	INNER JOIN sys.dm_db_partition_stats s
		ON t.object_id = s.object_id
		AND s.index_id IN (0, 1) -- 0 = Heap, 1 = Clustered index, >= 2 = nonclustered index
	INNER JOIN sys.schemas sc
		ON sc.schema_id = t.schema_id
		AND sc.name = @schema
WHERE 1=1
AND t.name = @entity_name /*LOWER(REPLACE(@entity_name, ' ', '_'))*/ --Zie fnCreateTableName

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