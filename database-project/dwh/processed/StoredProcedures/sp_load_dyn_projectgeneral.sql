CREATE OR ALTER PROCEDURE [processed].[sp_load_dyn_projectgeneral]
    @process_run_date DATE,
    @process_run_id UNIQUEIDENTIFIER
AS
BEGIN
    -- Abort and rollback for all errors, not only the ones captured by BEGIN TRY
    SET XACT_ABORT ON;
    DECLARE
        @schema NVARCHAR(20) = 'processed',
        @table NVARCHAR(60) = 'dyn_projectgeneral',

        @inserted INT = 0,
        @updated INT = 0,
        @deleted INT = 0,
        @error_number INT = 0,
        @error_message NVARCHAR(4000)

    BEGIN TRY
        BEGIN TRANSACTION

        -- Create temp table to store the data from the staging table
        IF OBJECT_ID('tempdb..#temp_dyn_projectgeneral') IS NOT NULL
            BEGIN
                DROP TABLE #temp_dyn_projectgeneral
            END

        CREATE TABLE #temp_dyn_projectgeneral
        (
            [ak_projectgeneral] NVARCHAR(36),
            [projectnumber] NVARCHAR(100),
            [name] NVARCHAR(200),
            [area2ndid] NVARCHAR(36),
            [area2ndid_value] NVARCHAR(100),
            [areaid] NVARCHAR(36),
            [areaid_value] NVARCHAR(100),
            [awarddateexpected] DATE,
            [businessunit2ndid] NVARCHAR(36),
            [businessunit2ndid_value] NVARCHAR(100),
            [commercialresponsibleid_value] NVARCHAR(200),
            [countryid] NVARCHAR(36),
            [countryid_value] NVARCHAR(100),
            [durationofcontract] DECIMAL(18, 1),
            [expectedstartofwork] DATE,
            [latitude] FLOAT,
            [latitudedegrees] DECIMAL(18, 0),
            [latitudedms] NVARCHAR(20),
            [latitudeminutes] DECIMAL(18, 0),
            [atitudenorthsouth] INT,
            [latitudenorthsouth_value] NVARCHAR(4000),
            [latitudeseconds] DECIMAL(18, 0),
            [location] NVARCHAR(100),
            [longitude] FLOAT,
            [longitudedegrees] DECIMAL(18, 0),
            [longitudedms] NVARCHAR(20),
            [longitudeeastwest] INT,
            [longitudeeastwest_value] NVARCHAR(4000),
            [longitudeminutes] DECIMAL(18, 0),
            [longitudeseconds] DECIMAL(18, 0),
            [nonstandardproject] NVARCHAR(36),
            [nonstandardproject_value] NVARCHAR(200),
            [pq] INT,
            [pq_value] NVARCHAR(4000),
            [project] NVARCHAR(36),
            [project_value] NVARCHAR(200),
            [projectawarded] INT,
            [projectawarded_value] NVARCHAR(4000),
            [startoftender] DATE,
            [subarea2ndid] NVARCHAR(36),
            [subarea2ndid_value] NVARCHAR(100),
            [subareaid] NVARCHAR(36),
            [subareaid_value] NVARCHAR(100),
            [tenderdate] DATE,
            [vobusinessunitid] NVARCHAR(36),
            [vobusinessunitid_value] NVARCHAR(100),
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
            [timezoneruleversionnumber] INT,
            [versionnumber] BIGINT,
            [dwh_hash] VARBINARY(8000) NOT NULL
        )

        -- Insert data from staging table into temp table
        -- and compute the hash. Use the hash to detect changes.
        INSERT INTO #temp_dyn_projectgeneral
        SELECT
            [hso_projectgeneralid],
            [hso_projectnumber],
            [hso_name],
            [hso_area2ndid],
            [_hso_area2ndid_value],
            [hso_areaid],
            [_hso_areaid_value],
            [hso_awarddateexpected],
            [hso_businessunit2ndid],
            [_hso_businessunit2ndid_value],
            [_hso_commercialresponsibleid_value],
            [hso_countryid],
            [_hso_countryid_value],
            [hso_durationofcontract],
            [hso_expectedstartofwork],
            [hso_latitude],
            [hso_latitudedegrees],
            [hso_latitudedms],
            [hso_latitudeminutes],
            [hso_latitudenorthsouth],
            LEFT([_hso_latitudenorthsouth_value], 4000),
            [hso_latitudeseconds],
            [hso_location],
            [hso_longitude],
            [hso_longitudedegrees],
            [hso_longitudedms],
            [hso_longitudeeastwest],
            LEFT([_hso_longitudeeastwest_value], 4000),
            [hso_longitudeminutes],
            [hso_longitudeseconds],
            [hso_nonstandardproject],
            [_hso_nonstandardproject_value],
            [hso_pq],
            LEFT([_hso_pq_value], 4000),
            [hso_project],
            [_hso_project_value],
            [hso_projectawarded],
            LEFT([_hso_projectawarded_value], 4000),
            [hso_startoftender],
            [hso_subarea2ndid],
            [_hso_subarea2ndid_value],
            [hso_subareaid],
            [_hso_subareaid_value],
            [hso_tenderdate],
            [hso_vobusinessunitid],
            [_hso_vobusinessunitid_value],
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
            [timezoneruleversionnumber],
            [versionnumber],
            HASHBYTES(
                'MD5',
                ISNULL([hso_projectgeneralid], '')
                + ISNULL([hso_projectnumber], '')
                + ISNULL([hso_name], '')
                + ISNULL([hso_area2ndid], '')
                + ISNULL([_hso_area2ndid_value], '')
                + ISNULL([hso_areaid], '')
                + ISNULL([_hso_areaid_value], '')
                + ISNULL(CONVERT(NVARCHAR(19), [hso_awarddateexpected], 120), '')
                + ISNULL([hso_businessunit2ndid], '')
                + ISNULL([_hso_businessunit2ndid_value], '')
                + ISNULL([_hso_commercialresponsibleid_value], '')
                + ISNULL([hso_countryid], '')
                + ISNULL([_hso_countryid_value], '')
                + ISNULL(CAST([hso_durationofcontract] AS NVARCHAR(50)), '')
                + ISNULL(CONVERT(NVARCHAR(19), [hso_expectedstartofwork], 120), '')
                + ISNULL(CAST([hso_latitude] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_latitudedegrees] AS NVARCHAR(50)), '')
                + ISNULL([hso_latitudedms], '')
                + ISNULL(CAST([hso_latitudeminutes] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_latitudenorthsouth] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_latitudenorthsouth_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_latitudeseconds] AS NVARCHAR(50)), '')
                + ISNULL([hso_location], '')
                + ISNULL(CAST([hso_longitude] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_longitudedegrees] AS NVARCHAR(50)), '')
                + ISNULL([hso_longitudedms], '')
                + ISNULL(CAST([hso_longitudeeastwest] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_longitudeeastwest_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([hso_longitudeminutes] AS NVARCHAR(50)), '')
                + ISNULL(CAST([hso_longitudeseconds] AS NVARCHAR(50)), '')
                + ISNULL([hso_nonstandardproject], '')
                + ISNULL([_hso_nonstandardproject_value], '')
                + ISNULL(CAST([hso_pq] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_pq_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([hso_project], '')
                + ISNULL([_hso_project_value], '')
                + ISNULL(CAST([hso_projectawarded] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_hso_projectawarded_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CONVERT(NVARCHAR(19), [hso_startoftender], 120), '')
                + ISNULL([hso_subarea2ndid], '')
                + ISNULL([_hso_subarea2ndid_value], '')
                + ISNULL([hso_subareaid], '')
                + ISNULL([_hso_subareaid_value], '')
                + ISNULL(CONVERT(NVARCHAR(19), [hso_tenderdate], 120), '')
                + ISNULL([hso_vobusinessunitid], '')
                + ISNULL([_hso_vobusinessunitid_value], '')
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
                + ISNULL(CAST([timezoneruleversionnumber] AS NVARCHAR(20)), '')
                + ISNULL(CAST([versionnumber] AS NVARCHAR(20)), '')
            ) AS [dwh_hash]
        FROM [staged].[dyn_EntityProjectGeneral]

        IF OBJECT_ID(@schema + '.' + @table) IS NULL
            BEGIN
                DECLARE
                    @ThrowMessage NVARCHAR(100)
                    = 'The table ' + @schema + '.' + @table
                    + ' does not exist.';
                THROW 50000, @ThrowMessage, 1;
            END

        -- Update records that were updated in the source
        UPDATE [processed].[dyn_projectgeneral]
        SET
            [dwh_valid_to] = DATEADD(DAY, -1, @process_run_date),
            [dwh_process_run_id] = @process_run_id,
            [dwh_active] = 0
        FROM #temp_dyn_projectgeneral AS [T]
        LEFT JOIN [processed].[dyn_projectgeneral] AS [P] ON [T].[ak_projectgeneral] = [P].[ak_projectgeneral]
        WHERE
            [T].[dwh_hash] != [P].[dwh_hash]
            AND [P].[dwh_active] = 1
        SELECT @updated = @@ROWCOUNT

        --  Update records that were deleted in the source
        UPDATE [processed].[dyn_projectgeneral]
        SET
            [dwh_valid_to] = DATEADD(DAY, -1, @process_run_date),
            [dwh_process_run_id] = @process_run_id,
            [dwh_active] = 0
        FROM [processed].[dyn_projectgeneral] AS [P]
        LEFT JOIN #temp_dyn_projectgeneral AS [T] ON [T].[ak_projectgeneral] = [P].[ak_projectgeneral]
        WHERE
            [T].[ak_projectgeneral] IS NULL
            AND [P].[dwh_active] = 1
        SELECT @deleted = @@ROWCOUNT

        --  Insert new records + insert records that were updated in the source
        INSERT INTO [processed].[dyn_projectgeneral]
        (
            [dwh_valid_from],
            [dwh_valid_to],
            [dwh_active],
            [dwh_process_run_id],
            [ak_projectgeneral],
            [projectnumber],
            [name],
            [area2ndid],
            [area2ndid_value],
            [areaid],
            [areaid_value],
            [awarddateexpected],
            [businessunit2ndid],
            [businessunit2ndid_value],
            [commercialresponsibleid_value],
            [countryid],
            [countryid_value],
            [durationofcontract],
            [expectedstartofwork],
            [latitude],
            [latitudedegrees],
            [latitudedms],
            [latitudeminutes],
            [atitudenorthsouth],
            LEFT([latitudenorthsouth_value], 4000),
            [latitudeseconds],
            [location],
            [longitude],
            [longitudedegrees],
            [longitudedms],
            [longitudeeastwest],
            LEFT([longitudeeastwest_value], 4000),
            [longitudeminutes],
            [longitudeseconds],
            [nonstandardproject],
            [nonstandardproject_value],
            [pq],
            LEFT([pq_value], 4000),
            [project],
            [project_value],
            [projectawarded],
            LEFT([projectawarded_value], 4000),
            [startoftender],
            [subarea2ndid],
            [subarea2ndid_value],
            [subareaid],
            [subareaid_value],
            [tenderdate],
            [vobusinessunitid],
            [vobusinessunitid_value],
            [createdby_value],
            [createdon],
            [importsequencenumber],
            [modifiedby_value],
            [modifiedon],
            [ownerid_value],
            [statecode],
            LEFT([statecode_value], 4000),
            [statuscode],
            LEFT([statuscode_value], 4000),
            [timezoneruleversionnumber],
            [versionnumber],
            [dwh_hash]            
        )
        SELECT
            @process_run_date AS [dwh_valid_from],
            NULL AS [dwh_valid_to],
            1 AS [dwh_active],
            @process_run_id AS [dwh_process_run_id],
            [T].[ak_projectgeneral],
            [T].[projectnumber],
            [T].[name],
            [T].[area2ndid],
            [T].[area2ndid_value],
            [T].[areaid],
            [T].[areaid_value],
            [T].[awarddateexpected],
            [T].[businessunit2ndid],
            [T].[businessunit2ndid_value],
            [T].[commercialresponsibleid_value],
            [T].[countryid],
            [T].[countryid_value],
            [T].[durationofcontract],
            [T].[expectedstartofwork],
            [T].[latitude],
            [T].[latitudedegrees],
            [T].[latitudedms],
            [T].[latitudeminutes],
            [T].[atitudenorthsouth],
            [T].[latitudenorthsouth_value],
            [T].[latitudeseconds],
            [T].[location],
            [T].[longitude],
            [T].[longitudedegrees],
            [T].[longitudedms],
            [T].[longitudeeastwest],
            [T].[longitudeeastwest_value],
            [T].[longitudeminutes],
            [T].[longitudeseconds],
            [T].[nonstandardproject],
            [T].[nonstandardproject_value],
            [T].[pq],
            [T].[pq_value],
            [T].[project],
            [T].[project_value],
            [T].[projectawarded],
            [T].[projectawarded_value],
            [T].[startoftender],
            [T].[subarea2ndid],
            [T].[subarea2ndid_value],
            [T].[subareaid],
            [T].[subareaid_value],
            [T].[tenderdate],
            [T].[vobusinessunitid],
            [T].[vobusinessunitid_value],
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
            [T].[timezoneruleversionnumber],
            [T].[versionnumber],
            [T].[dwh_hash]
        FROM #temp_dyn_projectgeneral AS [T]
        LEFT JOIN [processed].[dyn_projectgeneral] AS [P] ON [T].[ak_projectgeneral] = [P].[ak_projectgeneral]
        WHERE
            [P].[ak_projectgeneral] IS NULL
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
