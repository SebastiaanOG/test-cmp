CREATE PROCEDURE [modelled].[sp_load_DimProjectStatus]
    @process_run_date DATE,
    @process_run_id UNIQUEIDENTIFIER
AS
BEGIN
    DECLARE
        @schema NVARCHAR(20) = 'modelled',
        @table NVARCHAR(20) = 'DimProjectStatus',

        @inserted INT = 0,
        @updated INT = 0,
        @deleted INT = 0,
        @error_number INT = 0,
        @error_message NVARCHAR(4000)

    DECLARE @merge_results TABLE
    (
        action_type VARCHAR(50),
        inserted_ak_projectstatus VARCHAR(50) NULL,
        deleted_ak_projectstatus VARCHAR(50) NULL
    );

    BEGIN TRY
    BEGIN TRANSACTION

    DROP TABLE IF EXISTS #projectstatus
    
    SELECT
         [ak_projectstatus]
        ,[projectstatus_name]
        ,[projectphase]
        ,[stagegate_code]
        ,[stagegate_name]
        ,[project_statecode]
        ,HASHBYTES('MD5',
            CONCAT(
                [ak_projectstatus]
                ,[projectstatus_name]
                ,[projectphase]
                ,[stagegate_code]
                ,[stagegate_name]
                ,[project_statecode]
            )
        ) AS dwh_hash

    INTO #projectstatus
    FROM (
        SELECT
            statuscode                  AS [ak_projectstatus]
            ,statuscode_value           AS [projectstatus_name]
            ,projectphase_value         AS [projectphase]
            ,stagegate_value            AS [stagegate_code]
            ,stagegate_value            AS [stagegate_name]
            ,statecode_value            AS [project_statecode]
            ,ROW_NUMBER() OVER (PARTITION BY statuscode ORDER BY dwh_valid_from DESC) as [row]
        FROM processed.dyn_project
        WHERE statuscode IS NOT NULL -- does not include dwh_active as we want to match all project statusses
    ) rows_projectstatus
    WHERE [row] = 1 -- take last value per ak_projectstatus

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
    MERGE modelled.DimProjectStatus AS DESTINATION
    USING #projectstatus AS SOURCE
    ON (DESTINATION.ak_projectstatus = SOURCE.ak_projectstatus)
    -- When records are matched, update the records if there is any change, keep valid_from
    -- When dwh_active = 0, update dwh_valid_from
    WHEN MATCHED AND DESTINATION.dwh_hash <> SOURCE.dwh_hash OR DESTINATION.dwh_active = 0
    THEN UPDATE SET
         DESTINATION.[dwh_process_run_id] = @process_run_id
        ,DESTINATION.[dwh_hash] = SOURCE.dwh_hash
        ,DESTINATION.[dwh_valid_from] = CASE WHEN DESTINATION.dwh_active = 0 THEN @process_run_date ELSE DESTINATION.dwh_valid_from END
        ,DESTINATION.[dwh_valid_to] = NULL
        ,DESTINATION.[dwh_active] = 1
        ,DESTINATION.[projectstatus_name] = SOURCE.[projectstatus_name]
        ,DESTINATION.[projectphase] = SOURCE.[projectphase]
        ,DESTINATION.[stagegate_code] = SOURCE.[stagegate_code]
        ,DESTINATION.[stagegate_name] = SOURCE.[stagegate_name]
        ,DESTINATION.[project_statecode] = SOURCE.[project_statecode]

    WHEN NOT MATCHED BY TARGET
    THEN INSERT
        (dwh_valid_from, dwh_valid_to, dwh_active, dwh_process_run_id, dwh_hash, ak_projectstatus, projectstatus_name, projectphase, stagegate_code, stagegate_name, project_statecode)
    VALUES
    (
        @process_run_date
        ,NULL
        ,1
        ,@process_run_id
        ,SOURCE.dwh_hash
        ,SOURCE.ak_projectstatus
        ,SOURCE.[projectstatus_name]
        ,SOURCE.[projectphase]
        ,SOURCE.[stagegate_code]
        ,SOURCE.[stagegate_name]
        ,SOURCE.[project_statecode]
    )

    -- When there is a row that exists in target and same record does not exist in source then delete this record target
    WHEN NOT MATCHED BY SOURCE AND DESTINATION.pk_projectstatus > 0 AND DESTINATION.dwh_active = 1
      THEN UPDATE SET
        DESTINATION.[dwh_valid_to] = DATEADD(day, -1 , @process_run_date)
        ,DESTINATION.[dwh_active] = 0

    OUTPUT
        $action,
        INSERTED.ak_projectstatus,
        DELETED.ak_projectstatus
    INTO @merge_results;

    COMMIT

    SELECT @deleted = COUNT(deleted_ak_projectstatus) FROM @merge_results WHERE action_type = 'DELETE'
    SELECT @inserted = COUNT(inserted_ak_projectstatus) FROM @merge_results WHERE action_type = 'INSERT'
    SELECT @updated = COUNT(inserted_ak_projectstatus) FROM @merge_results WHERE action_type = 'UPDATE'

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
