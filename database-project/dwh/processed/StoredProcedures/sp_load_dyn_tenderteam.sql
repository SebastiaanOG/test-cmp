CREATE PROCEDURE [processed].[sp_load_dyn_tenderteam]
    @process_run_date DATE,
    @process_run_id UNIQUEIDENTIFIER
AS
BEGIN
    DECLARE
        @schema NVARCHAR(20) = 'processed',
        @table NVARCHAR(20) = 'dyn_tenderteam',

        @inserted INT = 0,
        @updated INT = 0,
        @deleted INT = 0,
        @error_number INT = 0,
        @error_message NVARCHAR(4000)

    BEGIN TRY
        BEGIN TRANSACTION

        -- Create temp table to store the data from the staging table
        IF OBJECT_ID('tempdb..#temp_dyn_tenderteam') IS NOT NULL
            BEGIN
                DROP TABLE #temp_dyn_tenderteam
            END

        CREATE TABLE #temp_dyn_tenderteam
        (
            [AK_tenderteam] NVARCHAR(36),
            [name] NVARCHAR(100),
            [areaid] NVARCHAR(36),
            [areaid_value] NVARCHAR(100),
            [contactid_value] NVARCHAR(160),
            [employeeid] NVARCHAR(36),
            [employeeid_value] NVARCHAR(200),
            [employeeundetermined] INT,
            [employeeundetermined_value] NVARCHAR(4000),
            [ftedays] DECIMAL(18, 2),
            [ftepercent] DECIMAL(18, 2),
            [projectid] NVARCHAR(36),
            [projectid_value] NVARCHAR(200),
            [remarks] NVARCHAR(1000),
            [roleseniorityid_value] NVARCHAR(100),
            [seniority] INT,
            [seniority_value] NVARCHAR(4000),
            [tenderteamroleid] NVARCHAR(36),
            [tenderteamroleid_value] NVARCHAR(100),
            [workingdays] DECIMAL(18, 0),
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
            [Hash] VARBINARY(8000) NOT NULL
        )

        -- Insert data from staging table into temp table
        -- and compute the hash. Use the hash to detect changes.
        INSERT INTO #temp_dyn_tenderteam
        SELECT
            [hso_tenderteamid],
            [hso_name],
            [hso_areaid],
            [_hso_areaid_value],
            [_hso_contactid_value],
            [hso_employeeid],
            [_hso_employeeid_value],
            [hso_employeeundetermined],
            [_hso_employeeundetermined_value],
            [hso_ftedays],
            [hso_ftepercent],
            [hso_projectid],
            [_hso_projectid_value],
            [hso_remarks],
            [_hso_roleseniorityid_value],
            [hso_seniority],
            [_hso_seniority_value],
            [hso_tenderteamroleid],
            [_hso_tenderteamroleid_value],
            [hso_workingdays],
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
            HASHBYTES(
                'MD5',
                ISNULL([hso_tenderteamid], '')
                + ISNULL([hso_name], '')
                + ISNULL([hso_areaid], '')
                + ISNULL([_hso_areaid_value], '')
                + ISNULL([_hso_contactid_value], '')
                + ISNULL([hso_employeeid], '')
                + ISNULL([_hso_employeeid_value], '')
                + ISNULL(CAST([hso_employeeundetermined] AS NVARCHAR(20)), '')
                + ISNULL([_hso_employeeundetermined_value], '')
                + ISNULL(CAST([hso_ftedays] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_ftepercent] AS NVARCHAR(50)), '')
                + ISNULL([hso_projectid], '')
                + ISNULL([_hso_projectid_value], '')
                + ISNULL([hso_remarks], '')
                + ISNULL([_hso_roleseniorityid_value], '')
                + ISNULL(CAST([hso_seniority] AS NVARCHAR(20)), '')
                + ISNULL([_hso_seniority_value], '')
                + ISNULL([hso_tenderteamroleid], '')
                + ISNULL([_hso_tenderteamroleid_value], '')
                + ISNULL(CAST([hso_workingdays] AS NVARCHAR(50)), '')
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
            ) AS [Hash]
        FROM [staged].[dyn_EntityTenderTeam]

        IF OBJECT_ID(@schema + '.' + @table) IS NULL
            BEGIN
                DECLARE
                    @ThrowMessage NVARCHAR(100)
                    = 'The table ' + @schema + '.' + @table
                    + ' does not exist.';
                THROW 50000, @ThrowMessage, 1;
            END

        -- Update records that were updated in the source
        UPDATE [processed].[dyn_tenderteam]
        SET
            [dwh_valid_to] = DATEADD(DAY, -1, @process_run_date),
            [ProcessRunID] = @process_run_id,
            [dwh_active] = 0
        FROM #temp_dyn_tenderteam AS [T]
        LEFT JOIN [processed].[dyn_tenderteam] AS [P] ON [T].[AK_tenderteam] = [P].[AK_tenderteam]
        WHERE
            [T].[Hash] != [P].[Hash]
            AND [P].[dwh_active] = 1
        SELECT @updated = @@ROWCOUNT

        --  Update records that were deleted in the source
        UPDATE [processed].[dyn_tenderteam]
        SET
            [dwh_valid_to] = DATEADD(DAY, -1, @process_run_date),
            [ProcessRunID] = @process_run_id,
            [dwh_active] = 0
        FROM [processed].[dyn_tenderteam] AS [P]
        LEFT JOIN #temp_dyn_tenderteam AS [T] ON [T].[AK_tenderteam] = [P].[AK_tenderteam]
        WHERE
            [T].[AK_tenderteam] IS NULL
            AND [P].[dwh_active] = 1
        SELECT @deleted = @@ROWCOUNT

        --  Insert new records + insert records that were updated in the source
        INSERT INTO [processed].[dyn_tenderteam]
        (
            [dwh_valid_from],
            [dwh_valid_to],
            [dwh_active],
            [AK_tenderteam],
            [name],
            [areaid],
            [areaid_value],
            [contactid_value],
            [employeeid],
            [employeeid_value],
            [employeeundetermined],
            [employeeundetermined_value],
            [ftedays],
            [ftepercent],
            [projectid],
            [projectid_value],
            [remarks],
            [roleseniorityid_value],
            [seniority],
            [seniority_value],
            [tenderteamroleid],
            [tenderteamroleid_value],
            [workingdays],
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
            [Hash],
            [ProcessRunID]
        )
        SELECT
            @process_run_date AS [dwh_valid_from],
            NULL AS [dwh_valid_to],
            1 AS [dwh_active],
            [T].[AK_tenderteam],
            [T].[name],
            [T].[areaid],
            [T].[areaid_value],
            [T].[contactid_value],
            [T].[employeeid],
            [T].[employeeid_value],
            [T].[employeeundetermined],
            [T].[employeeundetermined_value],
            [T].[ftedays],
            [T].[ftepercent],
            [T].[projectid],
            [T].[projectid_value],
            [T].[remarks],
            [T].[roleseniorityid_value],
            [T].[seniority],
            [T].[seniority_value],
            [T].[tenderteamroleid],
            [T].[tenderteamroleid_value],
            [T].[workingdays],
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
            [T].[Hash],
            @process_run_id AS [ProcessRunID]
        FROM #temp_dyn_tenderteam AS [T]
        LEFT JOIN [processed].[dyn_tenderteam] AS [P] ON [T].[AK_tenderteam] = [P].[AK_tenderteam]
        WHERE
            [P].[AK_tenderteam] IS NULL
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
