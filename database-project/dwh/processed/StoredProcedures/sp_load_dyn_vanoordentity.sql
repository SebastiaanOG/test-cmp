CREATE PROCEDURE [processed].[sp_load_dyn_vanoordentity]
    @process_run_date DATE,
    @process_run_id UNIQUEIDENTIFIER
AS
BEGIN
    DECLARE
        @schema NVARCHAR(20) = 'processed',
        @table NVARCHAR(20) = 'dyn_vanoordentity',

        @inserted INT = 0,
        @updated INT = 0,
        @deleted INT = 0,
        @error_number INT = 0,
        @error_message NVARCHAR(4000)

    BEGIN TRY
        BEGIN TRANSACTION

        -- Create temp table to store the data from the staging table
        IF OBJECT_ID('tempdb..#temp_dyn_vanoordentity') IS NOT NULL
            BEGIN
                DROP TABLE #temp_dyn_vanoordentity
            END

        CREATE TABLE #temp_dyn_vanoordentity
        (
            [AK_vanoordentity] NVARCHAR(36),
            [name] NVARCHAR(100),
            [country] NVARCHAR(36),
            [country_value] NVARCHAR(100),
            [status] INT,
            [status_value] NVARCHAR(4000),
            [createdby_value] NVARCHAR(200),
            [createdon] DATETIME2(7),
            [importsequencenumber] INT,
            [modifiedby_value] NVARCHAR(200),
            [modifiedon] DATETIME2(7),
            [modifiedonbehalfby_value] NVARCHAR(200),
            [ownerid_value] NVARCHAR(200),
            [statecode] INT,
            [statecode_value] NVARCHAR(4000),
            [statuscode] INT,
            [statuscode_value] NVARCHAR(4000),
            [versionnumber] BIGINT,
            [Hash] VARBINARY(8000) NOT NULL
        )

        -- Insert data from staging table into temp table
        -- and compute the hash. Use the hash to detect changes.
        INSERT INTO #temp_dyn_vanoordentity
        SELECT
            [hso_vanoordentityid],
            [hso_name],
            [hso_country],
            [_hso_country_value],
            [hso_status],
            [_hso_status_value],
            [_createdby_value],
            [createdon],
            [importsequencenumber],
            [_modifiedby_value],
            [modifiedon],
            [_modifiedonbehalfby_value],
            [_ownerid_value],
            [statecode],
            [_statecode_value],
            [statuscode],
            [_statuscode_value],
            [versionnumber],
            HASHBYTES(
                'MD5',
                ISNULL([hso_vanoordentityid], '')
                + ISNULL([hso_name], '')
                + ISNULL([hso_country], '')
                + ISNULL([_hso_country_value], '')
                + ISNULL(CAST([hso_status] AS NVARCHAR(20)), '')
                + ISNULL([_hso_status_value], '')
                + ISNULL([_createdby_value], '')
                + ISNULL(CONVERT(NVARCHAR(19), [createdon], 120), '')
                + ISNULL(CAST([importsequencenumber] AS NVARCHAR(20)), '')
                + ISNULL([_modifiedby_value], '')
                + ISNULL(CONVERT(NVARCHAR(19), [modifiedon], 120), '')
                + ISNULL([_modifiedonbehalfby_value], '')
                + ISNULL([_ownerid_value], '')
                + ISNULL(CAST([statecode] AS NVARCHAR(20)), '')
                + ISNULL([_statecode_value], '')
                + ISNULL(CAST([statuscode] AS NVARCHAR(20)), '')
                + ISNULL([_statuscode_value], '')
                + ISNULL(CAST([versionnumber] AS NVARCHAR(20)), '')
            ) AS [Hash]
        FROM [staged].[dyn_EntityVanOordEntity]

        IF OBJECT_ID(@schema + '.' + @table) IS NULL
            BEGIN
                DECLARE
                    @ThrowMessage NVARCHAR(100)
                    = 'The table ' + @schema + '.' + @table
                    + ' does not exist.';
                THROW 50000, @ThrowMessage, 1;
            END

        -- Update records that were updated in the source
        UPDATE [processed].[dyn_vanoordentity]
        SET
            [dwh_valid_to] = DATEADD(DAY, -1, @process_run_date),
            [ProcessRunID] = @process_run_id,
            [dwh_active] = 0
        FROM #temp_dyn_vanoordentity AS [T]
        LEFT JOIN [processed].[dyn_vanoordentity] AS [P] ON [T].[AK_vanoordentity] = [P].[AK_vanoordentity]
        WHERE
            [T].[Hash] != [P].[Hash]
            AND [P].[dwh_active] = 1
        SELECT @updated = @@ROWCOUNT

        --  Update records that were deleted in the source
        UPDATE [processed].[dyn_vanoordentity]
        SET
            [dwh_valid_to] = DATEADD(DAY, -1, @process_run_date),
            [ProcessRunID] = @process_run_id,
            [dwh_active] = 0
        FROM [processed].[dyn_vanoordentity] AS [P]
        LEFT JOIN #temp_dyn_vanoordentity AS [T] ON [T].[AK_vanoordentity] = [P].[AK_vanoordentity]
        WHERE
            [T].[AK_vanoordentity] IS NULL
            AND [P].[dwh_active] = 1
        SELECT @deleted = @@ROWCOUNT

        --  Insert new records + insert records that were updated in the source
        INSERT INTO [processed].[dyn_vanoordentity]
        (
            [dwh_valid_from],
            [dwh_valid_to],
            [dwh_active],
            [AK_vanoordentity],
            [name],
            [country],
            [country_value],
            [status],
            [status_value],
            [createdby_value],
            [createdon],
            [importsequencenumber],
            [modifiedby_value],
            [modifiedon],
            [modifiedonbehalfby_value],
            [ownerid_value],
            [statecode],
            [statecode_value],
            [statuscode],
            [statuscode_value],
            [versionnumber],
            [Hash],
            [ProcessRunID]
        )
        SELECT
            @process_run_date AS [dwh_valid_from],
            NULL AS [dwh_valid_to],
            1 AS [dwh_active],
            [T].[AK_vanoordentity],
            [T].[name],
            [T].[country],
            [T].[country_value],
            [T].[status],
            [T].[status_value],
            [T].[createdby_value],
            [T].[createdon],
            [T].[importsequencenumber],
            [T].[modifiedby_value],
            [T].[modifiedon],
            [T].[modifiedonbehalfby_value],
            [T].[ownerid_value],
            [T].[statecode],
            [T].[statecode_value],
            [T].[statuscode],
            [T].[statuscode_value],
            [T].[versionnumber],
            [T].[Hash],
            @process_run_id AS [ProcessRunID]
        FROM #temp_dyn_vanoordentity AS [T]
        LEFT JOIN [processed].[dyn_vanoordentity] AS [P] ON [T].[AK_vanoordentity] = [P].[AK_vanoordentity]
        WHERE
            [P].[AK_vanoordentity] IS NULL
            OR (
                [T].[Hash] != [P].[Hash]
                AND [P].[ProcessRunID] = @process_run_id
            )
        SELECT @inserted = @@ROWCOUNT

        COMMIT

        -- Log process result
        EXECUTE [audit].[spInsertDataLogProcessed]
            @process_run_id = @process_run_id,
            @schema = @schema,
            @entity_name = @table,
            @rows_affected_insert = @inserted,
            @rows_affected_update = @updated,
            @rows_affected_delete = @deleted


    END TRY
    BEGIN CATCH
        SET @error_number = ERROR_NUMBER();
        SET @error_message = ERROR_MESSAGE();

        PRINT 'Error number: ' + CAST(@error_number AS NVARCHAR(10));
        PRINT 'Error message: ' + @error_message;
        PRINT 'Error procedure: ' + ERROR_PROCEDURE();
        PRINT 'Error line: ' + CAST(ERROR_LINE() AS NVARCHAR(10));

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
        @inserted AS inserted,
        @updated AS updated,
        @deleted AS deleted,
        @error_message AS error_description,
        @error_number AS error_number
END;
