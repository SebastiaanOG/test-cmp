CREATE Procedure [etl].[spInsertTable]
(
 @SystemCode	nvarchar(128)
,@SystemName	nvarchar(128)
,@lSchema		nvarchar(128)
,@lTable		nvarchar(128)
)
AS

DECLARE @TableActive Bit = 1
DECLARE @FirstTime Bit
DECLARE @DeleteTable varchar(max)
DECLARE	@ErrorMessage     NVARCHAR(MAX)
DECLARE @ErrorSeverity  TINYINT
DECLARE @ErrorState     TINYINT
DECLARE @ErrorLine	  TINYINT


			CREATE TABLE #TempMetadataTables(
			[SystemCode] [nvarchar](30) NOT NULL,
			[SystemName] [nvarchar](64) NOT NULL,
			[SchemaName] [nvarchar](50) NOT NULL,
			[EntityName] [nvarchar](64) NOT NULL,
			[CopyToRes] [bit] NOT NULL,
			[CopyToStg] [bit] NOT NULL,
			[SourceQuery] [nvarchar](max) NULL,
			[IsActive] [bit] NULL,
			[LastProcessRun] [datetime] NULL,
			[IncrementColumnName] [nvarchar](64) NULL,
			[IncrementRange] [int] NULL,
			[LastIncrement] [datetime] NULL
		) 
		INSERT INTO #TempMetadataTables
		Select   [SystemCode]
				,[SystemName]
				,[SchemaName]
				,[EntityName]
				,[CopyToRes]
				,[CopyToStg]
				,[SourceQuery]
				,[IsActive]
				,[LastProcessRun]
				,[IncrementColumnName]
				,[IncrementRange]
				,[LastIncrement]
		FROM [etl].[MetadataTables]
		WHERE [SystemCode] = @SystemCode
		AND [SystemName]   = @SystemName
		AND [SchemaName]   = @lSchema	
		AND [EntityName]   = @lTable	


IF EXISTS (SELECT top 1 * from etl.MetadataTables  
				WHERE [SystemCode] = @SystemCode
				AND [SystemName] = @SystemName
				AND [SchemaName] = @lSchema
				AND [EntityName] = @lTable
				AND IsActive = 1
				)
						
	BEGIN
	SET @TableActive = 1
	END
	ELSE
	BEGIN
	SET @TableActive = 0
	END

IF NOT EXISTS (SELECT top 1 * from etl.MetadataStructure  
				WHERE [SystemCode] = @SystemCode
				AND [SystemName] = @SystemName
				AND [SchemaName] = @lSchema
				AND [EntityName] = @lTable
				)
	BEGIN
	SET @FirstTime = 1
	END
	ELSE
	BEGIN
	SET @Firsttime = 0
	END


SET @DeleteTable = ('DELETE from [etl].[MetadataTables]
							WHERE [SchemaName] = ' + '''' + @lSchema +''''  + '
							AND [EntityName] = ' + '''' +@lTable + '''' )
IF @TableActive = 1 AND @FirstTime = 0
BEGIN TRY
	BEGIN TRANSACTION
		EXEC(@DeleteTable)
	
			INSERT INTO [etl].[MetadataTables]
					 ([SystemCode]
					 ,[SystemName]
					 ,[SchemaName]
					 ,[EntityName]
					 ,[CopyToRes]
					 ,[CopyToStg]
					 ,[SourceQuery]
					 ,[IsActive]
					 ,[LastProcessRun]
					 ,[IncrementColumnName]
					 ,[IncrementRange]
					 ,[LastIncrement]
					 ,[LastModified])
	
				SELECT
				@SystemCode
				,@SystemName
				,@lSchema
				,@lTable
				,[CopyToRes]
				,[CopyToStg]
				,[SourceQuery]
				,1
				,[LastProcessRun]
				,[IncrementColumnName]
				,[IncrementRange]
				,[LastIncrement]
				,getdate()
				FROM #TempMetadataTables
	COMMIT
		END TRY
	
		BEGIN CATCH
	
			SET @ErrorMessage  = ERROR_MESSAGE()
			SET @ErrorSeverity = ERROR_SEVERITY()
			SET @ErrorState    = ERROR_STATE()
			SET @ErrorLine	   = ERROR_LINE()
			
			RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState, @ErrorLine)
	
			ROLLBACK TRANSACTION
	
		END CATCH
ELSE 
			BEGIN
			
IF @TableActive = 0 AND @FirstTime = 1
BEGIN TRY
BEGIN TRANSACTION
	EXEC(@DeleteTable)
		INSERT INTO [etl].[MetadataTables]
							 ([SystemCode]
							 ,[SystemName]
							 ,[SchemaName]
							 ,[EntityName]
							 ,[CopyToRes]
							 ,[CopyToStg]
							 ,[SourceQuery]
							 ,[IsActive]
							 ,[LastProcessRun]
							 ,[IncrementColumnName]
							 ,[IncrementRange]
							 ,[LastIncrement]
							 ,[lastmodified])

						SELECT
						@SystemCode
						,@SystemName
						,@lSchema
						,@lTable
						,1
						,1
						,null
						,0
						,NULL
						,NULL
						,NULL
						,NULL
						,getdate()
COMMIT
	END TRY
			BEGIN CATCH
						SET @ErrorMessage  = ERROR_MESSAGE()
						SET @ErrorSeverity = ERROR_SEVERITY()
						SET @ErrorState    = ERROR_STATE()
						SET @ErrorLine	   = ERROR_LINE()
						
						RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState, @ErrorLine)

						ROLLBACK TRANSACTION

						END CATCH
ELSE
					BEGIN
					IF @TableActive = 0
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
			EXEC(@DeleteTable)						
				INSERT INTO [etl].[MetadataTables]
							([SystemCode]
							,[SystemName]
							,[SchemaName]
							,[EntityName]
							,[CopyToRes]
							,[CopyToStg]
							,[SourceQuery]
							,[IsActive]
							,[LastProcessRun]
							,[IncrementColumnName]
							,[IncrementRange]
							,[LastIncrement]
							,[lastmodified])
							
							SELECT
							@SystemCode
							,@SystemName
							,@lSchema
							,@lTable
							,[CopyToRes]
							,[CopyToStg]
							,[SourceQuery]
							,0
							,[LastProcessRun]
							,[IncrementColumnName]
							,[IncrementRange]
							,[LastIncrement]
							,getdate()
							FROM #TempMetadataTables
COMMIT
END TRY

			BEGIN CATCH
				SET @ErrorMessage  = ERROR_MESSAGE()
				SET @ErrorSeverity = ERROR_SEVERITY()
				SET @ErrorState    = ERROR_STATE()
				SET @ErrorLine	   = ERROR_LINE()
				
				RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState, @ErrorLine)

				ROLLBACK TRANSACTION

				END CATCH
							END
						END
END