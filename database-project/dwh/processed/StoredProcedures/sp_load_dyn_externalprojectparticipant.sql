CREATE OR ALTER PROCEDURE [processed].[sp_load_dyn_externalprojectparticipant]
    @process_run_date DATE,
    @process_run_id UNIQUEIDENTIFIER
AS
BEGIN
    -- Abort and rollback for all errors, not only the ones captured by BEGIN TRY
    SET XACT_ABORT ON;
    DECLARE
        @schema NVARCHAR(20) = 'processed',
        @table NVARCHAR(60) = 'dyn_externalprojectparticipant',

        @inserted INT = 0,
        @updated INT = 0,
        @deleted INT = 0,
        @error_number INT = 0,
        @error_message NVARCHAR(4000)

    BEGIN TRY
        BEGIN TRANSACTION

        -- Create temp table to store the data from the staging table
        IF OBJECT_ID('tempdb..#temp_dyn_externalprojectparticipant') IS NOT NULL
            BEGIN
                DROP TABLE #temp_dyn_externalprojectparticipant
            END

        CREATE TABLE #temp_dyn_externalprojectparticipant
        (
            [ak_externalprojectparticipant] NVARCHAR(36),
            [name] NVARCHAR(400),
            [accountid] NVARCHAR(36),
            [accountid_value] NVARCHAR(160),
            [areaid] NVARCHAR(36),
            [areaid_value] NVARCHAR(100),
            [bidpriceeur] DECIMAL(18, 0),
            [contactid_value] NVARCHAR(160),
            [jointventureshare] NUMERIC,
            [jointventuresponsor] INT,
            [jointventuresponsor_value] NVARCHAR(4000),
            [nonstandardprojectid] NVARCHAR(36),
            [nonstandardprojectid_value] NVARCHAR(200),
            [projectid] NVARCHAR(36),
            [projectid_value] NVARCHAR(200),
            [remarkinvolvedparty] NVARCHAR(100),
            [role] INT,
            [role_value] NVARCHAR(4000),
            [subcontractorscope] NVARCHAR(4000),
            [supplierscope] NVARCHAR(4000),
            [typeofjointventure] INT,
            [typeofjointventure_value] NVARCHAR(4000),
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
            [dwh_hash] VARBINARY(8000) NOT NULL
        )

        -- Insert data from staging table into temp table
        -- and compute the hash. Use the hash to detect changes.
        INSERT INTO #temp_dyn_externalprojectparticipant
        SELECT
            [hso_externalprojectparticipantid],
            [hso_name],
            [hso_accountid],
            [_hso_accountid_value],
            [hso_areaid],
            [_hso_areaid_value],
            [hso_bidpriceeur],
            [_hso_contactid_value],
            [hso_jointventureshare],
            [hso_jointventuresponsor],
            LEFT([_hso_jointventuresponsor_value], 4000),
            [hso_nonstandardprojectid],
            [_hso_nonstandardprojectid_value],
            [hso_projectid],
            [_hso_projectid_value],
            [hso_remarkinvolvedparty],
            [hso_role],
            LEFT([_hso_role_value], 4000),
            LEFT([hso_subcontractorscope], 4000),
            LEFT([hso_supplierscope], 4000),
            [hso_typeofjointventure],
            LEFT([_hso_typeofjointventure_value], 4000),
            [_createdby_value],
            [createdon],
            [_createdonbehalfby_value],
            [importsequencenumber],
            [_modifiedby_value],
            [modifiedon],
            [_modifiedonbehalfby_value],
            [_ownerid_value],
            [statecode],
            LEFT([_statecode_value], 4000),
            [statuscode],
            LEFT([_statuscode_value], 4000),
            [versionnumber],
            HASHBYTES(
                'MD5',
                ISNULL([hso_externalprojectparticipantid], '')
                + ISNULL([hso_name], '')
                + ISNULL([hso_accountid], '')
                + ISNULL([_hso_accountid_value], '')
                + ISNULL([hso_areaid], '')
                + ISNULL([_hso_areaid_value], '')
                + ISNULL(CAST([hso_bidpriceeur] AS NVARCHAR(50)), '')
                + ISNULL([_hso_contactid_value], '')
                + ISNULL(CAST([hso_jointventureshare] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_jointventuresponsor] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_jointventuresponsor_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([hso_nonstandardprojectid], '')
                + ISNULL([_hso_nonstandardprojectid_value], '')
                + ISNULL([hso_projectid], '')
                + ISNULL([_hso_projectid_value], '')
                + ISNULL([hso_remarkinvolvedparty], '')
                + ISNULL(CAST([hso_role] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_role_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST(LEFT([hso_subcontractorscope], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST(LEFT([hso_supplierscope], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_typeofjointventure] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_typeofjointventure_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([_createdby_value], '')
                + ISNULL(CONVERT(NVARCHAR(19), [createdon], 120), '')
                + ISNULL([_createdonbehalfby_value], '')
                + ISNULL(CAST([importsequencenumber] AS NVARCHAR(20)), '')
                + ISNULL([_modifiedby_value], '')
                + ISNULL(CONVERT(NVARCHAR(19), [modifiedon], 120), '')
                + ISNULL([_modifiedonbehalfby_value], '')
                + ISNULL([_ownerid_value], '')
                + ISNULL(CAST([statecode] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_statecode_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([statuscode] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_statuscode_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([versionnumber] AS NVARCHAR(20)), '')
            ) AS [dwh_hash]
        FROM [staged].[dyn_EntityExternalProjectParticipant]

        IF OBJECT_ID(@schema + '.' + @table) IS NULL
            BEGIN
                DECLARE
                    @ThrowMessage NVARCHAR(100)
                    = 'The table ' + @schema + '.' + @table
                    + ' does not exist.';
                THROW 50000, @ThrowMessage, 1;
            END

        -- Update records that were updated in the source
        UPDATE [processed].[dyn_externalprojectparticipant]
        SET
            [dwh_valid_to] = DATEADD(DAY, -1, @process_run_date),
            [dwh_process_run_id] = @process_run_id,
            [dwh_active] = 0
        FROM #temp_dyn_externalprojectparticipant AS [T]
        LEFT JOIN [processed].[dyn_externalprojectparticipant] AS [P] ON [T].[ak_externalprojectparticipant] = [P].[ak_externalprojectparticipant]
        WHERE
            [T].[dwh_hash] != [P].[dwh_hash]
            AND [P].[dwh_active] = 1
        SELECT @updated = @@ROWCOUNT

        --  Update records that were deleted in the source
        UPDATE [processed].[dyn_externalprojectparticipant]
        SET
            [dwh_valid_to] = DATEADD(DAY, -1, @process_run_date),
            [dwh_process_run_id] = @process_run_id,
            [dwh_active] = 0
        FROM [processed].[dyn_externalprojectparticipant] AS [P]
        LEFT JOIN #temp_dyn_externalprojectparticipant AS [T] ON [T].[ak_externalprojectparticipant] = [P].[ak_externalprojectparticipant]
        WHERE
            [T].[ak_externalprojectparticipant] IS NULL
            AND [P].[dwh_active] = 1
        SELECT @deleted = @@ROWCOUNT

        --  Insert new records + insert records that were updated in the source
        INSERT INTO [processed].[dyn_externalprojectparticipant]
        (
            [dwh_valid_from],
            [dwh_valid_to],
            [dwh_active],
            [dwh_process_run_id],
            [ak_externalprojectparticipant],
            [name],
            [accountid],
            [accountid_value],
            [areaid],
            [areaid_value],
            [bidpriceeur],
            [contactid_value],
            [jointventureshare],
            [jointventuresponsor],
            LEFT([jointventuresponsor_value], 4000),
            [nonstandardprojectid],
            [nonstandardprojectid_value],
            [projectid],
            [projectid_value],
            [remarkinvolvedparty],
            [role],
            LEFT([role_value], 4000),
            LEFT([subcontractorscope], 4000),
            LEFT([supplierscope], 4000),
            [typeofjointventure],
            LEFT([typeofjointventure_value], 4000),
            [createdby_value],
            [createdon],
            [createdonbehalfby_value],
            [importsequencenumber],
            [modifiedby_value],
            [modifiedon],
            [modifiedonbehalfby_value],
            [ownerid_value],
            [statecode],
            LEFT([statecode_value], 4000),
            [statuscode],
            LEFT([statuscode_value], 4000),
            [versionnumber],
            [dwh_hash]            
        )
        SELECT
            @process_run_date AS [dwh_valid_from],
            NULL AS [dwh_valid_to],
            1 AS [dwh_active],
            @process_run_id AS [dwh_process_run_id],
            [T].[ak_externalprojectparticipant],
            [T].[name],
            [T].[accountid],
            [T].[accountid_value],
            [T].[areaid],
            [T].[areaid_value],
            [T].[bidpriceeur],
            [T].[contactid_value],
            [T].[jointventureshare],
            [T].[jointventuresponsor],
            [T].[jointventuresponsor_value],
            [T].[nonstandardprojectid],
            [T].[nonstandardprojectid_value],
            [T].[projectid],
            [T].[projectid_value],
            [T].[remarkinvolvedparty],
            [T].[role],
            [T].[role_value],
            [T].[subcontractorscope],
            [T].[supplierscope],
            [T].[typeofjointventure],
            [T].[typeofjointventure_value],
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
            [T].[dwh_hash]
        FROM #temp_dyn_externalprojectparticipant AS [T]
        LEFT JOIN [processed].[dyn_externalprojectparticipant] AS [P] ON [T].[ak_externalprojectparticipant] = [P].[ak_externalprojectparticipant]
        WHERE
            [P].[ak_externalprojectparticipant] IS NULL
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
