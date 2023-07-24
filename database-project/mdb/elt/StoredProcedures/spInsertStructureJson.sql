CREATE Procedure [elt].[spInsertStructureJson]
(
@SystemCode	 nvarchar(128)
,@SystemName nvarchar(128)
,@lSchema	 nvarchar(128)
,@lTable	 nvarchar(128)
,@JSON		 nvarchar(max)
)
AS
										    BEGIN

DECLARE @special_data_types NVARCHAR(max) -- special data types retrived from api/json source like ServiceNow (snp)
SET @special_data_types = JSON_ARRAY('String','sys_class_name','html','user_input','variables','reference','journal','journal_list','journal_input' 
							    ,'journal','glide_list','domain_path','domain_id','decoration','guid','glide_list','composite_field','choice'
                                ,'schedule_date_time','user_image','email','ph_number','mobile_phone','user_image','user_roles','multi_two_lines'
                                ,'password');
								
											INSERT INTO [elt].[MetadataStructure]
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
							
											 SELECT		 @SystemCode,
														 @SystemName,
														 @lSchema AS 'Schema',  
														 @lTable AS 'Table',
														 [name],
														 [Type],
														 character_maximum_length = CASE WHEN [type] IN (SELECT value FROM openjson(@special_data_types)) THEN -1 ELSE NULL END,
														 is_nullable = 1,
														 ordinal_position = ROW_NUMBER() OVER (ORDER BY (Select NULL)),
														 numeric_precision = CASE WHEN [type] IN ('decimal') THEN 30 ELSE NULL END,
														 numeric_scale = CASE WHEN  [type] IN ('decimal') THEN 10 ELSE NULL END,
														 datetime_culture = NULL,
														 datetime_format = NULL,
														 isactive = 1,
														 is_primary_key = 0,
														 primary_key_ordinal = NULL,
														 IsHistory = 1,
														 LastModifiedDate = getdate()
								        FROM OPENJSON(@JSON)
										WITH (
								            [name] nvarchar(500) '$.name',
								            [type] nvarchar(500) '$.type'
												) AS Js
                                        WHERE 
                                        -- case statement that does not insert a row when an entity has an empty column name
                                            CASE
                                                WHEN [name] = '' THEN 0
                                                ELSE 1
                                            END = 1
                            

							 END