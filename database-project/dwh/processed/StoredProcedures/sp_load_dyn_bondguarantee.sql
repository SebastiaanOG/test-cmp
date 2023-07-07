CREATE PROCEDURE [processed].[sp_load_dyn_bondguarantee]
    @process_run_date DATE,
    @process_run_id UNIQUEIDENTIFIER
AS
BEGIN
    DECLARE
        @schema NVARCHAR(20) = 'processed',
        @table NVARCHAR(20) = 'dyn_bondguarantee',

        @inserted INT = 0,
        @updated INT = 0,
        @deleted INT = 0,
        @error_number INT = 0,
        @error_message NVARCHAR(4000)

    BEGIN TRY
        BEGIN TRANSACTION

        -- Create temp table to store the data from the staging table
        IF OBJECT_ID('tempdb..#temp_dyn_bondguarantee') IS NOT NULL
            BEGIN
                DROP TABLE #temp_dyn_bondguarantee
            END

        CREATE TABLE #temp_dyn_bondguarantee
        (
            [AK_bondguarantee] NVARCHAR(36),
            [name] NVARCHAR(450),
            [exchangerate] DECIMAL(18, 10),
            [amount] DECIMAL(18, 2),
            [amount_base] DECIMAL(18, 2),
            [areaid] NVARCHAR(36),
            [areaid_value] NVARCHAR(100),
            [bondguarantee] INT,
            [bondguarantee_value] NVARCHAR(4000),
            [percentcontractvalue] DECIMAL(18, 1),
            [projectid] NVARCHAR(36),
            [projectid_value] NVARCHAR(200),
            [type] NVARCHAR(4000),
            [validitydays] DECIMAL(18, 0),
            [transactioncurrencyid_value] NVARCHAR(100),
            [createdby_value] NVARCHAR(200),
            [createdon] DATETIME2(7),
            [createdonbehalfby_value] NVARCHAR(200),
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
            [ProcessRunId_source] INT,
            [Hash] VARBINARY(8000) NOT NULL
        )

        -- Insert data from staging table into temp table
        -- and compute the hash. Use the hash to detect changes.
        INSERT INTO #temp_dyn_bondguarantee
        SELECT
            [hso_bondguaranteeid],
            [hso_name],
            [exchangerate],
            [hso_amount],
            [hso_amount_base],
            [hso_areaid],
            [_hso_areaid_value],
            [hso_bondguarantee],
            [_hso_bondguarantee_value],
            [hso_percentcontractvalue],
            [hso_projectid],
            [_hso_projectid_value],
            [hso_type],
            [hso_validitydays],
            [_transactioncurrencyid_value],
            [_createdby_value],
            [createdon],
            [_createdonbehalfby_value],
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
            [ProcessRunId],
            HASHBYTES(
                'MD5',
                ISNULL([hso_bondguaranteeid], '')
                + ISNULL([hso_name], '')
                + ISNULL(CAST([exchangerate] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_amount] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_amount_base] AS NVARCHAR(50)), '')
                + ISNULL([hso_areaid], '')
                + ISNULL([_hso_areaid_value], '')
                + ISNULL(CAST([hso_bondguarantee] AS NVARCHAR(20)), '')
                + ISNULL([_hso_bondguarantee_value], '')
                + ISNULL(CAST([hso_percentcontractvalue] AS NVARCHAR(50)), '')
                + ISNULL([hso_projectid], '')
                + ISNULL([_hso_projectid_value], '')
                + ISNULL([hso_type], '')
                + ISNULL(CAST([hso_validitydays] AS NVARCHAR(50)), '')
                + ISNULL([_transactioncurrencyid_value], '')
                + ISNULL([_createdby_value], '')
                + ISNULL(CONVERT(NVARCHAR(19), [createdon], 120), '')
                + ISNULL([_createdonbehalfby_value], '')
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
                + ISNULL(CAST([ProcessRunId] AS NVARCHAR(20)), '')
            ) AS [Hash]
        FROM [staged].[dyn_EntityBondguarantee]

        IF OBJECT_ID(@schema + '.' + @table) IS NULL
            BEGIN
                DECLARE
                    @ThrowMessage NVARCHAR(100)
                    = 'The table ' + @schema + '.' + @table
                    + ' does not exist.';
                THROW 50000, @ThrowMessage, 1;
            END

        -- Update records that were updated in the source
        UPDATE [processed].[dyn_bondguarantee]
        SET
            [dwh_valid_to] = DATEADD(DAY, -1, @process_run_date),
            [ProcessRunID] = @process_run_id,
            [dwh_active] = 0
        FROM #temp_dyn_bondguarantee AS [T]
        LEFT JOIN [processed].[dyn_bondguarantee] AS [P] ON [T].[AK_bondguarantee] = [P].[AK_bondguarantee]
        WHERE
            [T].[Hash] != [P].[Hash]
            AND [P].[dwh_active] = 1
        SELECT @updated = @@ROWCOUNT

        --  Update records that were deleted in the source
        UPDATE [processed].[dyn_bondguarantee]
        SET
            [dwh_valid_to] = DATEADD(DAY, -1, @process_run_date),
            [ProcessRunID] = @process_run_id,
            [dwh_active] = 0
        FROM [processed].[dyn_bondguarantee] AS [P]
        LEFT JOIN #temp_dyn_bondguarantee AS [T] ON [T].[AK_bondguarantee] = [P].[AK_bondguarantee]
        WHERE
            [T].[AK_bondguarantee] IS NULL
            AND [P].[dwh_active] = 1
        SELECT @deleted = @@ROWCOUNT

        --  Insert new records + insert records that were updated in the source
        INSERT INTO [processed].[dyn_bondguarantee]
        (
            [dwh_valid_from],
            [dwh_valid_to],
            [dwh_active],
            [AK_bondguarantee],
            [name],
            [exchangerate],
            [amount],
            [amount_base],
            [areaid],
            [areaid_value],
            [bondguarantee],
            [bondguarantee_value],
            [percentcontractvalue],
            [projectid],
            [projectid_value],
            [type],
            [validitydays],
            [transactioncurrencyid_value],
            [createdby_value],
            [createdon],
            [createdonbehalfby_value],
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
            [ProcessRunId_source],
            [Hash],
            [ProcessRunID]
        )
        SELECT
            @process_run_date AS [dwh_valid_from],
            NULL AS [dwh_valid_to],
            1 AS [dwh_active],
            [T].[AK_bondguarantee],
            [T].[name],
            [T].[exchangerate],
            [T].[amount],
            [T].[amount_base],
            [T].[areaid],
            [T].[areaid_value],
            [T].[bondguarantee],
            [T].[bondguarantee_value],
            [T].[percentcontractvalue],
            [T].[projectid],
            [T].[projectid_value],
            [T].[type],
            [T].[validitydays],
            [T].[transactioncurrencyid_value],
            [T].[createdby_value],
            [T].[createdon],
            [T].[createdonbehalfby_value],
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
            [T].[ProcessRunId_source],
            [T].[Hash],
            @process_run_id AS [ProcessRunID]
        FROM #temp_dyn_bondguarantee AS [T]
        LEFT JOIN [processed].[dyn_bondguarantee] AS [P] ON [T].[AK_bondguarantee] = [P].[AK_bondguarantee]
        WHERE
            [P].[AK_bondguarantee] IS NULL
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
