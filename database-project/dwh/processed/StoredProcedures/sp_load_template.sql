CREATE PROCEDURE [elt].[sp_staged_to_processed_template]
    @process_run_date DATE,
    @process_run_id UNIQUEIDENTIFIER,
    @pipeline_run_id UNIQUEIDENTIFIER,
    @use_case_code VARCHAR(MAX),
    @layer_name NVARCHAR(MAX)
AS
BEGIN
    DECLARE
        @schema VARCHAR(20) = 'processed',
        -- TODO Replace 'your_table' everywhere with e.g. 'dyn_area'
        @table VARCHAR(20) = 'your_table',

        @inserted INT = 0,
        @updated INT = 0,
        @deleted INT = 0,
        @error_number INT = 0,
        @error_message VARCHAR(MAX)

    BEGIN TRY
        BEGIN TRANSACTION

        -- TODO Replace #temp_your_table everywhere with e.g. #temp_dyn_area
        -- Create temp table to store the data from the staging table
        IF OBJECT_ID('tempdb..#temp_your_table') IS NOT NULL
            BEGIN
                DROP TABLE #temp_your_table
            END

        CREATE TABLE #temp_your_table
        (
            -- TODO Define all fields that are selected from the staging table
            [AK_area] VARCHAR(MAX),
            [name] VARCHAR(MAX),
            [Hash] VARBINARY(8000) NOT NULL
        )

        -- Insert data from staging table into temp table
        -- and compute the hash. Use the hash to detect changes.
        INSERT INTO #temp_your_table
        SELECT
            -- TODO Define all fields that are selected from the staging table
            [hso_areaid],
            [hso_name],

            -- TODO Concatenate all fields to compute the hash
            HASHBYTES(
                'MD5',
                ISNULL([hso_areaid], '')
                + ISNULL([hso_name], '')
            ) AS [Hash]
        FROM @schema.@table

        IF OBJECT_ID(@schema + '.' + @table) IS NULL
            BEGIN
                DECLARE
                    @ThrowMessage VARCHAR(100)
                    = 'The table ' + @schema + '.' + @table
                    + ' does not exist.';
                THROW 50000, @ThrowMessage, 1;
            END

        -- Update records that were updated in the source
        UPDATE [processed].[your_table]
        SET
            [dwh_valid_to] = DATEADD(DAY, -1, @process_run_date),
            [ProcessRunID] = @process_run_id,
            [dwh_active] = 0
        FROM #temp_your_table AS [T]
        LEFT JOIN [processed].[your_table] AS [P] ON [T].[AK_area] = [P].[AK_area]
        WHERE
            [T].[Hash] != [P].[Hash]
            AND [P].[dwh_active] = 1
        SELECT @updated = @@ROWCOUNT

        --  Update records that were deleted in the source
        UPDATE [processed].[your_table]
        SET
            [dwh_valid_to] = DATEADD(DAY, -1, @process_run_date),
            [ProcessRunID] = @process_run_id,
            [dwh_active] = 0
        FROM [processed].[your_table] AS [P]
        LEFT JOIN #temp_your_table AS [T] ON [T].[AK_area] = [P].[AK_area]
        WHERE
            [T].[AK_area] IS NULL
            AND [P].[dwh_active] = 1
        SELECT @deleted = @@ROWCOUNT

        --  Insert new records + insert records that were updated in the source
        INSERT INTO [processed].[your_table]
        (
            [dwh_valid_from],
            [dwh_valid_to],
            [dwh_active],
            -- TODO Define all fields
            [AK_area],
            [name],
            [Hash],
            [ProcessRunID]
        )
        SELECT
            @process_run_date AS [dwh_valid_from],
            NULL AS [dwh_valid_to],
            1 AS [dwh_active],
            [T].[AK_area],
            [T].[name],
            [T].[Hash] AS [Hash],
            @process_run_id AS [ProcessRunID]
        FROM #temp_your_table AS [T]
        LEFT JOIN [processed].[your_table] AS [P] ON [T].[AK_area] = [P].[AK_area]
        WHERE
            [P].[AK_area] IS NULL
            OR (
                [T].[Hash] != [P].[Hash]
                AND [P].[ProcessRunID] = @process_run_id
            )
        SELECT @inserted = @@ROWCOUNT

        COMMIT

        -- Log process result
        EXECUTE [audit].[spInsertDataLogStorage]
            @process_run_id = @process_run_id,
            @pipeline_run_id = @pipeline_run_id,
            @schema = @schema,
            @entity_name = @table,
            @rows_affected_insert = @inserted,
            @rows_affected_update = @updated,
            @rows_affected_delete = @deleted


    END TRY
    BEGIN CATCH
        SET @error_number = ERROR_NUMBER();
        SET @error_message = ERROR_MESSAGE();

        PRINT 'Error number: ' + CAST(@error_number AS VARCHAR(10));
        PRINT 'Error message: ' + @error_message;
        PRINT 'Error procedure: ' + ERROR_PROCEDURE();
        PRINT 'Error line: ' + CAST(ERROR_LINE() AS VARCHAR(10));

        IF @@TRANCOUNT > 0
            BEGIN
                ROLLBACK TRANSACTION;
            END

        --  Log process error
        EXECUTE [audit].[spErrorLog]
            @ProcessRunID = @process_run_id,
            @Schema = @schema,
            @EntityName = @table,
            @ErrorCode = @error_number,
            @ErrorDescription = @error_message;
    END CATCH

    -- Summarize process execution
    SELECT
        @process_run_date AS process_run_date,
        @process_run_id AS process_run_id,
        @pipeline_run_id AS pipeline_run_id,
        @use_case_code AS use_case_code,
        @layer_name AS layer_name,
        @inserted AS inserted,
        @updated AS updated,
        @deleted AS deleted,
        @error_message AS error_description,
        @error_number AS error_number
END;
