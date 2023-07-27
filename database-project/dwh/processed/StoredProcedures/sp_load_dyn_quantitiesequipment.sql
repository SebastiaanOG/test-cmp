CREATE PROCEDURE [processed].[sp_load_dyn_quantitiesequipment]
    @process_run_date DATE,
    @process_run_id UNIQUEIDENTIFIER
AS
BEGIN
    -- Abort and rollback for all errors, not only the ones captured by BEGIN TRY
    SET XACT_ABORT ON;
    DECLARE
        @schema NVARCHAR(20) = 'processed',
        @table NVARCHAR(60) = 'dyn_quantitiesequipment',

        @inserted INT = 0,
        @updated INT = 0,
        @deleted INT = 0,
        @error_number INT = 0,
        @error_message NVARCHAR(4000)

    BEGIN TRY
        BEGIN TRANSACTION

        -- Create temp table to store the data from the staging table
        IF OBJECT_ID('tempdb..#temp_dyn_quantitiesequipment') IS NOT NULL
            BEGIN
                DROP TABLE #temp_dyn_quantitiesequipment
            END

        CREATE TABLE #temp_dyn_quantitiesequipment
        (
            [ak_quantitiesequipment] NVARCHAR(36),
            [name] NVARCHAR(100),
            [areaid] NVARCHAR(36),
            [areaid_value] NVARCHAR(100),
            [datefrom] DATE,
            [dateto] DATE,
            [equipmentid] NVARCHAR(36),
            [equipmentid_value] NVARCHAR(100),
            [equipmentother] INT,
            [equipmentother_value] NVARCHAR(4000),
            [equipmentremarks] NVARCHAR(1000),
            [equipmenttypeid] NVARCHAR(36),
            [equipmenttypeid_value] NVARCHAR(100),
            [fasttrack] INT,
            [fasttrack_value] NVARCHAR(4000),
            [groupid_value] NVARCHAR(100),
            [maxdepth] DECIMAL(18, 2),
            [mindepth] DECIMAL(18, 2),
            [nonstandardprojectid] NVARCHAR(36),
            [nonstandardprojectid_value] NVARCHAR(200),
            [number] DECIMAL(18, 0),
            [numberofequipment] DECIMAL(18, 0),
            [projectid] NVARCHAR(36),
            [projectid_value] NVARCHAR(200),
            [provoremarks] NVARCHAR(4000),
            [quantityvo] DECIMAL(18, 0),
            [scopeid_value] NVARCHAR(100),
            [soiltype] INT,
            [soiltype_value] NVARCHAR(4000),
            [unitid_value] NVARCHAR(100),
            [vobusinessunitid] NVARCHAR(36),
            [vobusinessunitid_value] NVARCHAR(100),
            [weeks] INT,
            [workelementid] NVARCHAR(36),
            [workelementid_value] NVARCHAR(100),
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
            [timezoneruleversionnumber] INT,
            [versionnumber] BIGINT,
            [dwh_hash] VARBINARY(8000) NOT NULL
        )

        -- Insert data from staging table into temp table
        -- and compute the hash. Use the hash to detect changes.
        INSERT INTO #temp_dyn_quantitiesequipment
        SELECT
            [hso_quantitiesequipmentid],
            [hso_name],
            [hso_areaid],
            [_hso_areaid_value],
            [hso_datefrom],
            [hso_dateto],
            [hso_equipmentid],
            [_hso_equipmentid_value],
            [hso_equipmentother],
            LEFT([_hso_equipmentother_value], 4000),
            [hso_equipmentremarks],
            [hso_equipmenttypeid],
            [_hso_equipmenttypeid_value],
            [hso_fasttrack],
            LEFT([_hso_fasttrack_value], 4000),
            [_hso_groupid_value],
            [hso_maxdepth],
            [hso_mindepth],
            [hso_nonstandardprojectid],
            [_hso_nonstandardprojectid_value],
            [hso_number],
            [hso_numberofequipment],
            [hso_projectid],
            [_hso_projectid_value],
            LEFT([hso_provoremarks], 4000),
            [hso_quantityvo],
            [_hso_scopeid_value],
            [hso_soiltype],
            LEFT([_hso_soiltype_value], 4000),
            [_hso_unitid_value],
            [hso_vobusinessunitid],
            [_hso_vobusinessunitid_value],
            [hso_weeks],
            [hso_workelementid],
            [_hso_workelementid_value],
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
            [timezoneruleversionnumber],
            [versionnumber],
            HASHBYTES(
                'MD5',
                ISNULL([hso_quantitiesequipmentid], '')
                + ISNULL([hso_name], '')
                + ISNULL([hso_areaid], '')
                + ISNULL([_hso_areaid_value], '')
                + ISNULL(CONVERT(NVARCHAR(19), [hso_datefrom], 120), '')
                + ISNULL(CONVERT(NVARCHAR(19), [hso_dateto], 120), '')
                + ISNULL([hso_equipmentid], '')
                + ISNULL([_hso_equipmentid_value], '')
                + ISNULL(CAST([hso_equipmentother] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_equipmentother_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([hso_equipmentremarks], '')
                + ISNULL([hso_equipmenttypeid], '')
                + ISNULL([_hso_equipmenttypeid_value], '')
                + ISNULL(CAST([hso_fasttrack] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_fasttrack_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([_hso_groupid_value], '')
                + ISNULL(CAST([hso_maxdepth] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_mindepth] AS NVARCHAR(50)), '')
                + ISNULL([hso_nonstandardprojectid], '')
                + ISNULL([_hso_nonstandardprojectid_value], '')
                + ISNULL(CAST([hso_number] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_numberofequipment] AS NVARCHAR(50)), '')
                + ISNULL([hso_projectid], '')
                + ISNULL([_hso_projectid_value], '')
                + ISNULL(CAST(LEFT([hso_provoremarks], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_quantityvo] AS NVARCHAR(50)), '')
                + ISNULL([_hso_scopeid_value], '')
                + ISNULL(CAST([hso_soiltype] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_soiltype_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([_hso_unitid_value], '')
                + ISNULL([hso_vobusinessunitid], '')
                + ISNULL([_hso_vobusinessunitid_value], '')
                + ISNULL(CAST([hso_weeks] AS NVARCHAR(20)), '')
                + ISNULL([hso_workelementid], '')
                + ISNULL([_hso_workelementid_value], '')
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
                + ISNULL(CAST([timezoneruleversionnumber] AS NVARCHAR(20)), '')
                + ISNULL(CAST([versionnumber] AS NVARCHAR(20)), '')
            ) AS [dwh_hash]
        FROM [staged].[dyn_EntityQuantitiesEquipment]

        IF OBJECT_ID(@schema + '.' + @table) IS NULL
            BEGIN
                DECLARE
                    @ThrowMessage NVARCHAR(100)
                    = 'The table ' + @schema + '.' + @table
                    + ' does not exist.';
                THROW 50000, @ThrowMessage, 1;
            END

        -- Update records that were updated in the source
        UPDATE [processed].[dyn_quantitiesequipment]
        SET
            [dwh_valid_to] = DATEADD(DAY, -1, @process_run_date),
            [dwh_process_run_id] = @process_run_id,
            [dwh_active] = 0
        FROM #temp_dyn_quantitiesequipment AS [T]
        LEFT JOIN [processed].[dyn_quantitiesequipment] AS [P] ON [T].[ak_quantitiesequipment] = [P].[ak_quantitiesequipment]
        WHERE
            [T].[dwh_hash] != [P].[dwh_hash]
            AND [P].[dwh_active] = 1
        SELECT @updated = @@ROWCOUNT

        --  Update records that were deleted in the source
        UPDATE [processed].[dyn_quantitiesequipment]
        SET
            [dwh_valid_to] = DATEADD(DAY, -1, @process_run_date),
            [dwh_process_run_id] = @process_run_id,
            [dwh_active] = 0
        FROM [processed].[dyn_quantitiesequipment] AS [P]
        LEFT JOIN #temp_dyn_quantitiesequipment AS [T] ON [T].[ak_quantitiesequipment] = [P].[ak_quantitiesequipment]
        WHERE
            [T].[ak_quantitiesequipment] IS NULL
            AND [P].[dwh_active] = 1
        SELECT @deleted = @@ROWCOUNT

        --  Insert new records + insert records that were updated in the source
        INSERT INTO [processed].[dyn_quantitiesequipment]
        (
            [dwh_valid_from],
            [dwh_valid_to],
            [dwh_active],
            [dwh_process_run_id],
            [ak_quantitiesequipment],
            [name],
            [areaid],
            [areaid_value],
            [datefrom],
            [dateto],
            [equipmentid],
            [equipmentid_value],
            [equipmentother],
            [equipmentother_value],
            [equipmentremarks],
            [equipmenttypeid],
            [equipmenttypeid_value],
            [fasttrack],
            [fasttrack_value],
            [groupid_value],
            [maxdepth],
            [mindepth],
            [nonstandardprojectid],
            [nonstandardprojectid_value],
            [number],
            [numberofequipment],
            [projectid],
            [projectid_value],
            [provoremarks],
            [quantityvo],
            [scopeid_value],
            [soiltype],
            [soiltype_value],
            [unitid_value],
            [vobusinessunitid],
            [vobusinessunitid_value],
            [weeks],
            [workelementid],
            [workelementid_value],
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
            [timezoneruleversionnumber],
            [versionnumber],
            [dwh_hash]            
        )
        SELECT
            @process_run_date AS [dwh_valid_from],
            NULL AS [dwh_valid_to],
            1 AS [dwh_active],
            @process_run_id AS [dwh_process_run_id],
            [T].[ak_quantitiesequipment],
            [T].[name],
            [T].[areaid],
            [T].[areaid_value],
            [T].[datefrom],
            [T].[dateto],
            [T].[equipmentid],
            [T].[equipmentid_value],
            [T].[equipmentother],
            [T].[equipmentother_value],
            [T].[equipmentremarks],
            [T].[equipmenttypeid],
            [T].[equipmenttypeid_value],
            [T].[fasttrack],
            [T].[fasttrack_value],
            [T].[groupid_value],
            [T].[maxdepth],
            [T].[mindepth],
            [T].[nonstandardprojectid],
            [T].[nonstandardprojectid_value],
            [T].[number],
            [T].[numberofequipment],
            [T].[projectid],
            [T].[projectid_value],
            [T].[provoremarks],
            [T].[quantityvo],
            [T].[scopeid_value],
            [T].[soiltype],
            [T].[soiltype_value],
            [T].[unitid_value],
            [T].[vobusinessunitid],
            [T].[vobusinessunitid_value],
            [T].[weeks],
            [T].[workelementid],
            [T].[workelementid_value],
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
            [T].[timezoneruleversionnumber],
            [T].[versionnumber],
            [T].[dwh_hash]
        FROM #temp_dyn_quantitiesequipment AS [T]
        LEFT JOIN [processed].[dyn_quantitiesequipment] AS [P] ON [T].[ak_quantitiesequipment] = [P].[ak_quantitiesequipment]
        WHERE
            [P].[ak_quantitiesequipment] IS NULL
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
