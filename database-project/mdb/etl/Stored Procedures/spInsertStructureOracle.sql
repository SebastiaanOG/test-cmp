﻿CREATE Procedure [etl].[spInsertStructureOracle]
(
@SystemCode	 nvarchar(128)
,@lSchema	 nvarchar(128)
,@lTable	 nvarchar(128)
,@JSON		 nvarchar(max)
)
AS
						BEGIN
		
							INSERT INTO [etl].[MetadataStructure]
							           ([SystemCode]
									   ,[SystemName]
							           ,[SchemaName]
							           ,[EntityName]
							           ,[Name]
							           ,[DataType]
							           ,[CharacterMaximumLength]
							           ,[IsNullable]
							           ,[OrdinalPosition]
							           ,[NumericPrecision]
							           ,[NumericScale]
							           ,[DatetimeCulture]
							           ,[DatetimeFormat]
							           ,[IsActive]
							           ,[IsPrimaryKey]
							           ,[PrimaryKeyOrdinal]
									   ,[IsHistory]
									   ,[LastModifiedDate])
							
							        SELECT	@SystemCode,
											[TABLE_CATALOG],
											@lSchema AS 'Schema',  
											@lTable AS 'Table',
							                [COLUMN_NAME],
											[etl].[fnConvertDataTypeOracle]([data_type],'oracle',numeric_precision,numeric_scale, [CHARACTER_MAXIMUM_LENGTH]) AS Data_type,
							                [CHARACTER_MAXIMUM_LENGTH],
							                is_nullable = CASE 
															WHEN [IS_NULLABLE] = 'YES' THEN 1
															when [data_type] = 'date' then 1
															When [data_type] = 'datetime' then 1
															ELSE 0 END, 
							                [ordinal_position],
											[numeric_precision],
							                [numeric_scale],
							                datetime_culture = NULL,
							                datetime_format = NULL,
											isactive = 1,
							                is_primary_key = 0,
							                primary_key_ordinal = NULL,
											IsHistory = 1,
											LastModifiedDate = getdate()
							        FROM OPENJSON(@JSON)
									WITH (
										[TABLE_CATALOG] nvarchar(500) '$.TABLE_CATALOG',
							            [COLUMN_NAME] nvarchar(500) '$.COLUMN_NAME',
							            [DATA_TYPE] nvarchar(500) '$.DATA_TYPE',
										[CHARACTER_MAXIMUM_LENGTH] varchar(500) '$.CHARACTER_MAXIMUM_LENGTH',
										[numeric_precision] nvarchar(500) '$.NUMERIC_PRECISION',
										[numeric_scale] nvarchar(500) '$.NUMERIC_SCALE',
										[IS_NULLABLE] nvarchar(500) '$.IS_NULLABLE',
										[ORDINAL_POSITION] varchar(500) '$.ORDINAL_POSITION'
										        ) AS Js
						 
							 END