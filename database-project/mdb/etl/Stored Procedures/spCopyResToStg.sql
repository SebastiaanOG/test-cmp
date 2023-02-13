CREATE PROCEDURE [etl].[spCopyResToStg] @process_run_date DATE, @pipeline_run_id uniqueidentifier
AS
   BEGIN
        WITH CTE
             AS (SELECT DISTINCT 
                        vcm.SystemName, 
                        vcm.SystemType,
						vcm.SchemaName,
                        vcm.EntityName
                 FROM etl.vwMetaData vcm)
             SELECT vcm.SystemName AS source_system_name, 
                    [etl].[fnCreateStagingFileName](vcm.EntityName, vcm.SchemaName, r.IncrementColumnName, @process_run_date, r.IncrementRange) AS source_entity_file_name, 
                    [etl].[fnCreateStagingFolderPath](vcm.SystemName, @process_run_date) AS source_entity_folder_path, 
                    [etl].[fnCreateEntityStructure](vcm.SystemName, vcm.SchemaName, vcm.EntityName) AS source_entity_structure, 
                    [etl].[fnCreateTableName](vcm.SystemName, vcm.EntityName) AS sink_entity_name, 
					vcm.SystemName AS system_name,
					vcm.EntityName AS entity_name,
                    [etl].[fnCreateEntityStructure](vcm.SystemName, vcm.SchemaName, vcm.EntityName) AS sink_entity_structure, 
                    [etl].[fnCreateEntityTranslator](vcm.SystemName, vcm.SchemaName, vcm.EntityName) AS source_sink_mapping
                    --CASE
                    --    WHEN r.IncrementColumnName IS NOT NULL
                    --    THEN 'yes'
                    --    ELSE 'no'
                    --END AS is_delta,
					--r.IncrementColumnName,
					--r.IncrementRange,
					--@process_run_date AS delta_date
             FROM etl.[MetadataTables] r
                  INNER JOIN CTE vcm ON vcm.SystemName = r.SystemName
                                        AND vcm.EntityName = r.EntityName
										AND vcm.SchemaName = r.SchemaName
				 INNER JOIN [etl].[MetadataSystem] AS ms
						ON ms.SystemName = vcm.SystemName
						and ms.SystemCode = r.SystemCode
						and ms.[Active] =1
             WHERE r.CopyToRes = 1
                   AND r.IsActive = 1
            ORDER BY vcm.SystemName ASC;
    END;