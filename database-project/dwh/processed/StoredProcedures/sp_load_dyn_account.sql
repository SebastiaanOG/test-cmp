CREATE PROCEDURE [processed].[sp_load_dyn_account]
    @process_run_date DATE,
    @process_run_id UNIQUEIDENTIFIER
AS
BEGIN
    -- Abort and rollback for all errors, not only the ones captured by BEGIN TRY
    SET XACT_ABORT ON;
    DECLARE
        @schema NVARCHAR(20) = 'processed',
        @table NVARCHAR(60) = 'dyn_account',

        @inserted INT = 0,
        @updated INT = 0,
        @deleted INT = 0,
        @error_number INT = 0,
        @error_message NVARCHAR(4000)

    BEGIN TRY
        BEGIN TRANSACTION

        -- Create temp table to store the data from the staging table
        IF OBJECT_ID('tempdb..#temp_dyn_account') IS NOT NULL
            BEGIN
                DROP TABLE #temp_dyn_account
            END

        CREATE TABLE #temp_dyn_account
        (
            [ak_account] NVARCHAR(36),
            [name] NVARCHAR(160),
            [country] NVARCHAR(36),
            [country_value] NVARCHAR(100),
            [accountclassificationcode] INT,
            [accountclassificationcode_value] NVARCHAR(4000),
            [accountnumber] NVARCHAR(20),
            [accountratingcode] INT,
            [accountratingcode_value] NVARCHAR(4000),
            [address1_city] NVARCHAR(80),
            [address1_composite] NVARCHAR(4000),
            [address1_country] NVARCHAR(80),
            [address1_line1] NVARCHAR(250),
            [address1_line2] NVARCHAR(250),
            [address1_line3] NVARCHAR(250),
            [address1_postalcode] NVARCHAR(20),
            [address1_stateorprovince] NVARCHAR(50),
            [address2_addresstypecode] INT,
            [address2_addresstypecode_value] NVARCHAR(4000),
            [address2_freighttermscode] INT,
            [address2_freighttermscode_value] NVARCHAR(4000),
            [address2_shippingmethodcode] INT,
            [address2_shippingmethodcode_value] NVARCHAR(4000),
            [businesstypecode] INT,
            [businesstypecode_value] NVARCHAR(4000),
            [creditonhold] INT,
            [creditonhold_value] NVARCHAR(4000),
            [customersizecode] INT,
            [customersizecode_value] NVARCHAR(4000),
            [description] NVARCHAR(4000),
            [donotbulkemail] INT,
            [donotbulkemail_value] NVARCHAR(4000),
            [donotbulkpostalmail] INT,
            [donotbulkpostalmail_value] NVARCHAR(4000),
            [donotemail] INT,
            [donotemail_value] NVARCHAR(4000),
            [donotfax] INT,
            [donotfax_value] NVARCHAR(4000),
            [donotphone] INT,
            [donotphone_value] NVARCHAR(4000),
            [donotpostalmail] INT,
            [donotpostalmail_value] NVARCHAR(4000),
            [donotsendmm] INT,
            [emailaddress1] NVARCHAR(100),
            [exchangerate] DECIMAL(18, 2),
            [fax] NVARCHAR(50),
            [followemail] INT,
            [followemail_value] NVARCHAR(4000),
            [industrycode] INT,
            [industrycode_value] NVARCHAR(4000),
            [marketingonly] INT,
            [marketingonly_value] NVARCHAR(4000),
            [merged] INT,
            [merged_value] NVARCHAR(4000),
            [numberofemployees] INT,
            [opendeals] INT,
            [opendeals_date_value] DATETIME2(7),
            [opendeals_state_value] INT,
            [openrevenue] DECIMAL(18, 0),
            [openrevenue_date_value] DATETIME2(7),
            [openrevenue_state_value] INT,
            [openrevenue_base] DECIMAL(18, 0),
            [ownershipcode] INT,
            [ownershipcode_value] NVARCHAR(4000),
            [parentaccountid] NVARCHAR(36),
            [parentaccountid_value] NVARCHAR(160),
            [participatesinworkflow] INT,
            [participatesinworkflow_value] NVARCHAR(4000),
            [preferredcontactmethodcode] INT,
            [preferredcontactmethodcode_value] NVARCHAR(4000),
            [primarycontactid_value] NVARCHAR(160),
            [revenue] DECIMAL(18, 0),
            [revenue_base] DECIMAL(18, 0),
            [shippingmethodcode] INT,
            [shippingmethodcode_value] NVARCHAR(4000),
            [sic] NVARCHAR(20),
            [telephone1] NVARCHAR(50),
            [territorycode] INT,
            [territorycode_value] NVARCHAR(4000),
            [tickersymbol] NVARCHAR(10),
            [transactioncurrencyid_value] NVARCHAR(100),
            [websiteurl] NVARCHAR(200),
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
            [versionnumber] BIGINT,
            [dwh_hash] VARBINARY(8000) NOT NULL
        )

        -- Insert data from staging table into temp table
        -- and compute the hash. Use the hash to detect changes.
        INSERT INTO #temp_dyn_account
        SELECT
            [accountid],
            [name],
            [hso_country],
            [_hso_country_value],
            [accountclassificationcode],
            LEFT([_accountclassificationcode_value], 4000),
            [accountnumber],
            [accountratingcode],
            LEFT([_accountratingcode_value], 4000),
            [address1_city],
            LEFT([address1_composite], 4000),
            [address1_country],
            [address1_line1],
            [address1_line2],
            [address1_line3],
            [address1_postalcode],
            [address1_stateorprovince],
            [address2_addresstypecode],
            LEFT([_address2_addresstypecode_value], 4000),
            [address2_freighttermscode],
            LEFT([_address2_freighttermscode_value], 4000),
            [address2_shippingmethodcode],
            LEFT([_address2_shippingmethodcode_value], 4000),
            [businesstypecode],
            LEFT([_businesstypecode_value], 4000),
            [creditonhold],
            LEFT([_creditonhold_value], 4000),
            [customersizecode],
            LEFT([_customersizecode_value], 4000),
            LEFT([description], 4000),
            [donotbulkemail],
            LEFT([_donotbulkemail_value], 4000),
            [donotbulkpostalmail],
            LEFT([_donotbulkpostalmail_value], 4000),
            [donotemail],
            LEFT([_donotemail_value], 4000),
            [donotfax],
            LEFT([_donotfax_value], 4000),
            [donotphone],
            LEFT([_donotphone_value], 4000),
            [donotpostalmail],
            LEFT([_donotpostalmail_value], 4000),
            [donotsendmm],
            [emailaddress1],
            [exchangerate],
            [fax],
            [followemail],
            LEFT([_followemail_value], 4000),
            [industrycode],
            LEFT([_industrycode_value], 4000),
            [marketingonly],
            LEFT([_marketingonly_value], 4000),
            [merged],
            LEFT([_merged_value], 4000),
            [numberofemployees],
            [opendeals],
            [_opendeals_date_value],
            [_opendeals_state_value],
            [openrevenue],
            [_openrevenue_date_value],
            [_openrevenue_state_value],
            [openrevenue_base],
            [ownershipcode],
            LEFT([_ownershipcode_value], 4000),
            [parentaccountid],
            [_parentaccountid_value],
            [participatesinworkflow],
            LEFT([_participatesinworkflow_value], 4000),
            [preferredcontactmethodcode],
            LEFT([_preferredcontactmethodcode_value], 4000),
            [_primarycontactid_value],
            [revenue],
            [revenue_base],
            [shippingmethodcode],
            LEFT([_shippingmethodcode_value], 4000),
            [sic],
            [telephone1],
            [territorycode],
            LEFT([_territorycode_value], 4000),
            [tickersymbol],
            [_transactioncurrencyid_value],
            [websiteurl],
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
            [versionnumber],
            HASHBYTES(
                'MD5',
                ISNULL([accountid], '')
                + ISNULL([name], '')
                + ISNULL([hso_country], '')
                + ISNULL([_hso_country_value], '')
                + ISNULL(CAST([accountclassificationcode] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_accountclassificationcode_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([accountnumber], '')
                + ISNULL(CAST([accountratingcode] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_accountratingcode_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([address1_city], '')
                + ISNULL(CAST(LEFT([address1_composite], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([address1_country], '')
                + ISNULL([address1_line1], '')
                + ISNULL([address1_line2], '')
                + ISNULL([address1_line3], '')
                + ISNULL([address1_postalcode], '')
                + ISNULL([address1_stateorprovince], '')
                + ISNULL(CAST([address2_addresstypecode] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_address2_addresstypecode_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([address2_freighttermscode] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_address2_freighttermscode_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([address2_shippingmethodcode] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_address2_shippingmethodcode_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([businesstypecode] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_businesstypecode_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([creditonhold] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_creditonhold_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([customersizecode] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_customersizecode_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST(LEFT([description], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([donotbulkemail] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_donotbulkemail_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([donotbulkpostalmail] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_donotbulkpostalmail_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([donotemail] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_donotemail_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([donotfax] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_donotfax_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([donotphone] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_donotphone_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([donotpostalmail] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_donotpostalmail_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([donotsendmm] AS NVARCHAR(20)), '')
                + ISNULL([emailaddress1], '')
                + ISNULL(CAST([exchangerate] AS NVARCHAR(50)), '')
                + ISNULL([fax], '')
                + ISNULL(CAST([followemail] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_followemail_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([industrycode] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_industrycode_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([marketingonly] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_marketingonly_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([merged] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_merged_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([numberofemployees] AS NVARCHAR(20)), '')
                + ISNULL(CAST([opendeals] AS NVARCHAR(20)), '')
                + ISNULL(CONVERT(NVARCHAR(19), [_opendeals_date_value], 120), '')
                + ISNULL(CAST([_opendeals_state_value] AS NVARCHAR(20)), '')
                + ISNULL(CAST([openrevenue] AS NVARCHAR(50)), '')
                + ISNULL(CONVERT(NVARCHAR(19), [_openrevenue_date_value], 120), '')
                + ISNULL(CAST([_openrevenue_state_value] AS NVARCHAR(20)), '')
                + ISNULL(CAST([openrevenue_base] AS NVARCHAR(50)), '')
                + ISNULL(CAST([ownershipcode] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_ownershipcode_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([parentaccountid], '')
                + ISNULL([_parentaccountid_value], '')
                + ISNULL(CAST([participatesinworkflow] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_participatesinworkflow_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL(CAST([preferredcontactmethodcode] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_preferredcontactmethodcode_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([_primarycontactid_value], '')
                + ISNULL(CAST([revenue] AS NVARCHAR(50)), '')
                + ISNULL(CAST([revenue_base] AS NVARCHAR(50)), '')
                + ISNULL(CAST([shippingmethodcode] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_shippingmethodcode_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([sic], '')
                + ISNULL([telephone1], '')
                + ISNULL(CAST([territorycode] AS NVARCHAR(20)), '')
                + ISNULL(CAST(LEFT([_territorycode_value], 4000) AS NVARCHAR(4000)), '')
                + ISNULL([tickersymbol], '')
                + ISNULL([_transactioncurrencyid_value], '')
                + ISNULL([websiteurl], '')
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
                + ISNULL(CAST([versionnumber] AS NVARCHAR(20)), '')
            ) AS [dwh_hash]
        FROM [staged].[dyn_EntityAccount]

        IF OBJECT_ID(@schema + '.' + @table) IS NULL
            BEGIN
                DECLARE
                    @ThrowMessage NVARCHAR(100)
                    = 'The table ' + @schema + '.' + @table
                    + ' does not exist.';
                THROW 50000, @ThrowMessage, 1;
            END

        -- Update records that were updated in the source
        UPDATE [processed].[dyn_account]
        SET
            [dwh_valid_to] = DATEADD(DAY, -1, @process_run_date),
            [dwh_process_run_id] = @process_run_id,
            [dwh_active] = 0
        FROM #temp_dyn_account AS [T]
        LEFT JOIN [processed].[dyn_account] AS [P] ON [T].[ak_account] = [P].[ak_account]
        WHERE
            [T].[dwh_hash] != [P].[dwh_hash]
            AND [P].[dwh_active] = 1
        SELECT @updated = @@ROWCOUNT

        --  Update records that were deleted in the source
        UPDATE [processed].[dyn_account]
        SET
            [dwh_valid_to] = DATEADD(DAY, -1, @process_run_date),
            [dwh_process_run_id] = @process_run_id,
            [dwh_active] = 0
        FROM [processed].[dyn_account] AS [P]
        LEFT JOIN #temp_dyn_account AS [T] ON [T].[ak_account] = [P].[ak_account]
        WHERE
            [T].[ak_account] IS NULL
            AND [P].[dwh_active] = 1
        SELECT @deleted = @@ROWCOUNT

        --  Insert new records + insert records that were updated in the source
        INSERT INTO [processed].[dyn_account]
        (
            [dwh_valid_from],
            [dwh_valid_to],
            [dwh_active],
            [dwh_process_run_id],
            [ak_account],
            [name],
            [country],
            [country_value],
            [accountclassificationcode],
            [accountclassificationcode_value],
            [accountnumber],
            [accountratingcode],
            [accountratingcode_value],
            [address1_city],
            [address1_composite],
            [address1_country],
            [address1_line1],
            [address1_line2],
            [address1_line3],
            [address1_postalcode],
            [address1_stateorprovince],
            [address2_addresstypecode],
            [address2_addresstypecode_value],
            [address2_freighttermscode],
            [address2_freighttermscode_value],
            [address2_shippingmethodcode],
            [address2_shippingmethodcode_value],
            [businesstypecode],
            [businesstypecode_value],
            [creditonhold],
            [creditonhold_value],
            [customersizecode],
            [customersizecode_value],
            [description],
            [donotbulkemail],
            [donotbulkemail_value],
            [donotbulkpostalmail],
            [donotbulkpostalmail_value],
            [donotemail],
            [donotemail_value],
            [donotfax],
            [donotfax_value],
            [donotphone],
            [donotphone_value],
            [donotpostalmail],
            [donotpostalmail_value],
            [donotsendmm],
            [emailaddress1],
            [exchangerate],
            [fax],
            [followemail],
            [followemail_value],
            [industrycode],
            [industrycode_value],
            [marketingonly],
            [marketingonly_value],
            [merged],
            [merged_value],
            [numberofemployees],
            [opendeals],
            [opendeals_date_value],
            [opendeals_state_value],
            [openrevenue],
            [openrevenue_date_value],
            [openrevenue_state_value],
            [openrevenue_base],
            [ownershipcode],
            [ownershipcode_value],
            [parentaccountid],
            [parentaccountid_value],
            [participatesinworkflow],
            [participatesinworkflow_value],
            [preferredcontactmethodcode],
            [preferredcontactmethodcode_value],
            [primarycontactid_value],
            [revenue],
            [revenue_base],
            [shippingmethodcode],
            [shippingmethodcode_value],
            [sic],
            [telephone1],
            [territorycode],
            [territorycode_value],
            [tickersymbol],
            [transactioncurrencyid_value],
            [websiteurl],
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
            [versionnumber],
            [dwh_hash]            
        )
        SELECT
            @process_run_date AS [dwh_valid_from],
            NULL AS [dwh_valid_to],
            1 AS [dwh_active],
            @process_run_id AS [dwh_process_run_id],
            [T].[ak_account],
            [T].[name],
            [T].[country],
            [T].[country_value],
            [T].[accountclassificationcode],
            [T].[accountclassificationcode_value],
            [T].[accountnumber],
            [T].[accountratingcode],
            [T].[accountratingcode_value],
            [T].[address1_city],
            [T].[address1_composite],
            [T].[address1_country],
            [T].[address1_line1],
            [T].[address1_line2],
            [T].[address1_line3],
            [T].[address1_postalcode],
            [T].[address1_stateorprovince],
            [T].[address2_addresstypecode],
            [T].[address2_addresstypecode_value],
            [T].[address2_freighttermscode],
            [T].[address2_freighttermscode_value],
            [T].[address2_shippingmethodcode],
            [T].[address2_shippingmethodcode_value],
            [T].[businesstypecode],
            [T].[businesstypecode_value],
            [T].[creditonhold],
            [T].[creditonhold_value],
            [T].[customersizecode],
            [T].[customersizecode_value],
            [T].[description],
            [T].[donotbulkemail],
            [T].[donotbulkemail_value],
            [T].[donotbulkpostalmail],
            [T].[donotbulkpostalmail_value],
            [T].[donotemail],
            [T].[donotemail_value],
            [T].[donotfax],
            [T].[donotfax_value],
            [T].[donotphone],
            [T].[donotphone_value],
            [T].[donotpostalmail],
            [T].[donotpostalmail_value],
            [T].[donotsendmm],
            [T].[emailaddress1],
            [T].[exchangerate],
            [T].[fax],
            [T].[followemail],
            [T].[followemail_value],
            [T].[industrycode],
            [T].[industrycode_value],
            [T].[marketingonly],
            [T].[marketingonly_value],
            [T].[merged],
            [T].[merged_value],
            [T].[numberofemployees],
            [T].[opendeals],
            [T].[opendeals_date_value],
            [T].[opendeals_state_value],
            [T].[openrevenue],
            [T].[openrevenue_date_value],
            [T].[openrevenue_state_value],
            [T].[openrevenue_base],
            [T].[ownershipcode],
            [T].[ownershipcode_value],
            [T].[parentaccountid],
            [T].[parentaccountid_value],
            [T].[participatesinworkflow],
            [T].[participatesinworkflow_value],
            [T].[preferredcontactmethodcode],
            [T].[preferredcontactmethodcode_value],
            [T].[primarycontactid_value],
            [T].[revenue],
            [T].[revenue_base],
            [T].[shippingmethodcode],
            [T].[shippingmethodcode_value],
            [T].[sic],
            [T].[telephone1],
            [T].[territorycode],
            [T].[territorycode_value],
            [T].[tickersymbol],
            [T].[transactioncurrencyid_value],
            [T].[websiteurl],
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
            [T].[versionnumber],
            [T].[dwh_hash]
        FROM #temp_dyn_account AS [T]
        LEFT JOIN [processed].[dyn_account] AS [P] ON [T].[ak_account] = [P].[ak_account]
        WHERE
            [P].[ak_account] IS NULL
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
