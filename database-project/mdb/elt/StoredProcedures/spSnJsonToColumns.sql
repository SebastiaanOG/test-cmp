CREATE  PROCEDURE [elt].[spSnJsonToColumns] @entity_name varchar(255), @use_case_code varchar(255)
AS
BEGIN
DECLARE @result VARCHAR(MAX);
  SELECT @result = CONCAT(
    'CREATE OR ALTER VIEW elt.vw_sn_', @entity_name,
    ' AS SELECT ',
    STRING_AGG(
        CONVERT(VARCHAR(MAX),
            CONCAT(
                'CONVERT(',
                t.SinkDataType,
                CASE WHEN t.SinkDataType = 'nvarchar' THEN '(MAX)' END, 
                CASE WHEN s.DataType <> 'reference' THEN CONCAT(', CASE WHEN JSON_PATH_EXISTS(result,', '''' ,'$.', Name, '''',')=1 THEN JSON_VALUE(result', ',' ,'',CONCAT('''', '$.',Name,'''', ''), ') ELSE NULL END) AS ') 
                ELSE CONCAT(', CASE WHEN JSON_PATH_EXISTS(result,', '''' ,'$.', Name, '''',')=1 THEN JSON_QUERY(result', ',' ,'',CONCAT('''', '$.',Name,'''', ''), ') ELSE NULL END) AS ')
                END , QUOTENAME(Name) 
            )
        ),
        ','
    ),
    ' FROM elt.', @entity_name
)
FROM elt.MetadataStructure s
LEFT JOIN elt.MetadataSystem st ON st.SystemCode = s.SystemCode
INNER JOIN elt.TypeMap t ON st.SystemType = t.SystemType AND t.SourceDataType = s.DataType
WHERE s.EntityName = @entity_name
    AND s.SystemCode = @use_case_code
    AND s.IsActive = 1

  EXEC(@result)  
END
GO

