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

/* Truncate before insert */
TRUNCATE TABLE [etl].[MetadataSystem]

/*Insert metadata records */
INSERT [etl].[MetadataSystem] ([SystemCode], [SystemName], [SystemType], [Active], [Created]) VALUES (N'YOUFORCE', N'yf', N'json', 1, CAST(N'2022-12-07T10:22:03.320' AS DateTime))
GO

/* Truncate before insert */
TRUNCATE TABLE [etl].[TypeMap]

/*Insert metadata records */
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'bigint', N'int64', N'sqlserver', N'bigint')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'bit', N'int16', N'sqlserver', N'bit')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'datetime', N'datetime', N'sqlserver', N'datetime')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'decimal', N'decimal', N'sqlserver', N'decimal')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'float', N'double', N'sqlserver', N'float')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'int', N'int32', N'sqlserver', N'int')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'money', N'decimal', N'sqlserver', N'money')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'nvarchar', N'string', N'sqlserver', N'nvarchar')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'smallint', N'int32', N'sqlserver', N'smallint')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'timestamp', N'byte[]', N'sqlserver', N'timestamp')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'tinyint', N'int16', N'sqlserver', N'tinyint')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'uniqueidentifier', N'guid', N'sqlserver', N'uniqueidentifier')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'varbinary', N'byte[]', N'sqlserver', N'varbinary')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'varchar', N'string', N'sqlserver', N'varchar')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'xml', N'string', N'sqlserver', N'xml')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'numeric', N'double', N'mysqlserver', N'decimal')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'double', N'double', N'mysqlserver', N'int')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'enum', N'string', N'mysqlserver', N'varchar')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'text', N'string', N'mysqlserver', N'varchar(max)')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'tinyint', N'int32', N'mysqlserver', N'int')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'char', N'string', N'mysqlserver', N'varchar')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'address', N'string', N'salesforce', N'varchar')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'bit', N'int16', N'mysql', N'bit')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'date', N'date', N'salesforce', N'date')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'float', N'double', N'salesforce', N'decimal')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'id', N'string', N'salesforce', N'nvarchar')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'integer', N'int32', N'salesforce', N'int')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'string', N'string', N'salesforce', N'varchar')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'int32', N'int32', N'json', N'int')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'byte[]', N'byte[]', N'json', N'varbinary')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'string', N'string', N'json', N'nvarchar')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'boolean', N'int', N'salesforce', N'bit')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'number(10)', N'int32', N'oracle', N'int')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'char(36)', N'string', N'oracle', N'uniqueidentifier')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'number(19,4)', N'double', N'oracle', N'money')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'number(10,4)', N'double', N'oracle', N'small money')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'datetime2', N'date', N'sqlserver', N'datetime2')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'smalldatetime', N'datetime', N'sqlserver', N'datetime')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'geometry', N'string', N'sqlserver', N'varchar')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'ntext', N'string', N'sqlserver', N'ntext')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'char', N'string', N'sqlserver', N'char')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'date', N'date', N'sqlserver', N'date')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'tinyint', N'byte', N'sql server', N'tinyint')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'smallint', N'int16', N'sql server', N'smallint')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'int', N'int32', N'sql server', N'int')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'bigint', N'int64', N'sql server', N'bigint')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'bit', N'boolean', N'sql server', N'boolean')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'float', N'double', N'sql server', N'double')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'real', N'single', N'sql server', N'float')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'money', N'decimal', N'sql server', N'money')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'smallmoney', N'decimal', N'sql server', N'smallmoney')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'nchar', N'string', N'sql server', N'nchar')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'nvarchar', N'string', N'sql server', N'nvarchar')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'char', N'string', N'sql server', N'char')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'varchar', N'string', N'sql server', N'varchar')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'binary', N'byte[]', N'sql server', N'binary')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'varbinary', N'byte[]', N'sql server', N'varbinary')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'date', N'datetime', N'sql server', N'date')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'smalldatetime', N'datetime', N'sql server', N'smalldatetime')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'datetime2', N'datetime', N'sql server', N'datetime2')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'datetime', N'datetime', N'sql server', N'datetime')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'time', N'timespan', N'sql server', N'time')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'decimal', N'decimal', N'sql server', N'decimal')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'number', N'double', N'oracle', N'decimal')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'long', N'string', N'oracle', N'nvarchar')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'binary_float', N'single', N'oracle', N'real')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'binary_double', N'double', N'oracle', N'float')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'varchar2', N'string', N'oracle', N'varchar')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'nvarchar2', N'string', N'oracle', N'nvarchar')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'raw', N'byte[]', N'oracle', N'varbinary')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'long raw', N'byte[]', N'oracle', N'varbinary')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'blob', N'byte[]', N'oracle', N'varbinary')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'clob', N'string', N'oracle', N'varchar')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'nclob', N'string', N'oracle', N'nvarchar')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'rowid', N'string', N'oracle', N'varchar')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'urowid', N'string', N'oracle', N'varchar')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'timestamp', N'datetime', N'oracle', N'datetime2')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'double', N'double', N'mongodb', N'float')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'string', N'string', N'mongodb', N'nvarchar')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'binary data', N'string', N'mongodb', N'nvarchar')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'object id', N'string', N'mongodb', N'nvarchar')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'boolean', N'int16', N'mongodb', N'bit')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'date', N'datetime', N'mongodb', N'datetime2')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'32-bit integer', N'int32', N'mongodb', N'int')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'timestamp', N'string', N'mongodb', N'nvarchar')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'64-bit integer', N'int64', N'mongodb', N'bigint')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'decimal 128', N'double', N'mongodb', N'decimal')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'dbpointer', N'string', N'mongodb', N'nvarchar')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'javascript', N'string', N'mongodb', N'nvarchar')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'max key', N'string', N'mongodb', N'nvarchar')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'min key', N'string', N'mongodb', N'nvarchar')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'symbol', N'string', N'mongodb', N'nvarchar')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'regular expression', N'string', N'mongodb', N'nvarchar')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'undefined/null', N'string', N'mongodb', N'nvarchar')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'integer', N'int32', N'teradata', N'int')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'smallint', N'int16', N'teradata', N'smallint')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'bigint', N'int64', N'teradata', N'bigint')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'byteint', N'int16', N'teradata', N'smallint')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'decimal', N'double', N'teradata', N'decimal')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'float', N'double', N'teradata', N'decimal')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'byte', N'byte[]', N'teradata', N'binary')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'varbyte', N'byte[]', N'teradata', N'varbinary')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'blob', N'byte[]', N'teradata', N'varbinary')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'char', N'string', N'teradata', N'nchar')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'clob', N'sting', N'teradata', N'nvarchar')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'varchar', N'sting', N'teradata', N'nvarchar')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'graphic', N'string', N'teradata', N'nchar')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'json', N'sting', N'teradata', N'nvarchar')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'vargraphic', N'sting', N'teradata', N'nvarchar')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'date', N'datetime', N'teradata', N'date')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'timestamp', N'datetime', N'teradata', N'datetime2')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'time', N'timespan', N'teradata', N'time')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'time with time zone', N'timespan', N'teradata', N'time')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'timestamp with time zone', N'timespan', N'teradata', N'time')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'datetime', N'datetime', N'json', N'date')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'decimal', N'decimal', N'json', N'decimal')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'guid', N'guid', N'json', N'uniqueidentifier')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'int64', N'int64', N'json', N'bigint')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'double', N'double', N'json', N'float')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'int16', N'int16', N'json', N'tinyint')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'bit', N'int16', N'mysqlserver', N'bit')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'tinytext', N'string', N'mysqlserver', N'varchar')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'number(19)', N'int64', N'oracle', N'bigint')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'char', N'string', N'oracle', N'char')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'date', N'datetime', N'oracle', N'datetime')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'number(10,2)', N'double', N'oracle', N'decimal')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'float', N'double', N'oracle', N'float')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'nchar', N'string', N'oracle', N'nvarchar')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'number(3)', N'int16', N'oracle', N'tinyint')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'bit', N'string', N'salesforce', N'varchar')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'datetime', N'date', N'salesforce', N'datetime')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'double', N'double', N'salesforce', N'decimal')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'varchar', N'string', N'salesforce', N'varchar')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'numeric', N'double', N'sqlserver', N'decimal')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'int', N'int32', N'mysqlserver', N'int')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'smallint', N'int16', N'mysqlserver', N'smallint')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'bigint', N'int64', N'mysqlserver', N'bigint')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'tinyint(1)', N'int16', N'mysqlserver', N'bit')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'float', N'double', N'mysqlserver', N'float')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'decimal', N'double', N'mysqlserver', N'decimal')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'longtext', N'string', N'mysqlserver', N'nchar')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'mediumtext', N'string', N'mysqlserver', N'nvarchar')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'varchar', N'string', N'mysqlserver', N'nvarchar')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'date', N'datetime', N'mysqlserver', N'date')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'datetime', N'datetime', N'mysqlserver', N'datetime')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'time', N'timespan', N'mysqlserver', N'time')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'timestamp', N'timespan', N'mysqlserver', N'timestamp')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'mediumblob', N'byte[]', N'mysqlserver', N'varbinary')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'binary', N'byte[]', N'mysqlserver', N'varbinary')
GO
INSERT [etl].[TypeMap] ([SourceDataType], [InterimDataType], [SystemType], [SinkDataType]) VALUES (N'longblob', N'byte[]', N'mysqlserver', N'varbinary')
GO