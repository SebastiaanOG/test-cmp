CREATE PROCEDURE [processed].[sp_load_dyn_approval]
    @process_run_date DATE,
    @process_run_id UNIQUEIDENTIFIER
AS
BEGIN
    -- Abort and rollback for all errors, not only the ones captured by BEGIN TRY
    SET XACT_ABORT ON;
    DECLARE
        @schema NVARCHAR(20) = 'processed',
        @table NVARCHAR(60) = 'dyn_approval',

        @inserted INT = 0,
        @updated INT = 0,
        @deleted INT = 0,
        @error_number INT = 0,
        @error_message NVARCHAR(4000)

    BEGIN TRY
        BEGIN TRANSACTION

        -- Create temp table to store the data from the staging table
        IF OBJECT_ID('tempdb..#temp_dyn_approval') IS NOT NULL
            BEGIN
                DROP TABLE #temp_dyn_approval
            END

        CREATE TABLE #temp_dyn_approval
        (
            [ak_approval] NVARCHAR(36),
            [name] NVARCHAR(250),
            [approvalinitiatorid_value] NVARCHAR(200),
            [approvalinitiatorremarks] NVARCHAR(4000),
            [approvedon] DATETIME2(7),
            [areaid] NVARCHAR(36),
            [areaid_value] NVARCHAR(100),
            [assignmentdatetodeputy] DATETIME2(7),
            [assignmenttodeputy] DATETIME2(7),
            [awardsummaryrevision] INT,
            [awardsummaryrevision_value] NVARCHAR(4000),
            [emailremindercalculated] DATETIME2(7),
            [emailreminderdate] DATETIME2(7),
            [emailreminderdeputycalculated] DATETIME2(7),
            [emailreminderdeputydate] DATETIME2(7),
            [fasttrack] INT,
            [fasttrack_value] NVARCHAR(4000),
            [latestapprovedawardsummary_value] NVARCHAR(200),
            [nonstandardprojectid] NVARCHAR(36),
            [nonstandardprojectid_value] NVARCHAR(200),
            [nonstandardprojectsnapshot] NVARCHAR(36),
            [nonstandardprojectsnapshot_value] NVARCHAR(200),
            [projectfinancial] NVARCHAR(36),
            [projectfinancial_value] NVARCHAR(100),
            [projectfinancialsnapshot] NVARCHAR(36),
            [projectfinancialsnapshot_value] NVARCHAR(100),
            [projectid] NVARCHAR(36),
            [projectid_value] NVARCHAR(200),
            [projectsnapshotid] NVARCHAR(36),
            [projectsnapshotid_value] NVARCHAR(200),
            [projectversion] NVARCHAR(100),
            [remarks] NVARCHAR(4000),
            [stagegate] INT,
            [stagegate_value] NVARCHAR(4000),
            [subareaproductgroupid] NVARCHAR(36),
            [subareaproductgroupid_value] NVARCHAR(100),
            [type] INT,
            [type_value] NVARCHAR(4000),
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
            [timezoneruleversionnumber] INT,
            [versionnumber] BIGINT,
            [dwh_hash] VARBINARY(8000) NOT NULL
        )

        -- Insert data from staging table into temp table
        -- and compute the hash. Use the hash to detect changes.
        INSERT INTO #temp_dyn_approval
        SELECT
            [hso_approvalid],
            [hso_name],
            [_hso_approvalinitiatorid_value],
            LEFT([hso_approvalinitiatorremarks], 4000),
            [hso_approvedon],
            [hso_areaid],
            [_hso_areaid_value],
            [hso_assignmentdatetodeputy],
            [hso_assignmenttodeputy],
            [hso_awardsummaryrevision],
            LEFT([_hso_awardsummaryrevision_value], 4000),
            [hso_emailremindercalculated],
            [hso_emailreminderdate],
            [hso_emailreminderdeputycalculated],
            [hso_emailreminderdeputydate],
            [hso_fasttrack],
            LEFT([_hso_fasttrack_value], 4000),
            [_hso_latestapprovedawardsummary_value],
            [hso_nonstandardprojectid],
            [_hso_nonstandardprojectid_value],
            [hso_nonstandardprojectsnapshot],
            [_hso_nonstandardprojectsnapshot_value],
            [hso_projectfinancial],
            [_hso_projectfinancial_value],
            [hso_projectfinancialsnapshot],
            [_hso_projectfinancialsnapshot_value],
            [hso_projectid],
            [_hso_projectid_value],
            [hso_projectsnapshotid],
            [_hso_projectsnapshotid_value],
            [hso_projectversion],
            LEFT([hso_remarks], 4000),
            [hso_stagegate],
            LEFT([_hso_stagegate_value], 4000),
            [hso_subareaproductgroupid],
            [_hso_subareaproductgroupid_value],
            [hso_type],
            LEFT([_hso_type_value], 4000),
            [_createdby_value],
            [createdon],
            [importsequencenumber],
            [_modifiedby_value],
            [modifiedon],
            [_modifiedonbehalfby_value],
            [_ownerid_value],
            [statecode],
            LEFT([_statecode_value], 4000),
            [statuscode],
            LEFT([_statuscode_value], 4000),
            [timezoneruleversionnumber],
            [versionnumber],
            HASHBYTES(
                'MD5',
                ISNULL([hso_approvalid], '')
                + ISNULL([hso_name], '')
                + ISNULL([_hso_approvalinitiatorid_value], '')
                + ISNULL(CAST(LEFT([hso_approvalinitiatorremarks], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CONVERT(NVARCHAR(19), [hso_approvedon], 120), '')
                + ISNULL([hso_areaid], '')
                + ISNULL([_hso_areaid_value], '')
                + ISNULL(CONVERT(NVARCHAR(19), [hso_assignmentdatetodeputy], 120), '')
                + ISNULL(CONVERT(NVARCHAR(19), [hso_assignmenttodeputy], 120), '')
                + ISNULL(CAST([hso_awardsummaryrevision] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_awardsummaryrevision_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CONVERT(NVARCHAR(19), [hso_emailremindercalculated], 120), '')
                + ISNULL(CONVERT(NVARCHAR(19), [hso_emailreminderdate], 120), '')
                + ISNULL(CONVERT(NVARCHAR(19), [hso_emailreminderdeputycalculated], 120), '')
                + ISNULL(CONVERT(NVARCHAR(19), [hso_emailreminderdeputydate], 120), '')
                + ISNULL(CAST([hso_fasttrack] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_fasttrack_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([_hso_latestapprovedawardsummary_value], '')
                + ISNULL([hso_nonstandardprojectid], '')
                + ISNULL([_hso_nonstandardprojectid_value], '')
                + ISNULL([hso_nonstandardprojectsnapshot], '')
                + ISNULL([_hso_nonstandardprojectsnapshot_value], '')
                + ISNULL([hso_projectfinancial], '')
                + ISNULL([_hso_projectfinancial_value], '')
                + ISNULL([hso_projectfinancialsnapshot], '')
                + ISNULL([_hso_projectfinancialsnapshot_value], '')
                + ISNULL([hso_projectid], '')
                + ISNULL([_hso_projectid_value], '')
                + ISNULL([hso_projectsnapshotid], '')
                + ISNULL([_hso_projectsnapshotid_value], '')
                + ISNULL([hso_projectversion], '')
                + ISNULL(CAST(LEFT([hso_remarks], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_stagegate] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_stagegate_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([hso_subareaproductgroupid], '')
                + ISNULL([_hso_subareaproductgroupid_value], '')
                + ISNULL(CAST([hso_type] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_type_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([_createdby_value], '')
                + ISNULL(CONVERT(NVARCHAR(19), [createdon], 120), '')
                + ISNULL(CAST([importsequencenumber] AS NVARCHAR(20)), '')
                + ISNULL([_modifiedby_value], '')
                + ISNULL(CONVERT(NVARCHAR(19), [modifiedon], 120), '')
                + ISNULL([_modifiedonbehalfby_value], '')
                + ISNULL([_ownerid_value], '')
                + ISNULL(CAST([statecode] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_statecode_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([statuscode] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_statuscode_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([timezoneruleversionnumber] AS NVARCHAR(20)), '')
                + ISNULL(CAST([versionnumber] AS NVARCHAR(20)), '')
            ) AS [dwh_hash]
        FROM [staged].[dyn_EntityApproval]

        IF OBJECT_ID(@schema + '.' + @table) IS NULL
            BEGIN
                DECLARE
                    @ThrowMessage NVARCHAR(100)
                    = 'The table ' + @schema + '.' + @table
                    + ' does not exist.';
                THROW 50000, @ThrowMessage, 1;
            END

        -- Update records that were updated in the source
        UPDATE [processed].[dyn_approval]
        SET
            [dwh_valid_to] = DATEADD(DAY, -1, @process_run_date),
            [dwh_process_run_id] = @process_run_id,
            [dwh_active] = 0
        FROM #temp_dyn_approval AS [T]
        LEFT JOIN [processed].[dyn_approval] AS [P] ON [T].[ak_approval] = [P].[ak_approval]
        WHERE
            [T].[dwh_hash] != [P].[dwh_hash]
            AND [P].[dwh_active] = 1
        SELECT @updated = @@ROWCOUNT

        --  Update records that were deleted in the source
        UPDATE [processed].[dyn_approval]
        SET
            [dwh_valid_to] = DATEADD(DAY, -1, @process_run_date),
            [dwh_process_run_id] = @process_run_id,
            [dwh_active] = 0
        FROM [processed].[dyn_approval] AS [P]
        LEFT JOIN #temp_dyn_approval AS [T] ON [T].[ak_approval] = [P].[ak_approval]
        WHERE
            [T].[ak_approval] IS NULL
            AND [P].[dwh_active] = 1
        SELECT @deleted = @@ROWCOUNT

        --  Insert new records + insert records that were updated in the source
        INSERT INTO [processed].[dyn_approval]
        (
            [dwh_valid_from],
            [dwh_valid_to],
            [dwh_active],
            [dwh_process_run_id],
            [ak_approval],
            [name],
            [approvalinitiatorid_value],
            [approvalinitiatorremarks],
            [approvedon],
            [areaid],
            [areaid_value],
            [assignmentdatetodeputy],
            [assignmenttodeputy],
            [awardsummaryrevision],
            [awardsummaryrevision_value],
            [emailremindercalculated],
            [emailreminderdate],
            [emailreminderdeputycalculated],
            [emailreminderdeputydate],
            [fasttrack],
            [fasttrack_value],
            [latestapprovedawardsummary_value],
            [nonstandardprojectid],
            [nonstandardprojectid_value],
            [nonstandardprojectsnapshot],
            [nonstandardprojectsnapshot_value],
            [projectfinancial],
            [projectfinancial_value],
            [projectfinancialsnapshot],
            [projectfinancialsnapshot_value],
            [projectid],
            [projectid_value],
            [projectsnapshotid],
            [projectsnapshotid_value],
            [projectversion],
            [remarks],
            [stagegate],
            [stagegate_value],
            [subareaproductgroupid],
            [subareaproductgroupid_value],
            [type],
            [type_value],
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
            [timezoneruleversionnumber],
            [versionnumber],
            [dwh_hash]
        )
        SELECT
            @process_run_date AS [dwh_valid_from],
            NULL AS [dwh_valid_to],
            1 AS [dwh_active],
            @process_run_id AS [dwh_process_run_id],
            [T].[ak_approval],
            [T].[name],
            [T].[approvalinitiatorid_value],
            [T].[approvalinitiatorremarks],
            [T].[approvedon],
            [T].[areaid],
            [T].[areaid_value],
            [T].[assignmentdatetodeputy],
            [T].[assignmenttodeputy],
            [T].[awardsummaryrevision],
            [T].[awardsummaryrevision_value],
            [T].[emailremindercalculated],
            [T].[emailreminderdate],
            [T].[emailreminderdeputycalculated],
            [T].[emailreminderdeputydate],
            [T].[fasttrack],
            [T].[fasttrack_value],
            [T].[latestapprovedawardsummary_value],
            [T].[nonstandardprojectid],
            [T].[nonstandardprojectid_value],
            [T].[nonstandardprojectsnapshot],
            [T].[nonstandardprojectsnapshot_value],
            [T].[projectfinancial],
            [T].[projectfinancial_value],
            [T].[projectfinancialsnapshot],
            [T].[projectfinancialsnapshot_value],
            [T].[projectid],
            [T].[projectid_value],
            [T].[projectsnapshotid],
            [T].[projectsnapshotid_value],
            [T].[projectversion],
            [T].[remarks],
            [T].[stagegate],
            [T].[stagegate_value],
            [T].[subareaproductgroupid],
            [T].[subareaproductgroupid_value],
            [T].[type],
            [T].[type_value],
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
            [T].[timezoneruleversionnumber],
            [T].[versionnumber],
            [T].[dwh_hash]
        FROM #temp_dyn_approval AS [T]
        LEFT JOIN [processed].[dyn_approval] AS [P] ON [T].[ak_approval] = [P].[ak_approval]
        WHERE
            [P].[ak_approval] IS NULL
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
