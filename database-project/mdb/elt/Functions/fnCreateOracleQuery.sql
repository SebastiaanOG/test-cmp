CREATE FUNCTION [elt].[fnCreateOracleQuery] 
	(
		@system_name VARCHAR(64), 
		@entity_name VARCHAR(64),
		@schema_name VARCHAR(50),
		@process_run_id INT,
		@select_query VARCHAR(MAX) = NULL,
		@delta_name  VARCHAR(64) = NULL, 
		@delta_date  DATE        = NULL, 
		@delta_range INT         = NULL
	)
RETURNS VARCHAR(MAX) AS
BEGIN

	DECLARE @select_clause VARCHAR(MAX), @where_clause VARCHAR(MAX)

		IF @select_query IS NOT NULL 
			BEGIN 
				SET @select_clause = @select_query
			END
		ELSE
			BEGIN

				SELECT @select_clause = CONCAT('SELECT', CHAR(32), STRING_AGG(CONCAT('"', [Name], '"'), ',') WITHIN GROUP (ORDER BY[OrdinalPosition] ASC) , CHAR(32),',', '''',  @process_run_id, '''', ' AS "ProcessRunId"',  ' FROM ', @schema_name, '.', @entity_name) 
				FROM [elt].[vwMetaData]		
				WHERE SystemName = @system_name
				  AND EntityName = @entity_name
			END

	SELECT @where_clause = 
		CASE
			WHEN @delta_range IS NOT NULL
			 AND @delta_name IS NOT NULL
             AND @delta_date IS NOT NULL
            THEN CONCAT('WHERE', CHAR(32), '"',  @delta_name, '"', CHAR(32), 'BETWEEN', CHAR(32), IIF(@delta_range > 0, CONCAT('TO_DATE(', '''',  CONVERT(varchar, @delta_date, 111), '''', ',', '''yyyy/mm/dd''', ')', CHAR(32), 'AND', CHAR(32), 'TO_DATE(', '''', CONVERT(varchar, DATEADD(day, @delta_range, @delta_date), 111), '''', ',' , '''yyyy/mm/dd''', ')'), CONCAT('TO_DATE(', '''', CONVERT(varchar, DATEADD(day, @delta_range, @delta_date), 111), '''', ',', '''yyyy/mm/dd''', ')', CHAR(32), 'AND',  CHAR(32), 'TO_DATE(', '''', CONVERT(varchar, @delta_date, 111), '''', ',', '''yyyy/mm/dd'')')))
            WHEN @delta_name IS NOT NULL
             AND @delta_date IS NOT NULL
             AND @delta_range IS NULL 
            THEN CONCAT('WHERE', CHAR(32), '"', @delta_name, '"', CHAR(32), '=', CHAR(32), 'TO_DATE(', '''',  CONVERT(varchar, @delta_date, 111), '''', ',', '''yyyy/mm/dd'')')
            ELSE NULL
        END;

        RETURN CONCAT(@select_clause, CHAR(32), @where_clause);

END