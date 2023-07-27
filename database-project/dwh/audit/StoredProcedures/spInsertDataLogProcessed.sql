CREATE PROCEDURE [audit].[spInsertDataLogProcessed]
    @process_run_id UNIQUEIDENTIFIER,
    @schema NVARCHAR(100),
    @entity_name NVARCHAR(100),
    @rows_affected_insert INT = NULL,
    @rows_affected_update INT = NULL,
    @rows_affected_delete INT = NULL
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION

        INSERT INTO [audit].[DataLog]
        SELECT
            @process_run_id AS ProcessRunId,
            'Processed' AS [Type],
            @schema AS [Schema],
            @entity_name AS [EntityName],
            @rows_affected_insert AS [InsertedRecords],
            @rows_affected_update AS [UpdatedRecords],
            @rows_affected_delete AS [DeletedRecords],
            sys.dm_db_partition_stats.row_count AS [TotalRecords],
            GETDATE() AS [LogDate]
        FROM sys.tables
        INNER JOIN sys.dm_db_partition_stats
            ON sys.tables.object_id = sys.dm_db_partition_stats.object_id
                -- 0 = Heap, 1 = Clustered index, >= 2 = nonclustered index
                AND sys.dm_db_partition_stats.index_id IN (0, 1)
        INNER JOIN sys.schemas
            ON
                sys.schemas.schema_id = sys.tables.schema_id
                AND sys.schemas.name = @schema
        WHERE
            1 = 1
            --see fnCreateTableName
            AND sys.tables.name = @entity_name

        COMMIT TRANSACTION
    END TRY

    BEGIN CATCH
        DECLARE
            @ErrorMessage NVARCHAR(4000),
            @ErrorSeverity TINYINT,
            @ErrorState TINYINT,
            @ErrorLine TINYINT

        SET @ErrorMessage = ERROR_MESSAGE()
        SET @ErrorSeverity = ERROR_SEVERITY()
        SET @ErrorState = ERROR_STATE()
        SET @ErrorLine = ERROR_LINE()

        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState, @ErrorLine)

        ROLLBACK TRANSACTION

    END CATCH
END
