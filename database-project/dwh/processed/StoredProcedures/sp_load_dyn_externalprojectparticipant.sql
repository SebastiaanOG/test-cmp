CREATE PROCEDURE [processed].[sp_load_dyn_externalprojectparticipant]
    @process_run_date DATE,
    @process_run_id UNIQUEIDENTIFIER
AS
BEGIN
    DECLARE
        @schema NVARCHAR(20) = 'processed',
        @table NVARCHAR(20) = 'dyn_externalprojectparticipant',

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
            [AK_externalprojectparticipant] NVARCHAR(36),
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
            [Hash] VARBINARY(8000) NOT NULL
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
            [_hso_jointventuresponsor_value],
            [hso_nonstandardprojectid],
            [_hso_nonstandardprojectid_value],
            [hso_projectid],
            [_hso_projectid_value],
            [hso_remarkinvolvedparty],
            [hso_role],
            [_hso_role_value],
            [hso_subcontractorscope],
            [hso_supplierscope],
            [hso_typeofjointventure],
            [_hso_typeofjointventure_value],
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
                + ISNULL([_hso_jointventuresponsor_value], '')
                + ISNULL([hso_nonstandardprojectid], '')
                + ISNULL([_hso_nonstandardprojectid_value], '')
                + ISNULL([hso_projectid], '')
                + ISNULL([_hso_projectid_value], '')
                + ISNULL([hso_remarkinvolvedparty], '')
                + ISNULL(CAST([hso_role] AS NVARCHAR(20)), '')
                + ISNULL([_hso_role_value], '')
                + ISNULL([hso_subcontractorscope], '')
                + ISNULL([hso_supplierscope], '')
                + ISNULL(CAST([hso_typeofjointventure] AS NVARCHAR(20)), '')
                + ISNULL([_hso_typeofjointventure_value], '')
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
            [ProcessRunID] = @process_run_id,
            [dwh_active] = 0
        FROM #temp_dyn_externalprojectparticipant AS [T]
        LEFT JOIN [processed].[dyn_externalprojectparticipant] AS [P] ON [T].[AK_externalprojectparticipant] = [P].[AK_externalprojectparticipant]
        WHERE
            [T].[Hash] != [P].[Hash]
            AND [P].[dwh_active] = 1
        SELECT @updated = @@ROWCOUNT

        --  Update records that were deleted in the source
        UPDATE [processed].[dyn_externalprojectparticipant]
        SET
            [dwh_valid_to] = DATEADD(DAY, -1, @process_run_date),
            [ProcessRunID] = @process_run_id,
            [dwh_active] = 0
        FROM [processed].[dyn_externalprojectparticipant] AS [P]
        LEFT JOIN #temp_dyn_externalprojectparticipant AS [T] ON [T].[AK_externalprojectparticipant] = [P].[AK_externalprojectparticipant]
        WHERE
            [T].[AK_externalprojectparticipant] IS NULL
            AND [P].[dwh_active] = 1
        SELECT @deleted = @@ROWCOUNT

        --  Insert new records + insert records that were updated in the source
        INSERT INTO [processed].[dyn_externalprojectparticipant]
        (
            [dwh_valid_from],
            [dwh_valid_to],
            [dwh_active],
            [AK_externalprojectparticipant],
            [name],
            [accountid],
            [accountid_value],
            [areaid],
            [areaid_value],
            [bidpriceeur],
            [contactid_value],
            [jointventureshare],
            [jointventuresponsor],
            [jointventuresponsor_value],
            [nonstandardprojectid],
            [nonstandardprojectid_value],
            [projectid],
            [projectid_value],
            [remarkinvolvedparty],
            [role],
            [role_value],
            [subcontractorscope],
            [supplierscope],
            [typeofjointventure],
            [typeofjointventure_value],
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
            [T].[AK_externalprojectparticipant],
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
            [T].[Hash],
            @process_run_id AS [ProcessRunID]
        FROM #temp_dyn_externalprojectparticipant AS [T]
        LEFT JOIN [processed].[dyn_externalprojectparticipant] AS [P] ON [T].[AK_externalprojectparticipant] = [P].[AK_externalprojectparticipant]
        WHERE
            [P].[AK_externalprojectparticipant] IS NULL
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
