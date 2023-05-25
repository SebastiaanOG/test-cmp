CREATE PROCEDURE [elt].[spCopySrcToRaw] @process_run_date DATE, @process_run_id int, @use_case_code varchar(max)

AS

    BEGIN
        WITH CTE
             AS (SELECT DISTINCT 
                        vcm.SystemName,
                        vcm.SystemCode, 
                        vcm.SystemType,
						vcm.SchemaName,
                        vcm.EntityName,
                        vcm.UseCaseCode
                 FROM elt.vwMetaDataRaw vcm WHERE vcm.UseCaseCode = @use_case_code)
             SELECT vcm.SystemName AS source_system_name, 
                    vcm.SystemCode AS source_system_code,
                    [elt].[fnCreateQuery](vcm.SystemName, vcm.SystemType, vcm.SchemaName, vcm.EntityName, @process_run_id, r.SourceQuery, r.IncrementColumnName, @process_run_date, r.IncrementRange, CAST(r.LastIncrement AS DATE), CAST(r.LastIncrement AS TIME(3)) ) AS source_entity_query, 
                    vcm.EntityName AS source_entity_name, 
					r.IncrementColumnName AS source_entity_increment_column,
                    [elt].[fnCreateEntityStructure](vcm.SystemName, vcm.SchemaName, vcm.EntityName) AS source_entity_structure, 
                    [elt].[fnCreateStagedFileName](vcm.EntityName, vcm.SchemaName, r.IncrementColumnName, @process_run_date, r.IncrementRange) AS sink_entity_file_name, 
                    [elt].[fnCreateStagedFolderPath](vcm.SystemName, @process_run_date) AS sink_entity_folder_path, 
                    [elt].[fnCreateEntityStructure](vcm.SystemName, vcm.SchemaName, vcm.EntityName) AS sink_entity_structure, 
                    CASE WHEN vcm.SystemType = 'servicenow' 
                        THEN
                            [elt].[fnSnCreateEntityTranslator](vcm.SystemName, vcm.SchemaName, vcm.EntityName)
                        ELSE
                            [elt].[fnCreateEntityTranslator](vcm.SystemName, vcm.SchemaName, vcm.EntityName)
                        END  AS source_sink_mapping,
                    vcm.UseCaseCode AS use_case_code
             FROM elt.[MetadataTables] r
                  INNER JOIN CTE vcm ON vcm.SystemName = r.SystemName
                                        AND vcm.EntityName = r.EntityName
										AND vcm.SchemaName = r.SchemaName
             WHERE r.CopyToRaw = 1
			 AND r.IsActive = 1
			 --AND vcm.SystemName = @system_name
             ORDER BY vcm.SystemName ASC
    END;
