CREATE PROCEDURE [processed].[sp_load_dyn_area]
    @process_run_date DATE,
    @process_run_id UNIQUEIDENTIFIER
AS
BEGIN
    -- Abort and rollback for all errors, not only the ones captured by BEGIN TRY
    SET XACT_ABORT ON;
    DECLARE
        @schema NVARCHAR(20) = 'processed',
        @table NVARCHAR(60) = 'dyn_area',

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
            [ak_area] NVARCHAR(36),
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
            [dwh_hash] VARBINARY(8000) NOT NULL
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
            LEFT([_statecode_value], 4000),
            [statuscode],
            LEFT([_statuscode_value], 4000),
            [versionnumber],
            HASHBYTES(
                'MD5',
                ISNULL([hso_areaid], '')
                + ISNULL([hso_name], '')
                + ISNULL([hso_areaabbreviation], '')
                + ISNULL([hso_businessunitid], '')
                + ISNULL([_hso_businessunitid_value], '')
                + ISNULL([_hso_financialprojectsowner_value], '')
                + ISNULL(CAST([hso_hoursreminderdeputy] AS NVARCHAR(20)), '')
                + ISNULL([_hso_nspowner_value], '')
                + ISNULL(CAST([hso_waitinghours] AS NVARCHAR(20)), '')
                + ISNULL(CAST([hso_waitinghoursreminderemail] AS NVARCHAR(20)), '')
                + ISNULL([_createdby_value], '')
                + ISNULL(CONVERT(NVARCHAR(19), [createdon], 120), '')
                + ISNULL(CAST([importsequencenumber] AS NVARCHAR(20)), '')
                + ISNULL([_modifiedby_value], '')
                + ISNULL(CONVERT(NVARCHAR(19), [modifiedon], 120), '')
                + ISNULL([_ownerid_value], '')
                + ISNULL(CAST(LEFT([_statecode_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([statuscode] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_statuscode_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([versionnumber] AS NVARCHAR(20)), '')
            ) AS [dwh_hash]
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
            [dwh_process_run_id] = @process_run_id,
            [dwh_active] = 0
        FROM #temp_dyn_area AS [T]
        LEFT JOIN [processed].[dyn_area] AS [P] ON [T].[ak_area] = [P].[ak_area]
        WHERE
            [T].[dwh_hash] != [P].[dwh_hash]
            AND [P].[dwh_active] = 1
        SELECT @updated = @@ROWCOUNT

        --  Update records that were deleted in the source
        UPDATE [processed].[dyn_area]
        SET
            [dwh_valid_to] = DATEADD(DAY, -1, @process_run_date),
            [dwh_process_run_id] = @process_run_id,
            [dwh_active] = 0
        FROM [processed].[dyn_area] AS [P]
        LEFT JOIN #temp_dyn_area AS [T] ON [T].[ak_area] = [P].[ak_area]
        WHERE
            [T].[ak_area] IS NULL
            AND [P].[dwh_active] = 1
        SELECT @deleted = @@ROWCOUNT

        --  Insert new records + insert records that were updated in the source
        INSERT INTO [processed].[dyn_area]
        (
            [dwh_valid_from],
            [dwh_valid_to],
            [dwh_active],
            [dwh_process_run_id],
            [ak_area],
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
            [dwh_hash]            
        )
        SELECT
            @process_run_date AS [dwh_valid_from],
            NULL AS [dwh_valid_to],
            1 AS [dwh_active],
            @process_run_id AS [dwh_process_run_id],
            [T].[ak_area],
            [T].[name],
            [T].[areaabbreviation],
            [T].[businessunitid],
            [T].[businessunitid_value],
            [T].[financialprojectsowner_value],
            [T].[hoursreminderdeputy],
            [T].[nspowner_value],
            [T].[waitinghours],
            [T].[waitinghoursreminderemail],
            [T].[createdby_value],
            [T].[createdon],
            [T].[importsequencenumber],
            [T].[modifiedby_value],
            [T].[modifiedon],
            [T].[ownerid_value],
            [T].[statecode_value],
            [T].[statuscode],
            [T].[statuscode_value],
            [T].[versionnumber],
            [T].[dwh_hash]
        FROM #temp_dyn_area AS [T]
        LEFT JOIN [processed].[dyn_area] AS [P] ON [T].[ak_area] = [P].[ak_area]
        WHERE
            [P].[ak_area] IS NULL
            OR (
                [T].[dwh_hash] != [P].[dwh_hash]
                AND [P].[dwh_process_run_id] = @process_run_id
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
