--CREATE PROCEDURE [modelled].[sp_load_DimSubArea]           -- CHANGE INTO DIMENSION NAME
--    @process_run_date DATE,
--    @process_run_id UNIQUEIDENTIFIER
-- AS

DECLARE 
    @process_run_date DATE = (SELECT GETDATE()),
    @process_run_id UNIQUEIDENTIFIER = (SELECT NEWID())
BEGIN
    DECLARE
        @schema NVARCHAR(20) = 'modelled',
        @table NVARCHAR(20) = 'DimSubArea',            -- CHANGE INTO DIMENSION NAME

        @inserted INT = 0,
        @updated INT = 0,
        @deleted INT = 0,
        @error_number INT = 0,
        @error_message NVARCHAR(4000)

    BEGIN TRY
        BEGIN TRANSACTION

      
		---- Query the dataset to fill #temp_DimSource: Source is processed layer data.
		---- In a full delta, only select dwh_active = 1.

		SELECT
            [dwh_valid_from]
            ,[dwh_valid_to]
            ,[dwh_active]
            ,[dwh_process_run_id]
            ,[dwh_hash]
            ,[ak_subarea]
            ,[name]             AS [subarea_name]

            ,[dwh_valid_from]
            ,[dwh_valid_to]
            ,[dwh_active]
            ,[dwh_process_run_id]
            ,HASHBYTES(
                'MD5', CONCAT([dwh_valid_from]
                    ,[dwh_valid_to]
                    ,[dwh_active]
                    ,[dwh_process_run_id]
                    ,[dwh_hash]
                    ,[ak_subarea]
                    ,[name])) as dwh_hash

    -- INTO #subarea_active
    FROM [processed].[dyn_subarea]
    WHERE dwh_active = 1

		--- Check if the dimension exists ---
        IF OBJECT_ID(@schema + '.' + @table) IS NULL
            BEGIN
                DECLARE
                    @ThrowMessage NVARCHAR(100)
                    = 'The table ' + @schema + '.' + @table
                    + ' does not exist.';
                THROW 50000, @ThrowMessage, 1;
            END

        

		-- 1. Update records that were updated in the source 
		--- MERGE????
	    UPDATE [modelled].[DimTable]           -- CHANGE INTO DIMENSION NAME
        SET
			[ProcessRunID] = @process_run_id,
			[Field1] = [T].[Field1] ,
			[Field1] = [T].[Field1]       
          
			--  Don't change: 
			-- [AK_xxx]
			-- [dwh_valid_to] 
			-- [dwh_valid_from]
			-- [dwh_active] 
        FROM #temp_DimSource AS [T]
        LEFT JOIN [modelled].[DimTable] AS [M]    -- CHANGE INTO DIMENSION NAME
		ON [T].[AK_xxx] = [M].[AK_xxx]            -- CHANGE INTO AK_NAME
        WHERE
            [T].[Hash] != [M].[Hash]
            AND [M].[dwh_active] = 1
        SELECT @updated = @@ROWCOUNT

        --  2. Inactivate records that were deleted in the source
		--     Active in DimTable, Inactive in processed (so missing in DATASET.)
        UPDATE [modelled].[DimTable]           -- CHANGE INTO DIMENSION NAME
        SET
            [dwh_valid_to] = DATEADD(DAY, -1, @process_run_date),
            [ProcessRunID] = @process_run_id,
            [dwh_active] = 0
        FROM [modelled].[DimTable] AS [P]      -- CHANGE INTO DIMENSION NAME
        LEFT JOIN #temp_DimSource AS [T] 
		ON [T].[AK_xxx] = [P].[AK_xxx]         -- CHANGE INTO AK_NAME
        WHERE
            [T].[AK_xxx] IS NULL               -- CHANGE INTO AK_NAME
            AND [P].[dwh_active] = 1
        SELECT @deleted = @@ROWCOUNT

        --  3. Insert new records
        INSERT INTO [modelled].[DimTable]
        (
             [dwh_valid_from]
            ,[dwh_valid_to]
            ,[dwh_active]
            ,[AK_xxx]                           -- CHANGE INTO AK_NAME
            ,[field1]
            ,[field2]
            ,[Hash]
            ,[ProcessRunID]
        )
        SELECT
            @process_run_date AS [dwh_valid_from]
            ,NULL AS [dwh_valid_to]
            ,1 AS [dwh_active]
            ,[T].[AK_xxx]                       -- CHANGE INTO AK_NAME
            ,[T].[field1]
            ,[T].[field2]
            ,[T].[Hash]
            ,@process_run_id AS [ProcessRunID]
        FROM  #temp_DimSource AS [T]
        LEFT JOIN [modelled].[DimTable] AS [P] -- CHANGE INTO DIMENSION NAME 
		ON [T].[AK_xxx] = [P].[AK_xxx]         -- CHANGE INTO AK_NAME
        WHERE
            [P].[AK_xxx] IS                    -- CHANGE INTO AK_NAME
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
