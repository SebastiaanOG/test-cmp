CREATE PROCEDURE [processed].[sp_load_dyn_area]
    @process_run_date DATE,
    @process_run_id UNIQUEIDENTIFIER
AS
BEGIN
    DECLARE
        @schema NVARCHAR(20) = 'processed',
        @table NVARCHAR(20) = 'dyn_area',

        @inserted INT = 0,
        @updated INT = 0,
        @deleted INT = 0,
        @error_number INT = 0,
        @error_message NVARCHAR(4000)

    BEGIN TRY
        BEGIN TRANSACTION

        -- Create temp table to store the data from the staging table
        IF OBJECT_ID('tempdb..#temp_dyn_area') IS NOT NULL
            BEGIN
                DROP TABLE #temp_dyn_area
            END

        CREATE TABLE #temp_dyn_area
        (
            [AK_area] NVARCHAR(36),
            [name] NVARCHAR(100),
            [areaabbreviation] NVARCHAR(20),
            [businessunitid] NVARCHAR(36),
            [businessunitid_value] NVARCHAR(100),
            [financialprojectsowner_value] NVARCHAR(160),
            [hoursreminderdeputy] INT,
            [nspowner_value] NVARCHAR(160),
            [waitinghours] INT,
            [waitinghoursreminderemail] INT,
            [createdby_value] NVARCHAR(200),
            [createdon] DATETIME2(7),
            [importsequencenumber] INT,
            [modifiedby_value] NVARCHAR(200),
            [modifiedon] DATETIME2(7),
            [ownerid_value] NVARCHAR(200),
            [statecode_value] NVARCHAR(4000),
            [statuscode] INT,
            [statuscode_value] NVARCHAR(4000),
            [versionnumber] BIGINT,
            [Hash] VARBINARY(8000) NOT NULL
        )

        -- Insert data from staging table into temp table
        -- and compute the hash. Use the hash to detect changes.
        INSERT INTO #temp_dyn_area
        SELECT
            [hso_areaid],
            [hso_name],
            [hso_areaabbreviation],
            [hso_businessunitid],
            [_hso_businessunitid_value],
            [_hso_financialprojectsowner_value],
            [hso_hoursreminderdeputy],
            [_hso_nspowner_value],
            [hso_waitinghours],
            [hso_waitinghoursreminderemail],
            [_createdby_value],
            [createdon],
            [importsequencenumber],
            [_modifiedby_value],
            [modifiedon],
            [_ownerid_value],
            [_statecode_value],
            [statuscode],
            [_statuscode_value],
            [versionnumber],
            HASHBYTES(
                'MD5',
                ISNULL([hso_areaid], '')
                + ISNULL([hso_name], '')
                + ISNULL([hso_areaabbreviation], '')
                + ISNULL([hso_businessunitid], '')
                + ISNULL([_hso_businessunitid_value], '')
                + ISNULL([_hso_financialprojectsowner_value], '')
                + ISNULL(CAST([hso_hoursreminderdeputy] AS NVARCHAR(10)), '')
                + ISNULL([_hso_nspowner_value], '')
                + ISNULL(CAST([hso_waitinghours] AS NVARCHAR(10)), '')
                + ISNULL(CAST([hso_waitinghoursreminderemail] AS NVARCHAR(10)), '')
                + ISNULL([_createdby_value], '')
                + ISNULL(CONVERT(NVARCHAR(19), [createdon], 120), '')
                + ISNULL(CAST([importsequencenumber] AS NVARCHAR(10)), '')
                + ISNULL([_modifiedby_value], '')
                + ISNULL(CONVERT(NVARCHAR(19), [modifiedon], 120), '')
                + ISNULL([_ownerid_value], '')
                + ISNULL([_statecode_value], '')
                + ISNULL(CAST([statuscode] AS NVARCHAR(10)), '')
                + ISNULL([_statuscode_value], '')
                + ISNULL(CAST([versionnumber] AS NVARCHAR(20)), '')
            ) AS [Hash]
        FROM [staged].[dyn_EntityArea]

        IF OBJECT_ID(@schema + '.' + @table) IS NULL
            BEGIN
                DECLARE
                    @ThrowMessage NVARCHAR(100)
                    = 'The table ' + @schema + '.' + @table
                    + ' does not exist.';
                THROW 50000, @ThrowMessage, 1;
            END

        -- Update records that were updated in the source
        UPDATE [processed].[dyn_area]
        SET
            [dwh_valid_to] = DATEADD(DAY, -1, @process_run_date),
            [ProcessRunID] = @process_run_id,
            [dwh_active] = 0
        FROM #temp_dyn_area AS [T]
        LEFT JOIN [processed].[dyn_area] AS [P] ON [T].[AK_area] = [P].[AK_area]
        WHERE
            [T].[Hash] != [P].[Hash]
            AND [P].[dwh_active] = 1
        SELECT @updated = @@ROWCOUNT

        --  Update records that were deleted in the source
        UPDATE [processed].[dyn_area]
        SET
            [dwh_valid_to] = DATEADD(DAY, -1, @process_run_date),
            [ProcessRunID] = @process_run_id,
            [dwh_active] = 0
        FROM [processed].[dyn_area] AS [P]
        LEFT JOIN #temp_dyn_area AS [T] ON [T].[AK_area] = [P].[AK_area]
        WHERE
            [T].[AK_area] IS NULL
            AND [P].[dwh_active] = 1
        SELECT @deleted = @@ROWCOUNT

        --  Insert new records + insert records that were updated in the source
        INSERT INTO [processed].[dyn_area]
        (
            [dwh_valid_from],
            [dwh_valid_to],
            [dwh_active],
            [AK_area],
            [name],
            [areaabbreviation],
            [businessunitid],
            [businessunitid_value],
            [financialprojectsowner_value],
            [hoursreminderdeputy],
            [nspowner_value],
            [waitinghours],
            [waitinghoursreminderemail],
            [createdby_value],
            [createdon],
            [importsequencenumber],
            [modifiedby_value],
            [modifiedon],
            [ownerid_value],
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
            [T].[AK_area],
            [T].[name],
            [T].[areaabbreviation] AS [areaabbreviation],
            [T].[businessunitid] AS [businessunitid],
            [T].[businessunitid_value] AS [businessunitid_value],
            [T].[financialprojectsowner_value] AS [financialprojectsowner_value],
            [T].[hoursreminderdeputy] AS [hoursreminderdeputy],
            [T].[nspowner_value] AS [nspowner_value],
            [T].[waitinghours] AS [waitinghours],
            [T].[waitinghoursreminderemail] AS [waitinghoursreminderemail],
            [T].[createdby_value] AS [createdby_value],
            [T].[createdon] AS [createdon],
            [T].[importsequencenumber] AS [importsequencenumber],
            [T].[modifiedby_value] AS [modifiedby_value],
            [T].[modifiedon] AS [modifiedon],
            [T].[ownerid_value] AS [ownerid_value],
            [T].[statecode_value] AS [statecode_value],
            [T].[statuscode] AS [statuscode],
            [T].[statuscode_value] AS [statuscode_value],
            [T].[versionnumber] AS [versionnumber],
            [T].[Hash] AS [Hash],
            @process_run_id AS [ProcessRunID]
        FROM #temp_dyn_area AS [T]
        LEFT JOIN [processed].[dyn_area] AS [P] ON [T].[AK_area] = [P].[AK_area]
        WHERE
            [P].[AK_area] IS NULL
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
