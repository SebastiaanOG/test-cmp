CREATE PROCEDURE [processed].[sp_load_dyn_account]
    @process_run_date DATE,
    @process_run_id UNIQUEIDENTIFIER
AS
BEGIN
    DECLARE
        @schema NVARCHAR(20) = 'processed',
        @table NVARCHAR(20) = 'dyn_account',

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
            [AK_account] NVARCHAR(36),
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
            [Hash] VARBINARY(8000) NOT NULL
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
            [_accountclassificationcode_value],
            [accountnumber],
            [accountratingcode],
            [_accountratingcode_value],
            [address1_city],
            [address1_composite],
            [address1_country],
            [address1_line1],
            [address1_line2],
            [address1_line3],
            [address1_postalcode],
            [address1_stateorprovince],
            [address2_addresstypecode],
            [_address2_addresstypecode_value],
            [address2_freighttermscode],
            [_address2_freighttermscode_value],
            [address2_shippingmethodcode],
            [_address2_shippingmethodcode_value],
            [businesstypecode],
            [_businesstypecode_value],
            [creditonhold],
            [_creditonhold_value],
            [customersizecode],
            [_customersizecode_value],
            [description],
            [donotbulkemail],
            [_donotbulkemail_value],
            [donotbulkpostalmail],
            [_donotbulkpostalmail_value],
            [donotemail],
            [_donotemail_value],
            [donotfax],
            [_donotfax_value],
            [donotphone],
            [_donotphone_value],
            [donotpostalmail],
            [_donotpostalmail_value],
            [donotsendmm],
            [emailaddress1],
            [exchangerate],
            [fax],
            [followemail],
            [_followemail_value],
            [industrycode],
            [_industrycode_value],
            [marketingonly],
            [_marketingonly_value],
            [merged],
            [_merged_value],
            [numberofemployees],
            [opendeals],
            [_opendeals_date_value],
            [_opendeals_state_value],
            [openrevenue],
            [_openrevenue_date_value],
            [_openrevenue_state_value],
            [openrevenue_base],
            [ownershipcode],
            [_ownershipcode_value],
            [parentaccountid],
            [_parentaccountid_value],
            [participatesinworkflow],
            [_participatesinworkflow_value],
            [preferredcontactmethodcode],
            [_preferredcontactmethodcode_value],
            [_primarycontactid_value],
            [revenue],
            [revenue_base],
            [shippingmethodcode],
            [_shippingmethodcode_value],
            [sic],
            [telephone1],
            [territorycode],
            [_territorycode_value],
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
            [_statecode_value],
            [statuscode],
            [_statuscode_value],
            [versionnumber],
            HASHBYTES(
                'MD5',
                ISNULL([accountid], '')
                + ISNULL([name], '')
                + ISNULL([hso_country], '')
                + ISNULL([_hso_country_value], '')
                + ISNULL(CAST([accountclassificationcode] AS NVARCHAR(20)), '')
                + ISNULL([_accountclassificationcode_value], '')
                + ISNULL([accountnumber], '')
                + ISNULL(CAST([accountratingcode] AS NVARCHAR(20)), '')
                + ISNULL([_accountratingcode_value], '')
                + ISNULL([address1_city], '')
                + ISNULL([address1_composite], '')
                + ISNULL([address1_country], '')
                + ISNULL([address1_line1], '')
                + ISNULL([address1_line2], '')
                + ISNULL([address1_line3], '')
                + ISNULL([address1_postalcode], '')
                + ISNULL([address1_stateorprovince], '')
                + ISNULL(CAST([address2_addresstypecode] AS NVARCHAR(20)), '')
                + ISNULL([_address2_addresstypecode_value], '')
                + ISNULL(CAST([address2_freighttermscode] AS NVARCHAR(20)), '')
                + ISNULL([_address2_freighttermscode_value], '')
                + ISNULL(CAST([address2_shippingmethodcode] AS NVARCHAR(20)), '')
                + ISNULL([_address2_shippingmethodcode_value], '')
                + ISNULL(CAST([businesstypecode] AS NVARCHAR(20)), '')
                + ISNULL([_businesstypecode_value], '')
                + ISNULL(CAST([creditonhold] AS NVARCHAR(20)), '')
                + ISNULL([_creditonhold_value], '')
                + ISNULL(CAST([customersizecode] AS NVARCHAR(20)), '')
                + ISNULL([_customersizecode_value], '')
                + ISNULL([description], '')
                + ISNULL(CAST([donotbulkemail] AS NVARCHAR(20)), '')
                + ISNULL([_donotbulkemail_value], '')
                + ISNULL(CAST([donotbulkpostalmail] AS NVARCHAR(20)), '')
                + ISNULL([_donotbulkpostalmail_value], '')
                + ISNULL(CAST([donotemail] AS NVARCHAR(20)), '')
                + ISNULL([_donotemail_value], '')
                + ISNULL(CAST([donotfax] AS NVARCHAR(20)), '')
                + ISNULL([_donotfax_value], '')
                + ISNULL(CAST([donotphone] AS NVARCHAR(20)), '')
                + ISNULL([_donotphone_value], '')
                + ISNULL(CAST([donotpostalmail] AS NVARCHAR(20)), '')
                + ISNULL([_donotpostalmail_value], '')
                + ISNULL(CAST([donotsendmm] AS NVARCHAR(20)), '')
                + ISNULL([emailaddress1], '')
                + ISNULL(CAST([exchangerate] AS NVARCHAR(50)), '')
                + ISNULL([fax], '')
                + ISNULL(CAST([followemail] AS NVARCHAR(20)), '')
                + ISNULL([_followemail_value], '')
                + ISNULL(CAST([industrycode] AS NVARCHAR(20)), '')
                + ISNULL([_industrycode_value], '')
                + ISNULL(CAST([marketingonly] AS NVARCHAR(20)), '')
                + ISNULL([_marketingonly_value], '')
                + ISNULL(CAST([merged] AS NVARCHAR(20)), '')
                + ISNULL([_merged_value], '')
                + ISNULL(CAST([numberofemployees] AS NVARCHAR(20)), '')
                + ISNULL(CAST([opendeals] AS NVARCHAR(20)), '')
                + ISNULL(CONVERT(NVARCHAR(19), [_opendeals_date_value], 120), '')
                + ISNULL(CAST([_opendeals_state_value] AS NVARCHAR(20)), '')
                + ISNULL(CAST([openrevenue] AS NVARCHAR(50)), '')
                + ISNULL(CONVERT(NVARCHAR(19), [_openrevenue_date_value], 120), '')
                + ISNULL(CAST([_openrevenue_state_value] AS NVARCHAR(20)), '')
                + ISNULL(CAST([openrevenue_base] AS NVARCHAR(50)), '')
                + ISNULL(CAST([ownershipcode] AS NVARCHAR(20)), '')
                + ISNULL([_ownershipcode_value], '')
                + ISNULL([parentaccountid], '')
                + ISNULL([_parentaccountid_value], '')
                + ISNULL(CAST([participatesinworkflow] AS NVARCHAR(20)), '')
                + ISNULL([_participatesinworkflow_value], '')
                + ISNULL(CAST([preferredcontactmethodcode] AS NVARCHAR(20)), '')
                + ISNULL([_preferredcontactmethodcode_value], '')
                + ISNULL([_primarycontactid_value], '')
                + ISNULL(CAST([revenue] AS NVARCHAR(50)), '')
                + ISNULL(CAST([revenue_base] AS NVARCHAR(50)), '')
                + ISNULL(CAST([shippingmethodcode] AS NVARCHAR(20)), '')
                + ISNULL([_shippingmethodcode_value], '')
                + ISNULL([sic], '')
                + ISNULL([telephone1], '')
                + ISNULL(CAST([territorycode] AS NVARCHAR(20)), '')
                + ISNULL([_territorycode_value], '')
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
                + ISNULL([_statecode_value], '')
                + ISNULL(CAST([statuscode] AS NVARCHAR(20)), '')
                + ISNULL([_statuscode_value], '')
                + ISNULL(CAST([versionnumber] AS NVARCHAR(20)), '')
            ) AS [Hash]
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
            [ProcessRunID] = @process_run_id,
            [dwh_active] = 0
        FROM #temp_dyn_account AS [T]
        LEFT JOIN [processed].[dyn_account] AS [P] ON [T].[AK_account] = [P].[AK_account]
        WHERE
            [T].[Hash] != [P].[Hash]
            AND [P].[dwh_active] = 1
        SELECT @updated = @@ROWCOUNT

        --  Update records that were deleted in the source
        UPDATE [processed].[dyn_account]
        SET
            [dwh_valid_to] = DATEADD(DAY, -1, @process_run_date),
            [ProcessRunID] = @process_run_id,
            [dwh_active] = 0
        FROM [processed].[dyn_account] AS [P]
        LEFT JOIN #temp_dyn_account AS [T] ON [T].[AK_account] = [P].[AK_account]
        WHERE
            [T].[AK_account] IS NULL
            AND [P].[dwh_active] = 1
        SELECT @deleted = @@ROWCOUNT

        --  Insert new records + insert records that were updated in the source
        INSERT INTO [processed].[dyn_account]
        (
            [dwh_valid_from],
            [dwh_valid_to],
            [dwh_active],
            [AK_account],
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
            [Hash],
            [ProcessRunID]
        )
        SELECT
            @process_run_date AS [dwh_valid_from],
            NULL AS [dwh_valid_to],
            1 AS [dwh_active],
            [T].[AK_account],
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
            [T].[Hash],
            @process_run_id AS [ProcessRunID]
        FROM #temp_dyn_account AS [T]
        LEFT JOIN [processed].[dyn_account] AS [P] ON [T].[AK_account] = [P].[AK_account]
        WHERE
            [P].[AK_account] IS NULL
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
