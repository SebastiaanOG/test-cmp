CREATE
	FUNCTION [elt].[fnCreateSQLServerQuery] (
											@system_name NVARCHAR(64),
											@schema_name NVARCHAR(50),
                                            @entity_name NVARCHAR(64),
											@process_run_id INT,
											@select_query VARCHAR(MAX) = NULL,
                                            @IncrementColumnName NVARCHAR(64) = NULL,
                                            @process_run_date  DATE = NULL,
                                            @IncrementRange INT = NULL,
											@LastIncrementDate DATE = NULL,
											@LastIncrementTime TIME(3) = NULL
											)

RETURNS VARCHAR(MAX) AS
-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
--Author:			Tony Jordan
--Date:				2020-09-01
--Description:		Op basis van de entiteit worden de bijbehorende gegevens opgezocht en verwerkt tot een SQL Server Query.
--					Wanneer er gegevens zijn ingevuld in de Increment parameters wordt er een extra WHERE clause toegevoegd om op datum te filteren.


--To do				
-----------------------------------------------------------------------------------------------------------
--Debug:
--DECLARE
--		@system_name NVARCHAR(64) = 'adventureworkslt',
--		@system_type NVARCHAR(64) = 'sqlserver',
--		@schema_name NVARCHAR(50) = 'SalesLT',
--        @entity_name NVARCHAR(64) = 'Customer', 
--		@process_run_id INT = -1,
--		@select_query VARCHAR(MAX) = NULL,
--        @IncrementColumnName NVARCHAR(64) = 'ModifiedDate',
--        @process_run_date  DATE = '2020-08-24',
--        @IncrementRange INT = -1,
--		  @LastIncrementDate DATE = '2009-05-16 16:33:33.123' 
--		  @LastIncrementTime TIME(3) '2009-05-16 16:33:33.123' 
-----------------------------------------------------------------------------------------------------------

BEGIN

	DECLARE @select_clause VARCHAR(MAX), @where_clause VARCHAR(MAX)




	IF @select_query IS NOT NULL
			BEGIN 
				SET @select_clause = REPLACE(@select_query,'<ProcessRunID>',CAST(@process_run_id as varchar(11))+ ' AS ProcessRunId')
			END
		ELSE
			BEGIN
				SELECT @select_clause = CONCAT('SELECT ', CHAR(32),
				STRING_AGG(CONVERT(varchar(max),
							IIF(DataType = 'geometry' ,'Cast('+ QUOTENAME([Name])+ ' as nvarchar(max)) AS ' + QUOTENAME([Name]) 
								,QUOTENAME([Name])),2)
								, ',') 
							WITHIN GROUP (ORDER BY[OrdinalPosition] ASC) 
					, CHAR(32), ',', '''',  @process_run_id, '''', ' AS ProcessRunId', CHAR(32),  'FROM ', '[', @schema_name ,'].[', @entity_name, ']') 
				FROM [elt].[vwMetaData]		
				WHERE [SystemName] = @system_name
				  AND [EntityName] = @entity_name
	  END


	  --Onderstaande opties kunnen gebruikt worden voor het incrementeel verladen.
	  --Je kunt 1 optie kiezen.
	  --Je dient de optie die je wil gebruiken te uncommenten en de andere te commenten.

	  --Incrementeel verladen optie 1
	  --Hierbij wordt uitgegaan van de laatste bewerkingsdatum (LastIncrement) van een gespecificeerde kolom (IncrementColumnName).
	  --Als er nog geen LastIncrement datum is dan wordt er geen WHERE clause gemaakt. Oftewel, als je na een tijdje de incrementele verlading instelt door een IncrementColumn op te geven is de eerstvolgende verlading alsnog een full load om waarna de laatste increment bepaald wordt.
	  --Wanneer deze gevuld zijn volgt een WHERE clause met daarin de naam van de kolom, een 'groter dan'-teken en een datum in DATETIME (vb. WHERE [ModifiedDate] > 'Aug 23 2020  1:00PM')
	SELECT @where_clause = 
		CASE
			WHEN
			 @IncrementColumnName IS NOT NULL
			 AND @LastIncrementDate IS NOT NULL
             AND @process_run_date IS NOT NULL
			THEN CONCAT('WHERE', ' '
						, QUOTENAME(@IncrementColumnName), ' '
						, '>', ' '
						, '''', @LastIncrementDate, ' ', @LastIncrementTime, ''''
						--, @LastIncrement
						) 
            ELSE NULL
        END;

     RETURN
		CONCAT(@select_clause, CHAR(32), @where_clause);


		--Incrementeel verladen 2
		--Er wordt hierbij gekeken naar een specifieke range aan data die we van de bron willen ophalen.
		--Dit gebeurt op basis van de datum dat de verversing loopt en een hoeveelheid dagen terug waar we data van willen hebben.
		--(vb. Als process_run_date = 24-08-2020 en IncrementRange = -1 dan wordt het: WHERE [ModifiedDate] BETWEEN '2020-08-23' AND '2020-08-24')
--	SELECT @where_clause = 
--		CASE
--			WHEN
--			 @IncrementRange IS NOT NULL
--			 AND @IncrementColumnName IS NOT NULL
--            AND @process_run_date IS NOT NULL
--            THEN CONCAT('WHERE', CHAR(32), QUOTENAME(@IncrementColumnName), CHAR(32), '>', CHAR(32), '''', DATEADD(day, @IncrementRange, @process_run_date), '''')
--            ELSE NULL
--        END;
--
--  RETURN
--		CONCAT(@select_clause, CHAR(32), @where_clause);



		--Incrementeel verladen 3
		--Hierbij wordt alleen de data met de datum van de process_run_date opgehaald.
		--vb. process_run_date = 2020-08-24 dan wordt het: WHERE [ModifiedDate] = '2020-08-24'

	--SELECT @where_clause = 
	--	CASE
 --           WHEN @IncrementColumnName IS NOT NULL
 --            AND @process_run_date IS NOT NULL
 --            AND @IncrementRange IS NULL 
 --           THEN CONCAT('WHERE', CHAR(32), QUOTENAME(@IncrementColumnName), CHAR(32), '=', CHAR(32), '''', @process_run_date, '''')
 --           ELSE NULL
 --       END;

	--RETURN
	--	CONCAT(@select_clause, CHAR(32), @where_clause);

END