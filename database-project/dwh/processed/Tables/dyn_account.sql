CREATE TABLE processed.dyn_account (
   [id]  bigint IDENTITY  NOT NULL
,  [dwh_valid_from]  date   NOT NULL
,  [dwh_valid_to]  date   NULL
,  [dwh_active]  bit   NOT NULL
,  [AK_account]  nvarchar(36)   NULL
,  [name]  nvarchar(160)   NULL
,  [country]  nvarchar(36)   NULL
,  [country_value]  nvarchar(100)   NULL
,  [accountclassificationcode]  int   NULL
,  [accountclassificationcode_value]  nvarchar(4000)   NULL
,  [accountnumber]  nvarchar(20)   NULL
,  [accountratingcode]  int   NULL
,  [accountratingcode_value]  nvarchar(4000)   NULL
,  [address1_city]  nvarchar(80)   NULL
,  [address1_composite]  nvarchar(4000)   NULL
,  [address1_country]  nvarchar(80)   NULL
,  [address1_line1]  nvarchar(250)   NULL
,  [address1_line2]  nvarchar(250)   NULL
,  [address1_line3]  nvarchar(250)   NULL
,  [address1_postalcode]  nvarchar(20)   NULL
,  [address1_stateorprovince]  nvarchar(50)   NULL
,  [address2_addresstypecode]  int   NULL
,  [address2_addresstypecode_value]  nvarchar(4000)   NULL
,  [address2_freighttermscode]  int   NULL
,  [address2_freighttermscode_value]  nvarchar(4000)   NULL
,  [address2_shippingmethodcode]  int   NULL
,  [address2_shippingmethodcode_value]  nvarchar(4000)   NULL
,  [businesstypecode]  int   NULL
,  [businesstypecode_value]  nvarchar(4000)   NULL
,  [creditonhold]  int   NULL
,  [creditonhold_value]  nvarchar(4000)   NULL
,  [customersizecode]  int   NULL
,  [customersizecode_value]  nvarchar(4000)   NULL
,  [description]  nvarchar(4000)   NULL
,  [donotbulkemail]  int   NULL
,  [donotbulkemail_value]  nvarchar(4000)   NULL
,  [donotbulkpostalmail]  int   NULL
,  [donotbulkpostalmail_value]  nvarchar(4000)   NULL
,  [donotemail]  int   NULL
,  [donotemail_value]  nvarchar(4000)   NULL
,  [donotfax]  int   NULL
,  [donotfax_value]  nvarchar(4000)   NULL
,  [donotphone]  int   NULL
,  [donotphone_value]  nvarchar(4000)   NULL
,  [donotpostalmail]  int   NULL
,  [donotpostalmail_value]  nvarchar(4000)   NULL
,  [donotsendmm]  int   NULL
,  [emailaddress1]  nvarchar(100)   NULL
,  [exchangerate]  decimal(18,2)   NULL
,  [fax]  nvarchar(50)   NULL
,  [followemail]  int   NULL
,  [followemail_value]  nvarchar(4000)   NULL
,  [industrycode]  int   NULL
,  [industrycode_value]  nvarchar(4000)   NULL
,  [marketingonly]  int   NULL
,  [marketingonly_value]  nvarchar(4000)   NULL
,  [merged]  int   NULL
,  [merged_value]  nvarchar(4000)   NULL
,  [numberofemployees]  int   NULL
,  [opendeals]  int   NULL
,  [opendeals_date_value]  datetime   NULL
,  [opendeals_state_value]  int   NULL
,  [openrevenue]  decimal(18,0)   NULL
,  [openrevenue_date_value]  datetime   NULL
,  [openrevenue_state_value]  int   NULL
,  [openrevenue_base]  decimal(18,0)   NULL
,  [ownershipcode]  int   NULL
,  [ownershipcode_value]  nvarchar(4000)   NULL
,  [parentaccountid]  nvarchar(36)   NULL
,  [parentaccountid_value]  nvarchar(160)   NULL
,  [participatesinworkflow]  int   NULL
,  [participatesinworkflow_value]  nvarchar(4000)   NULL
,  [preferredcontactmethodcode]  int   NULL
,  [preferredcontactmethodcode_value]  nvarchar(4000)   NULL
,  [primarycontactid_value]  nvarchar(160)   NULL
,  [revenue]  decimal(18,0)   NULL
,  [revenue_base]  decimal(18,0)   NULL
,  [shippingmethodcode]  int   NULL
,  [shippingmethodcode_value]  nvarchar(4000)   NULL
,  [sic]  nvarchar(20)   NULL
,  [telephone1]  nvarchar(50)   NULL
,  [territorycode]  int   NULL
,  [territorycode_value]  nvarchar(4000)   NULL
,  [tickersymbol]  nvarchar(10)   NULL
,  [transactioncurrencyid_value]  nvarchar(100)   NULL
,  [websiteurl]  nvarchar(200)   NULL
,  [createdby_value]  nvarchar(200)   NULL
,  [createdon]  datetime   NULL
,  [importsequencenumber]  int   NULL
,  [modifiedby_value]  nvarchar(200)   NULL
,  [modifiedon]  datetime   NULL
,  [modifiedonbehalfby_value]  nvarchar(200)   NULL
,  [ownerid_value]  nvarchar(200)   NULL
,  [statecode]  int   NULL
,  [statecode_value]  nvarchar(4000)   NULL
,  [statuscode]  int   NULL
,  [statuscode_value]  nvarchar(4000)   NULL
,  [versionnumber] BIGINT NULL,
    [Hash] VARBINARY(8000) NOT NULL,
    [ProcessRunID] UNIQUEIDENTIFIER NOT NULL
, CONSTRAINT [PK_processed.dyn_account] PRIMARY KEY CLUSTERED ([id] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100, DATA_COMPRESSION = PAGE)
);
GO

GO

exec sys.sp_addextendedproperty @name=N'Table Name', @value=N'dyn_account', @level0type=N'SCHEMA', @level0name=processed, @level1type=N'TABLE', @level1name=dyn_account
GO
exec sys.sp_addextendedproperty @name=N'Table Type', @value=N'Fact', @level0type=N'SCHEMA', @level0name=processed, @level1type=N'TABLE', @level1name=dyn_account
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'account', @level0type=N'SCHEMA', @level0name=processed, @level1type=N'TABLE', @level1name=dyn_account
GO
exec sys.sp_addextendedproperty @name=N'Database Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=processed, @level1type=N'TABLE', @level1name=dyn_account
GO
GO

exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'Primary key', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'id'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'valid_from', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'valid_to', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'indicator active', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'Application ID', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'AK_account'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Primary key', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'id'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Application id, unique identifier source', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'AK_account'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Select a classification code to indicate the potential value of the customer account based on the projected return on investment, cooperation level, sales cycle length or other criteria.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'accountclassificationcode'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Type an ID number or code for the account to quickly search and identify the account in system views.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'accountnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Select a rating to indicate the value of the customer account.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'accountratingcode'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Type the city for the primary address.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_city'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Shows the complete primary address.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_composite'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Type the country or region for the primary address.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_country'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Type the first line of the primary address.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_line1'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Type the second line of the primary address.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_line2'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Type the third line of the primary address.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_line3'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Type the ZIP Code or postal code for the primary address.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_postalcode'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Type the state or province of the primary address.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_stateorprovince'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Select the secondary address type.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address2_addresstypecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Select the freight terms for the secondary address to make sure shipping orders are processed correctly.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address2_freighttermscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Select a shipping method for deliveries sent to this address.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address2_shippingmethodcode'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Select the legal designation or other business type of the account for contracts or reporting purposes.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'businesstypecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Select whether the credit for the account is on hold. This is a useful reference while addressing the invoice and accounting issues with the customer.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'creditonhold'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Select the size category or range of the account for segmentation and reporting purposes.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'customersizecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Type additional information to describe the account, such as an excerpt from the company''s website.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'description'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Select whether the account allows bulk email sent through campaigns. If Do Not Allow is selected, the account can be added to marketing lists, but is excluded from email.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotbulkemail'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Select whether the account allows bulk postal mail sent through marketing campaigns or quick campaigns. If Do Not Allow is selected, the account can be added to marketing lists, but will be excluded from the postal mail.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotbulkpostalmail'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Select whether the account allows direct email sent from Microsoft Dynamics 365.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotemail'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Select whether the account allows faxes. If Do Not Allow is selected, the account will be excluded from fax activities distributed in marketing campaigns.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotfax'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Select whether the account allows phone calls. If Do Not Allow is selected, the account will be excluded from phone call activities distributed in marketing campaigns.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotphone'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Select whether the account allows direct mail. If Do Not Allow is selected, the account will be excluded from letter activities distributed in marketing campaigns.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotpostalmail'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Type the primary email address for the account.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'emailaddress1'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Shows the conversion rate of the record''s currency. The exchange rate is used to convert all money fields in the record from the local currency to the system''s default currency.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'exchangerate'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Type the fax number for the account.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'fax'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Information about whether to allow following email activity like opens, attachment views and link clicks for emails sent to the account.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'followemail'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Select the account''s primary industry for use in marketing segmentation and demographic analysis.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'industrycode'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Whether is only for marketing', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'marketingonly'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Shows whether the account has been merged with another account.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'merged'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Type the number of employees that work at the account for use in marketing segmentation and demographic analysis.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'numberofemployees'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Number of open opportunities against an account and its child accounts.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'opendeals'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'The date time for Open Deals.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'opendeals_date_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'State of Open Deals.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'opendeals_state_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Sum of open revenue against an account and its child accounts.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'openrevenue'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Sum of open revenue against an account and its child accounts.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'openrevenue_date_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'The date time for Open Revenue.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'openrevenue_state_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'State of Open Revenue.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'openrevenue_base'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Select the account''s ownership structure, such as public or private.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'ownershipcode'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Choose the parent account associated with this account to show parent and child businesses in reporting and analytics.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'parentaccountid'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'For system use only. Legacy Microsoft Dynamics CRM 3.0 workflow data.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'participatesinworkflow'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Select the preferred method of contact.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'preferredcontactmethodcode'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Type the annual revenue for the account, used as an indicator in financial performance analysis.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'revenue'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Shows the annual revenue converted to the system''s default base currency. The calculations use the exchange rate specified in the Currencies area.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'revenue_base'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Select a shipping method for deliveries sent to the account''s address to designate the preferred carrier or other delivery option.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'shippingmethodcode'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Type the Standard Industrial Classification (SIC) code that indicates the account''s primary industry of business, for use in marketing segmentation and demographic analysis.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'sic'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Type the main phone number for this account.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'telephone1'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Select a region or territory for the account for use in segmentation and analysis.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'territorycode'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Type the stock exchange symbol for the account to track financial performance of the company. You can click the code entered in this field to access the latest trading information from MSN Money.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'tickersymbol'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Type the account''s website URL to get quick details about the company profile.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'websiteurl'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'importsequencenumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'modifiedonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'technical field', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'id'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2023-04-20', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2023-04-25', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FFF57AF8-D10A-EA11-A811-000D3A2C5614', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'AK_account'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zwart Infracare BV', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FEC2BBF8-90F8-E411-810E-C4346BACCC0C', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'country'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Virgin Islands, British', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'country_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'accountclassificationcode'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Default Value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'accountclassificationcode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9998', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'accountnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'accountratingcode'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Default Value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'accountratingcode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'г. Алматы, ул. Орманова, 31,', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_city'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Республика Казахстан  г. Алматы, ул.', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_composite'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zimbabwe', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_country'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Республика Казахстан', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_line1'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zone 6,, street 7, Plot 71,', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_line2'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Yolgok-ro, Jongno-gu', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_line3'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'WN8 8EA', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_postalcode'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Zuid-Holland', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_stateorprovince'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address2_addresstypecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Default Value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address2_addresstypecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address2_freighttermscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Default Value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address2_freighttermscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address2_shippingmethodcode'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Default Value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address2_shippingmethodcode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'businesstypecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Default Value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'businesstypecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'creditonhold'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'No', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'creditonhold_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'customersizecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Default Value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'customersizecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'www.ioal.com.br', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'description'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotbulkemail'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Allow', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotbulkemail_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotbulkpostalmail'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'No', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotbulkpostalmail_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotemail'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Allow', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotemail_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotfax'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Allow', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotfax_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotphone'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Allow', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotphone_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotpostalmail'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Allow', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotpostalmail_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'-1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotsendmm'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan@Smith.com', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'emailaddress1'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'738000000000', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'exchangerate'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'F +65 6339 0460   ', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'fax'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'-1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'followemail'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Allow', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'followemail_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'9', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'industrycode'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Utility Creation and Distribution', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'industrycode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'marketingonly'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'No', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'marketingonly_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'merged'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'No', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'merged_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'90', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'numberofemployees'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'opendeals'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'May  1 2023 11:04PM', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'opendeals_date_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'opendeals_state_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'openrevenue'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'May  1 2023 11:04PM', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'openrevenue_date_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'openrevenue_state_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'openrevenue_base'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'ownershipcode'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Public', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'ownershipcode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'F85B50E1-EA06-E611-813C-C4346BAD81EC', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'parentaccountid'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'World Bank (WB)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'parentaccountid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'0', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'participatesinworkflow'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'No', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'participatesinworkflow_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'preferredcontactmethodcode'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Email', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'preferredcontactmethodcode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'primarycontactid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'6200000000', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'revenue'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'6200000000', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'revenue_base'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'shippingmethodcode'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Default Value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'shippingmethodcode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'711', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'sic'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'T +604 566 9500', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'telephone1'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'territorycode'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Default Value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'territorycode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'PEA', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'tickersymbol'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'USD', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'transactioncurrencyid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'wbgeconsult2.worldbank.org', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'websiteurl'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Sep 30 2022  3:22PM', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'17', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'importsequencenumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Sep 30 2022  3:22PM', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'modifiedonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Jan Smith', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Inactive', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'2', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'Inactive', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'87752325', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'id'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'AK_account'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'country'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'country_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'accountclassificationcode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'accountclassificationcode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'accountnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'accountratingcode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'accountratingcode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_city'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_composite'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_country'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_line1'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_line2'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_line3'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_postalcode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_stateorprovince'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address2_addresstypecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address2_addresstypecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address2_freighttermscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address2_freighttermscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address2_shippingmethodcode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address2_shippingmethodcode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'businesstypecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'businesstypecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'creditonhold'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'creditonhold_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'customersizecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'customersizecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'description'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotbulkemail'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotbulkemail_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotbulkpostalmail'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotbulkpostalmail_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotemail'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotemail_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotfax'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotfax_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotphone'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotphone_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotpostalmail'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotpostalmail_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotsendmm'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'emailaddress1'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'exchangerate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'fax'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'followemail'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'followemail_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'industrycode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'industrycode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'marketingonly'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'marketingonly_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'merged'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'merged_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'numberofemployees'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'opendeals'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'opendeals_date_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'opendeals_state_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'openrevenue'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'openrevenue_date_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'openrevenue_state_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'openrevenue_base'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'ownershipcode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'ownershipcode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'parentaccountid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'parentaccountid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'participatesinworkflow'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'participatesinworkflow_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'preferredcontactmethodcode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'preferredcontactmethodcode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'primarycontactid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'revenue'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'revenue_base'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'shippingmethodcode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'shippingmethodcode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'sic'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'telephone1'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'territorycode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'territorycode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'tickersymbol'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'transactioncurrencyid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'websiteurl'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'importsequencenumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'modifiedonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'AK_account'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'country'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'country_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'accountclassificationcode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'accountclassificationcode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'accountnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'accountratingcode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'accountratingcode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_city'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_composite'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_country'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_line1'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_line2'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_line3'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_postalcode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_stateorprovince'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address2_addresstypecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address2_addresstypecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address2_freighttermscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address2_freighttermscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address2_shippingmethodcode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address2_shippingmethodcode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'businesstypecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'businesstypecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'creditonhold'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'creditonhold_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'customersizecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'customersizecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'description'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotbulkemail'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotbulkemail_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotbulkpostalmail'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotbulkpostalmail_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotemail'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotemail_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotfax'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotfax_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotphone'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotphone_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotpostalmail'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotpostalmail_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotsendmm'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'emailaddress1'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'exchangerate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'fax'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'followemail'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'followemail_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'industrycode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'industrycode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'marketingonly'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'marketingonly_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'merged'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'merged_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'numberofemployees'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'opendeals'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'opendeals_date_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'opendeals_state_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'openrevenue'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'openrevenue_date_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'openrevenue_state_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'openrevenue_base'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'ownershipcode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'ownershipcode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'parentaccountid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'parentaccountid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'participatesinworkflow'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'participatesinworkflow_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'preferredcontactmethodcode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'preferredcontactmethodcode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'primarycontactid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'revenue'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'revenue_base'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'shippingmethodcode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'shippingmethodcode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'sic'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'telephone1'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'territorycode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'territorycode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'tickersymbol'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'transactioncurrencyid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'websiteurl'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'importsequencenumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'modifiedonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'staging', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'AK_account'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'country'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'country_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'accountclassificationcode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'accountclassificationcode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'accountnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'accountratingcode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'accountratingcode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_city'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_composite'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_country'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_line1'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_line2'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_line3'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_postalcode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_stateorprovince'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address2_addresstypecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address2_addresstypecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address2_freighttermscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address2_freighttermscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address2_shippingmethodcode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address2_shippingmethodcode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'businesstypecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'businesstypecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'creditonhold'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'creditonhold_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'customersizecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'customersizecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'description'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotbulkemail'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotbulkemail_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotbulkpostalmail'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotbulkpostalmail_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotemail'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotemail_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotfax'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotfax_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotphone'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotphone_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotpostalmail'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotpostalmail_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotsendmm'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'emailaddress1'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'exchangerate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'fax'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'followemail'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'followemail_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'industrycode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'industrycode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'marketingonly'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'marketingonly_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'merged'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'merged_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'numberofemployees'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'opendeals'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'opendeals_date_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'opendeals_state_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'openrevenue'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'openrevenue_date_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'openrevenue_state_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'openrevenue_base'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'ownershipcode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'ownershipcode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'parentaccountid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'parentaccountid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'participatesinworkflow'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'participatesinworkflow_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'preferredcontactmethodcode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'preferredcontactmethodcode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'primarycontactid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'revenue'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'revenue_base'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'shippingmethodcode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'shippingmethodcode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'sic'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'telephone1'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'territorycode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'territorycode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'tickersymbol'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'transactioncurrencyid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'websiteurl'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'importsequencenumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'modifiedonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'EntityAccount', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'accountid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'AK_account'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'name', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'hso_country', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'country'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_hso_country_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'country_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'accountclassificationcode', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'accountclassificationcode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_accountclassificationcode_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'accountclassificationcode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'accountnumber', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'accountnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'accountratingcode', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'accountratingcode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_accountratingcode_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'accountratingcode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'address1_city', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_city'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'address1_composite', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_composite'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'address1_country', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_country'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'address1_line1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_line1'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'address1_line2', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_line2'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'address1_line3', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_line3'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'address1_postalcode', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_postalcode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'address1_stateorprovince', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_stateorprovince'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'address2_addresstypecode', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address2_addresstypecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_address2_addresstypecode_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address2_addresstypecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'address2_freighttermscode', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address2_freighttermscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_address2_freighttermscode_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address2_freighttermscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'address2_shippingmethodcode', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address2_shippingmethodcode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_address2_shippingmethodcode_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address2_shippingmethodcode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'businesstypecode', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'businesstypecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_businesstypecode_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'businesstypecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'creditonhold', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'creditonhold'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_creditonhold_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'creditonhold_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'customersizecode', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'customersizecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_customersizecode_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'customersizecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'description', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'description'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'donotbulkemail', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotbulkemail'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_donotbulkemail_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotbulkemail_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'donotbulkpostalmail', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotbulkpostalmail'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_donotbulkpostalmail_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotbulkpostalmail_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'donotemail', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotemail'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_donotemail_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotemail_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'donotfax', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotfax'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_donotfax_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotfax_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'donotphone', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotphone'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_donotphone_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotphone_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'donotpostalmail', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotpostalmail'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_donotpostalmail_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotpostalmail_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'donotsendmm', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotsendmm'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'emailaddress1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'emailaddress1'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'exchangerate', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'exchangerate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'fax', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'fax'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'followemail', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'followemail'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_followemail_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'followemail_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'industrycode', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'industrycode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_industrycode_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'industrycode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'marketingonly', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'marketingonly'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_marketingonly_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'marketingonly_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'merged', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'merged'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_merged_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'merged_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'numberofemployees', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'numberofemployees'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'opendeals', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'opendeals'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_opendeals_date_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'opendeals_date_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_opendeals_state_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'opendeals_state_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'openrevenue', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'openrevenue'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_openrevenue_date_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'openrevenue_date_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_openrevenue_state_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'openrevenue_state_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'openrevenue_base', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'openrevenue_base'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'ownershipcode', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'ownershipcode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_ownershipcode_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'ownershipcode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'parentaccountid', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'parentaccountid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_parentaccountid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'parentaccountid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'participatesinworkflow', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'participatesinworkflow'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_participatesinworkflow_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'participatesinworkflow_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'preferredcontactmethodcode', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'preferredcontactmethodcode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_preferredcontactmethodcode_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'preferredcontactmethodcode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_primarycontactid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'primarycontactid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'revenue', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'revenue'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'revenue_base', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'revenue_base'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'shippingmethodcode', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'shippingmethodcode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_shippingmethodcode_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'shippingmethodcode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'sic', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'sic'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'telephone1', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'telephone1'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'territorycode', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'territorycode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_territorycode_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'territorycode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'tickersymbol', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'tickersymbol'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_transactioncurrencyid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'transactioncurrencyid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'websiteurl', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'websiteurl'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_createdby_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'createdon', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'importsequencenumber', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'importsequencenumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_modifiedby_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'modifiedon', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_modifiedonbehalfby_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'modifiedonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_ownerid_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'statecode', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_statecode_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'statuscode', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'_statuscode_value', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'versionnumber', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'AK_account'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(160)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'name'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'country'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'country_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'accountclassificationcode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'accountclassificationcode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(20)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'accountnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'accountratingcode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'accountratingcode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(80)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_city'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'ntext', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_composite'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(80)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_country'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(250)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_line1'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(250)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_line2'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(250)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_line3'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(20)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_postalcode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(50)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address1_stateorprovince'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address2_addresstypecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address2_addresstypecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address2_freighttermscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address2_freighttermscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address2_shippingmethodcode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'address2_shippingmethodcode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'businesstypecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'businesstypecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'creditonhold'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'creditonhold_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'customersizecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'customersizecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'ntext', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'description'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotbulkemail'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotbulkemail_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotbulkpostalmail'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotbulkpostalmail_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotemail'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotemail_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotfax'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotfax_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotphone'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotphone_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotpostalmail'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotpostalmail_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'donotsendmm'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'emailaddress1'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'numeric', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'exchangerate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(50)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'fax'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'followemail'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'followemail_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'industrycode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'industrycode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'marketingonly'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'marketingonly_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'merged'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'merged_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'numberofemployees'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'opendeals'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'datetime', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'opendeals_date_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'opendeals_state_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'numeric', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'openrevenue'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'datetime', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'openrevenue_date_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'openrevenue_state_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'numeric', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'openrevenue_base'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'ownershipcode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'ownershipcode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'parentaccountid'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(160)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'parentaccountid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'participatesinworkflow'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'participatesinworkflow_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'preferredcontactmethodcode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'preferredcontactmethodcode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(160)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'primarycontactid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'numeric', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'revenue'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'numeric', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'revenue_base'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'shippingmethodcode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'shippingmethodcode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(20)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'sic'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(50)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'telephone1'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'territorycode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'territorycode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(10)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'tickersymbol'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(100)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'transactioncurrencyid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'websiteurl'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'createdby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'datetime', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'createdon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'importsequencenumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'modifiedby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'datetime', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'modifiedon'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'modifiedonbehalfby_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(200)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'ownerid_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'statecode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'statecode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'statuscode'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'statuscode_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'bigint', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'versionnumber'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'AK_account'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'country'; 
GO
exec sys.sp_addextendedproperty @name=N'Extraction/Transformation Rules', @value=N'uniqueidentifier in dynamics replica', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'parentaccountid'; 
GO
exec sys.sp_addextendedproperty @name=N'Comments', @value=N'refers to EntityCountry', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'country'; 
GO
exec sys.sp_addextendedproperty @name=N'Comments', @value=N'refers to EntityAccount (this entity)', @level0type=N'SCHEMA', @level0name=N'processed', @level1type=N'TABLE', @level1name=N'dyn_account', @level2type=N'COLUMN', @level2name=N'parentaccountid'; 
GO
GO