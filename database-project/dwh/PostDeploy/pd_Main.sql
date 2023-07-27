/*
Post-Deployment Script Template
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.
 Use SQLCMD syntax to include a file in the post-deployment script.
 Example:      :r .\myfile.sql
 Use SQLCMD syntax to reference a variable in the post-deployment script.
 Example:      :setvar TableName MyTable
               SELECT * FROM [$(TableName)]
--------------------------------------------------------------------------------------
*/

:r .\pd_AuthSynapseWS.sql
GO
:r .\pd_ProcessedTables.sql
GO
:r .\pd_ExecuteStoreProcedures.sql
GO
:r .\pd_ModelledTables.sql
GO
:r .\reference\pd_contractvalue_class.sql
GO
:r .\reference\pd_country.sql
GO
:r .\reference\pd_dredgingcategory_defaults.sql
GO
:r .\reference\pd_equipment_category.sql
GO
:r .\reference\pd_projectstage.sql
GO