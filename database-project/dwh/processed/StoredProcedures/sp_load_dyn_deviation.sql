CREATE PROCEDURE [processed].[sp_load_dyn_deviation]
    @process_run_date DATE,
    @process_run_id UNIQUEIDENTIFIER
AS
BEGIN
    -- Abort and rollback for all errors, not only the ones captured by BEGIN TRY
    SET XACT_ABORT ON;
    DECLARE
        @schema NVARCHAR(20) = 'processed',
        @table NVARCHAR(60) = 'dyn_deviation',

        @inserted INT = 0,
        @updated INT = 0,
        @deleted INT = 0,
        @error_number INT = 0,
        @error_message NVARCHAR(4000)

    BEGIN TRY
        BEGIN TRANSACTION

        -- Create temp table to store the data from the staging table
        IF OBJECT_ID('tempdb..#temp_dyn_deviation') IS NOT NULL
            BEGIN
                DROP TABLE #temp_dyn_deviation
            END

        CREATE TABLE #temp_dyn_deviation
        (
            [ak_deviation] NVARCHAR(36),
            [name] NVARCHAR(4000),
            [area] NVARCHAR(36),
            [area_value] NVARCHAR(100),
            [effect] INT,
            [effect_value] NVARCHAR(4000),
            [expectedimpact] NVARCHAR(4000),
            [projectid] NVARCHAR(36),
            [projectid_value] NVARCHAR(200),
            [reason] NVARCHAR(4000),
            [remark] NVARCHAR(4000),
            [solutionoffered] NVARCHAR(4000),
            [typeofdevation] INT,
            [typeofdevation_value] NVARCHAR(4000),
            [createdby_value] NVARCHAR(200),
            [createdon] DATETIME2(7),
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
        INSERT INTO #temp_dyn_deviation
        SELECT
            [hso_deviationid],
            LEFT([hso_name], 4000),
            [hso_area],
            [_hso_area_value],
            [hso_effect],
            LEFT([_hso_effect_value], 4000),
            LEFT([hso_expectedimpact], 4000),
            [hso_projectid],
            [_hso_projectid_value],
            LEFT([hso_reason], 4000),
            LEFT([hso_remark], 4000),
            LEFT([hso_solutionoffered], 4000),
            [hso_typeofdevation],
            LEFT([_hso_typeofdevation_value], 4000),
            [_createdby_value],
            [createdon],
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
                ISNULL([hso_deviationid], '')
                + ISNULL(CAST(LEFT([hso_name], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([hso_area], '')
                + ISNULL([_hso_area_value], '')
                + ISNULL(CAST([hso_effect] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_effect_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST(LEFT([hso_expectedimpact], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([hso_projectid], '')
                + ISNULL([_hso_projectid_value], '')
                + ISNULL(CAST(LEFT([hso_reason], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST(LEFT([hso_remark], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST(LEFT([hso_solutionoffered], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_typeofdevation] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_typeofdevation_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([_createdby_value], '')
                + ISNULL(CONVERT(NVARCHAR(19), [createdon], 120), '')
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
        FROM [staged].[dyn_EntityDeviation]

        IF OBJECT_ID(@schema + '.' + @table) IS NULL
            BEGIN
                DECLARE
                    @ThrowMessage NVARCHAR(100)
                    = 'The table ' + @schema + '.' + @table
                    + ' does not exist.';
                THROW 50000, @ThrowMessage, 1;
            END

        -- Update records that were updated in the source
        UPDATE [processed].[dyn_deviation]
        SET
            [dwh_valid_to] = DATEADD(DAY, -1, @process_run_date),
            [dwh_process_run_id] = @process_run_id,
            [dwh_active] = 0
        FROM #temp_dyn_deviation AS [T]
        LEFT JOIN [processed].[dyn_deviation] AS [P] ON [T].[ak_deviation] = [P].[ak_deviation]
        WHERE
            [T].[dwh_hash] != [P].[dwh_hash]
            AND [P].[dwh_active] = 1
        SELECT @updated = @@ROWCOUNT

        --  Update records that were deleted in the source
        UPDATE [processed].[dyn_deviation]
        SET
            [dwh_valid_to] = DATEADD(DAY, -1, @process_run_date),
            [dwh_process_run_id] = @process_run_id,
            [dwh_active] = 0
        FROM [processed].[dyn_deviation] AS [P]
        LEFT JOIN #temp_dyn_deviation AS [T] ON [T].[ak_deviation] = [P].[ak_deviation]
        WHERE
            [T].[ak_deviation] IS NULL
            AND [P].[dwh_active] = 1
        SELECT @deleted = @@ROWCOUNT

        --  Insert new records + insert records that were updated in the source
        INSERT INTO [processed].[dyn_deviation]
        (
            [dwh_valid_from],
            [dwh_valid_to],
            [dwh_active],
            [dwh_process_run_id],
            [ak_deviation],
            [name],
            [area],
            [area_value],
            [effect],
            [effect_value],
            [expectedimpact],
            [projectid],
            [projectid_value],
            [reason],
            [remark],
            [solutionoffered],
            [typeofdevation],
            [typeofdevation_value],
            [createdby_value],
            [createdon],
            [modifiedby_value],
            [modifiedon],
            [modifiedonbehalfby_value],
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
            [T].[ak_deviation],
            [T].[name],
            [T].[area],
            [T].[area_value],
            [T].[effect],
            [T].[effect_value],
            [T].[expectedimpact],
            [T].[projectid],
            [T].[projectid_value],
            [T].[reason],
            [T].[remark],
            [T].[solutionoffered],
            [T].[typeofdevation],
            [T].[typeofdevation_value],
            [T].[createdby_value],
            [T].[createdon],
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
        FROM #temp_dyn_deviation AS [T]
        LEFT JOIN [processed].[dyn_deviation] AS [P] ON [T].[ak_deviation] = [P].[ak_deviation]
        WHERE
            [P].[ak_deviation] IS NULL
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
