
CREATE PROCEDURE [elt].[spCreateTableFromMetadata]
     @system_name nvarchar(max)
	, @entity_name nvarchar(max)
AS

BEGIN
	DECLARE
		@drop_statement nvarchar(max)
		, @create_statement nvarchar(max)
	
	BEGIN TRY

		BEGIN TRANSACTION

			SELECT @drop_statement = CONCAT('DROP TABLE ', [elt].[fnCreateTableName](@system_name, @entity_name))

			SELECT @create_statement = CONCAT(
										'CREATE TABLE '
										, [elt].[fnCreateTableName](@system_name, @entity_name)
										, '('
										, STRING_AGG(
											CONVERT(varchar(max), CONCAT('['
																		,t.[Name]
																		, '] '
																		, ISNULL(t.[SinkDataType],T.[DataType])
																		, CASE
																			WHEN t.[DataType] = 'XML' THEN ''
																			WHEN t.[DataType] = 'Decimal' THEN Concat('(',NumericPrecision,',',NumericScale,')')
																			WHEN t.[DataType] = 'Numeric' THEN Concat('(',NumericPrecision,',',NumericScale,')')--Specifieke uitzondering voor XML, in de INFORMATION_SCHEMA.COLUMNS krijgt deze voor CharacterMaximumLength de waarde -1 maar als je dit gebruikt bij het aanmaken van de tabel krijg je een error.
																			WHEN t.[CharacterMaximumLength] = -1 THEN '(MAX)'
																			WHEN t.[CharacterMaximumLength] > 8000 THEN '(MAX)'
																			WHEN t.[CharacterMaximumLength] IS NULL THEN ''
																			ELSE CONCAT('(',  t.[CharacterMaximumLength], ')')
																		END
																		, ' '
																		, IIF(t.[IsNullable] = 'NO', 'NOT NULL', 'NULL')
																  )
											)
										  , ','
										  ) WITHIN GROUP (ORDER BY t.[OrdinalPosition] ASC)
										  , ', [ProcessRunId] INT NOT NULL'
										  , ')'
										  )
			FROM [elt].[vwMetaData] t
			WHERE 1=1
			AND [elt].[fnCreateTableName](t.SystemName, t.EntityName) = [elt].[fnCreateTableName](@system_name, @entity_name)

--			TJ: Onderstaande was tot 22-07-2020 werkzaam, tabellen met CharacterMaximumLength = -1 gingen hierop stuk. Om in de toekomst te testen met een error message van deze stored procedure zou je dit deel nog eens kunnen gebruiken.
--			SELECT @create_statement = CONCAT('CREATE TABLE ', [elt].[fnCreateTableName](@system_name, @entity_name), '(', STRING_AGG(CONVERT(varchar(max), CONCAT('[',t.[Name], '] ', t.[DataType], IIF(t.[CharacterMaximumLength] IS NULL, '', CONCAT('(',  t.[CharacterMaximumLength], ')')), ' ', IIF(t.[IsNullable] = 'NO', 'NOT NULL', 'NULL'))), ',') WITHIN GROUP (ORDER BY t.[OrdinalPosition] ASC), ', [ProcessRunId] INT NOT NULL', ')')
--			FROM [elt].[vwMetaData] t
--			WHERE 1=1
--			AND [elt].[fnCreateTableName](t.SystemName, t.EntityName) = [elt].[fnCreateTableName](@system_name, @entity_name)

--			DvB: 02-10-2020 Toevoeging dat alleen wanneer de tabel actief is opnieuw wordt opgebouwd.

	IF (Select [IsActive] from [elt].[MetadataTables] where @entity_name = EntityName AND SystemName = @system_name) = 1
			BEGIN
			IF NOT EXISTS
			(
				SELECT *
				FROM INFORMATION_SCHEMA.TABLES
				WHERE 1=1
				AND [elt].[fnCreateTableName](TABLE_SCHEMA, TABLE_NAME) = [elt].[fnCreateTableName](@system_name, @entity_name)
			)
			BEGIN
			PRINT 1
				--EXEC(@create_statement)
			END
			ELSE
			BEGIN
			PRINT 2
				--EXEC(@drop_statement)
				--EXEC(@create_statement)
			END
		END
			
		COMMIT TRANSACTION


	END TRY

	BEGIN CATCH
		DECLARE
			@ErrorMessage     NVARCHAR(MAX)
			, @ErrorSeverity  TINYINT
			, @ErrorState     TINYINT
			, @ErrorLine	  TINYINT

		SET @ErrorMessage  = ERROR_MESSAGE()
		SET @ErrorSeverity = ERROR_SEVERITY()
		SET @ErrorState    = ERROR_STATE()
		SET @ErrorLine	   = ERROR_LINE()
		
		RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState, @ErrorLine)

		ROLLBACK TRANSACTION

	END CATCH

	    Select Concat('IF NOT EXISTS
                (
                    SELECT *
                    FROM INFORMATION_SCHEMA.TABLES
                    WHERE 1=1
                    AND TABLE_SCHEMA = '+ ''''+  @system_name  + ''''+ '
                    AND TABLE_NAME  = '+ ''''+ @entity_name  + '''' + '
                )
                BEGIN
                '
				,' EXEC('
				,''''
				, @create_statement
				, ''''
				, ')'
				, ' END') AS CreateTableStatement

END