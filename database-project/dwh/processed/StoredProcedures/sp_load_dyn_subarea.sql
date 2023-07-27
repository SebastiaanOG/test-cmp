CREATE PROCEDURE [processed].[sp_load_dyn_subarea]
    @process_run_date DATE,
    @process_run_id UNIQUEIDENTIFIER
AS
BEGIN
    -- Abort and rollback for all errors, not only the ones captured by BEGIN TRY
    SET XACT_ABORT ON;
    DECLARE
        @schema NVARCHAR(20) = 'processed',
        @table NVARCHAR(60) = 'dyn_subarea',

        @inserted INT = 0,
        @updated INT = 0,
        @deleted INT = 0,
        @error_number INT = 0,
        @error_message NVARCHAR(4000)

    BEGIN TRY
        BEGIN TRANSACTION

        -- Create temp table to store the data from the staging table
        IF OBJECT_ID('tempdb..#temp_dyn_subarea') IS NOT NULL
            BEGIN
                DROP TABLE #temp_dyn_subarea
            END

        CREATE TABLE #temp_dyn_subarea
        (
            [ak_subarea] NVARCHAR(36),
            [name] NVARCHAR(100),
            [areaid] NVARCHAR(36),
            [areaid_value] NVARCHAR(100),
            [budirector_value] NVARCHAR(200),
            [businesscontrollerid_value] NVARCHAR(200),
            [deputybudirector_value] NVARCHAR(200),
            [deputydirectorid_value] NVARCHAR(200),
            [deputybusinesscontrollerid_value] NVARCHAR(200),
            [deputyebmemberid_value] NVARCHAR(200),
            [deputyfinancialdirectorid_value] NVARCHAR(200),
            [deputymanagerbusinesscontrolid_value] NVARCHAR(200),
            [deputymanagerid_value] NVARCHAR(200),
            [deputysbmemberid_value] NVARCHAR(200),
            [deputystaffdirectoreeid_value] NVARCHAR(200),
            [directorid_value] NVARCHAR(200),
            [ebmemberid_value] NVARCHAR(200),
            [financialdirectorid_value] NVARCHAR(200),
            [managerbusinesscontrolid_value] NVARCHAR(200),
            [managerid_value] NVARCHAR(200),
            [nextnumber] INT,
            [nextnumberid_value] NVARCHAR(100),
            [prefix] NVARCHAR(20),
            [sbmemberid_value] NVARCHAR(200),
            [staffdirectoreeid_value] NVARCHAR(200),
            [waitinghoursassignmentdeputy] INT,
            [waitinghoursreminderemail] INT,
            [waitinghoursreminderemaildeputy] INT,
            [createdby_value] NVARCHAR(200),
            [createdon] DATETIME2(7),
            [importsequencenumber] INT,
            [modifiedby_value] NVARCHAR(200),
            [modifiedon] DATETIME2(7),
            [ownerid_value] NVARCHAR(200),
            [statecode] INT,
            [statecode_value] NVARCHAR(4000),
            [statuscode] INT,
            [statuscode_value] NVARCHAR(4000),
            [versionnumber] BIGINT,
            [dwh_hash] VARBINARY(8000) NOT NULL
        )

        -- Insert data from staging table into temp table
        -- and compute the hash. Use the hash to detect changes.
        INSERT INTO #temp_dyn_subarea
        SELECT
            [hso_subareaid],
            [hso_name],
            [hso_areaid],
            [_hso_areaid_value],
            [_hso_budirector_value],
            [_hso_businesscontrollerid_value],
            [_hso_deputybudirector_value],
            [_hso_deputydirectorid_value],
            [_hso_deputybusinesscontrollerid_value],
            [_hso_deputyebmemberid_value],
            [_hso_deputyfinancialdirectorid_value],
            [_hso_deputymanagerbusinesscontrolid_value],
            [_hso_deputymanagerid_value],
            [_hso_deputysbmemberid_value],
            [_hso_deputystaffdirectoreeid_value],
            [_hso_directorid_value],
            [_hso_ebmemberid_value],
            [_hso_financialdirectorid_value],
            [_hso_managerbusinesscontrolid_value],
            [_hso_managerid_value],
            [hso_nextnumber],
            [_hso_nextnumberid_value],
            [hso_prefix],
            [_hso_sbmemberid_value],
            [_hso_staffdirectoreeid_value],
            [hso_waitinghoursassignmentdeputy],
            [hso_waitinghoursreminderemail],
            [hso_waitinghoursreminderemaildeputy],
            [_createdby_value],
            [createdon],
            [importsequencenumber],
            [_modifiedby_value],
            [modifiedon],
            [_ownerid_value],
            [statecode],
            LEFT([_statecode_value], 4000),
            [statuscode],
            LEFT([_statuscode_value], 4000),
            [versionnumber],
            HASHBYTES(
                'MD5',
                ISNULL([hso_subareaid], '')
                + ISNULL([hso_name], '')
                + ISNULL([hso_areaid], '')
                + ISNULL([_hso_areaid_value], '')
                + ISNULL([_hso_budirector_value], '')
                + ISNULL([_hso_businesscontrollerid_value], '')
                + ISNULL([_hso_deputybudirector_value], '')
                + ISNULL([_hso_deputydirectorid_value], '')
                + ISNULL([_hso_deputybusinesscontrollerid_value], '')
                + ISNULL([_hso_deputyebmemberid_value], '')
                + ISNULL([_hso_deputyfinancialdirectorid_value], '')
                + ISNULL([_hso_deputymanagerbusinesscontrolid_value], '')
                + ISNULL([_hso_deputymanagerid_value], '')
                + ISNULL([_hso_deputysbmemberid_value], '')
                + ISNULL([_hso_deputystaffdirectoreeid_value], '')
                + ISNULL([_hso_directorid_value], '')
                + ISNULL([_hso_ebmemberid_value], '')
                + ISNULL([_hso_financialdirectorid_value], '')
                + ISNULL([_hso_managerbusinesscontrolid_value], '')
                + ISNULL([_hso_managerid_value], '')
                + ISNULL(CAST([hso_nextnumber] AS NVARCHAR(20)), '')
                + ISNULL([_hso_nextnumberid_value], '')
                + ISNULL([hso_prefix], '')
                + ISNULL([_hso_sbmemberid_value], '')
                + ISNULL([_hso_staffdirectoreeid_value], '')
                + ISNULL(CAST([hso_waitinghoursassignmentdeputy] AS NVARCHAR(20)), '')
                + ISNULL(CAST([hso_waitinghoursreminderemail] AS NVARCHAR(20)), '')
                + ISNULL(CAST([hso_waitinghoursreminderemaildeputy] AS NVARCHAR(20)), '')
                + ISNULL([_createdby_value], '')
                + ISNULL(CONVERT(NVARCHAR(19), [createdon], 120), '')
                + ISNULL(CAST([importsequencenumber] AS NVARCHAR(20)), '')
                + ISNULL([_modifiedby_value], '')
                + ISNULL(CONVERT(NVARCHAR(19), [modifiedon], 120), '')
                + ISNULL([_ownerid_value], '')
                + ISNULL(CAST([statecode] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_statecode_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([statuscode] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_statuscode_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([versionnumber] AS NVARCHAR(20)), '')
            ) AS [dwh_hash]
        FROM [staged].[dyn_EntitySubArea]

        IF OBJECT_ID(@schema + '.' + @table) IS NULL
            BEGIN
                DECLARE
                    @ThrowMessage NVARCHAR(100)
                    = 'The table ' + @schema + '.' + @table
                    + ' does not exist.';
                THROW 50000, @ThrowMessage, 1;
            END

        -- Update records that were updated in the source
        UPDATE [processed].[dyn_subarea]
        SET
            [dwh_valid_to] = DATEADD(DAY, -1, @process_run_date),
            [dwh_process_run_id] = @process_run_id,
            [dwh_active] = 0
        FROM #temp_dyn_subarea AS [T]
        LEFT JOIN [processed].[dyn_subarea] AS [P] ON [T].[ak_subarea] = [P].[ak_subarea]
        WHERE
            [T].[dwh_hash] != [P].[dwh_hash]
            AND [P].[dwh_active] = 1
        SELECT @updated = @@ROWCOUNT

        --  Update records that were deleted in the source
        UPDATE [processed].[dyn_subarea]
        SET
            [dwh_valid_to] = DATEADD(DAY, -1, @process_run_date),
            [dwh_process_run_id] = @process_run_id,
            [dwh_active] = 0
        FROM [processed].[dyn_subarea] AS [P]
        LEFT JOIN #temp_dyn_subarea AS [T] ON [T].[ak_subarea] = [P].[ak_subarea]
        WHERE
            [T].[ak_subarea] IS NULL
            AND [P].[dwh_active] = 1
        SELECT @deleted = @@ROWCOUNT

        --  Insert new records + insert records that were updated in the source
        INSERT INTO [processed].[dyn_subarea]
        (
            [dwh_valid_from],
            [dwh_valid_to],
            [dwh_active],
            [dwh_process_run_id],
            [ak_subarea],
            [name],
            [areaid],
            [areaid_value],
            [budirector_value],
            [businesscontrollerid_value],
            [deputybudirector_value],
            [deputydirectorid_value],
            [deputybusinesscontrollerid_value],
            [deputyebmemberid_value],
            [deputyfinancialdirectorid_value],
            [deputymanagerbusinesscontrolid_value],
            [deputymanagerid_value],
            [deputysbmemberid_value],
            [deputystaffdirectoreeid_value],
            [directorid_value],
            [ebmemberid_value],
            [financialdirectorid_value],
            [managerbusinesscontrolid_value],
            [managerid_value],
            [nextnumber],
            [nextnumberid_value],
            [prefix],
            [sbmemberid_value],
            [staffdirectoreeid_value],
            [waitinghoursassignmentdeputy],
            [waitinghoursreminderemail],
            [waitinghoursreminderemaildeputy],
            [createdby_value],
            [createdon],
            [importsequencenumber],
            [modifiedby_value],
            [modifiedon],
            [ownerid_value],
            [statecode],
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
            [T].[ak_subarea],
            [T].[name],
            [T].[areaid],
            [T].[areaid_value],
            [T].[budirector_value],
            [T].[businesscontrollerid_value],
            [T].[deputybudirector_value],
            [T].[deputydirectorid_value],
            [T].[deputybusinesscontrollerid_value],
            [T].[deputyebmemberid_value],
            [T].[deputyfinancialdirectorid_value],
            [T].[deputymanagerbusinesscontrolid_value],
            [T].[deputymanagerid_value],
            [T].[deputysbmemberid_value],
            [T].[deputystaffdirectoreeid_value],
            [T].[directorid_value],
            [T].[ebmemberid_value],
            [T].[financialdirectorid_value],
            [T].[managerbusinesscontrolid_value],
            [T].[managerid_value],
            [T].[nextnumber],
            [T].[nextnumberid_value],
            [T].[prefix],
            [T].[sbmemberid_value],
            [T].[staffdirectoreeid_value],
            [T].[waitinghoursassignmentdeputy],
            [T].[waitinghoursreminderemail],
            [T].[waitinghoursreminderemaildeputy],
            [T].[createdby_value],
            [T].[createdon],
            [T].[importsequencenumber],
            [T].[modifiedby_value],
            [T].[modifiedon],
            [T].[ownerid_value],
            [T].[statecode],
            [T].[statecode_value],
            [T].[statuscode],
            [T].[statuscode_value],
            [T].[versionnumber],
            [T].[dwh_hash]
        FROM #temp_dyn_subarea AS [T]
        LEFT JOIN [processed].[dyn_subarea] AS [P] ON [T].[ak_subarea] = [P].[ak_subarea]
        WHERE
            [P].[ak_subarea] IS NULL
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
