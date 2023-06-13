-- This file contains SQL statements that will be executed after the build script.

/* Truncate before insert */
--TRUNCATE TABLE [elt].[ProcessedTables]

/*Insert records to pickup in the processed layer */
INSERT [elt].[ProcessedTables] ([Level], [EntityName], [UseCaseCode], [StoredProcedureName], [Schema], [Active], [Comment]) VALUES (N'2', N'fuel_prices', N'cmptest', N'cmptest', N'processed', N'1', N'This dataset is a dummy set to test end to end logic of the framework')

