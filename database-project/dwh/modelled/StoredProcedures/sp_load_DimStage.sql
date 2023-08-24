CREATE PROCEDURE [modelled].[sp_load_DimStage]
    @process_run_date DATE,
    @process_run_id UNIQUEIDENTIFIER
AS
BEGIN
    DECLARE
        @schema NVARCHAR(20) = 'modelled',
        @table NVARCHAR(20) = 'DimStage',

        @inserted INT = 0,
        @updated INT = 0,
        @deleted INT = 0,
        @error_number INT = 0,
        @error_message NVARCHAR(4000)

    DECLARE @merge_results TABLE
    (
        action_type VARCHAR(50),
        inserted_rk_stage VARCHAR(50) NULL,
        deleted_rk_stage VARCHAR(50) NULL
    );

    BEGIN TRY
    BEGIN TRANSACTION

    DROP TABLE IF EXISTS #stage

    SELECT
         [pk_ref_projectstage]              AS [rk_stage]
        ,[AK_statuscode]                    AS [statuscode]
        ,[AK_typetender]                    AS [typetender]
        ,[projectstage]                     AS [project_stage]
        ,HASHBYTES('MD5',
            CONCAT(
                [AK_statuscode]
                ,[AK_typetender]
                ,[projectstage]
            )
        )                                   AS dwh_hash

    INTO #stage
    FROM [reference].projectstage

    --- Check if the join did not cause duplicates (because of reference table)
    IF EXISTS (SELECT statuscode, typetender FROM #stage GROUP BY statuscode, typetender HAVING COUNT(*) > 1)
    BEGIN
        DECLARE @ErrorMessage NVARCHAR(256) = 'Duplicate rows in [reference].projectstage, reference table not filled correctly';
        THROW 50000, @ErrorMessage, 1;
    END

    --- Check if the dimension exists
    IF OBJECT_ID(@schema + '.' + @table) IS NULL
    BEGIN
        DECLARE
            @ThrowMessage NVARCHAR(100)
            = 'The table ' + @schema + '.' + @table
            + ' does not exist.';
        THROW 50000, @ThrowMessage, 1;
    END

    -- Synchronize the target table with refreshed data from source table
    MERGE modelled.DimStage AS DESTINATION
    USING #stage AS SOURCE
    ON (DESTINATION.rk_stage = SOURCE.rk_stage)
    -- When records are matched, update the records if there is any change, keep valid_from
    -- When dwh_active = 0, update dwh_valid_from
    WHEN MATCHED AND DESTINATION.dwh_hash <> SOURCE.dwh_hash OR DESTINATION.dwh_active = 0
    THEN UPDATE SET
         DESTINATION.[dwh_process_run_id] = @process_run_id
        ,DESTINATION.[dwh_hash] = SOURCE.dwh_hash
        ,DESTINATION.[dwh_valid_from] = CASE WHEN DESTINATION.dwh_active = 0 THEN @process_run_date ELSE DESTINATION.dwh_valid_from END
        ,DESTINATION.[dwh_valid_to] = NULL
        ,DESTINATION.[dwh_active] = 1
        ,DESTINATION.[statuscode] = SOURCE.[statuscode]
        ,DESTINATION.[typetender] = SOURCE.[typetender]
        ,DESTINATION.[project_stage] = SOURCE.[project_stage]

    WHEN NOT MATCHED BY TARGET
    THEN INSERT
        (dwh_valid_from, dwh_valid_to, dwh_active, dwh_process_run_id, dwh_hash, rk_stage, statuscode, typetender, project_stage)
    VALUES
    (
        @process_run_date
        ,NULL
        ,1
        ,@process_run_id
        ,SOURCE.dwh_hash
        ,SOURCE.rk_stage
        ,SOURCE.statuscode
        ,SOURCE.typetender
        ,SOURCE.project_stage
    )

    -- When there is a row that exists in target and same record does not exist in source then delete this record target
    WHEN NOT MATCHED BY SOURCE AND DESTINATION.rk_stage > 0 AND DESTINATION.dwh_active = 1
      THEN UPDATE SET
        DESTINATION.[dwh_valid_to] = DATEADD(day, -1 , @process_run_date)
        ,DESTINATION.[dwh_active] = 0

    OUTPUT
        $action,
        INSERTED.rk_stage,
        DELETED.rk_stage
    INTO @merge_results;

    COMMIT

    SELECT @deleted = COUNT(deleted_rk_stage) FROM @merge_results WHERE action_type = 'DELETE'
    SELECT @inserted = COUNT(inserted_rk_stage) FROM @merge_results WHERE action_type = 'INSERT'
    SELECT @updated = COUNT(inserted_rk_stage) FROM @merge_results WHERE action_type = 'UPDATE'

    -- Log process result
    EXECUTE [audit].[spInsertDataLogProcessed]
        @process_run_id = @process_run_id,
        @schema = @schema,
        @entity_name = @table,
        @rows_affected_insert = @inserted,
        @rows_affected_update = @updated,
        @rows_affected_delete = 0

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
