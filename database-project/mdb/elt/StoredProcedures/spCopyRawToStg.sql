CREATE PROCEDURE [elt].[spCopyRawToStg] @process_run_date DATE, @pipeline_run_id uniqueidentifier, @use_case_code varchar(max), @layer_name nvarchar(max)
AS
   BEGIN
        WITH CTE
                AS (SELECT DISTINCT
                    vcm.SystemName,
                    vcm.SystemCode,
                    vcm.SystemType,
                    vcm.SchemaName,
                    vcm.EntityName,
                    vcm.UseCaseCode,
                    ue.Active,
                    ue.CopyToStg
                FROM elt.vwMetaDataRaw vcm
                INNER JOIN elt.UseCaseEntity ue ON vcm.UseCaseCode = ue.UseCaseCode AND vcm.EntityName = ue.EntityName
                WHERE vcm.UseCaseCode = @use_case_code
                    AND ue.Active = 1
                    AND ue.CopyToStg = 1
                )
             SELECT vcm.SystemName AS source_system_name, 
                    [elt].[fnCreateStagedFileName](vcm.EntityName, vcm.SchemaName, r.IncrementColumnName, @process_run_date, r.IncrementRange) AS source_entity_file_name, 
                    [elt].[fnCreateStagedFolderPath](vcm.SystemName, @process_run_date) AS source_entity_folder_path, 
                    [elt].[fnCreateEntityStructure](vcm.SystemName, vcm.SchemaName, vcm.EntityName) AS source_entity_structure, 
                    [elt].[fnCreateTableName](@layer_name, vcm.SystemCode, vcm.EntityName) AS sink_entity_name, 
					vcm.SystemName AS system_name,
					vcm.EntityName AS entity_name,
                    [elt].[fnCreateEntityStructure](vcm.SystemName, vcm.SchemaName, vcm.EntityName) AS sink_entity_structure, 
                    [elt].[fnCreateEntityTranslator](vcm.SystemName, vcm.SchemaName, vcm.EntityName) AS source_sink_mapping,
                    vcm.UseCaseCode AS use_case_code
                    --CASE
                    --    WHEN r.IncrementColumnName IS NOT NULL
                    --    THEN 'yes'
                    --    ELSE 'no'
                    --END AS is_delta,
					--r.IncrementColumnName,
					--r.IncrementRange,
					--@process_run_date AS delta_date
             FROM elt.[MetadataTables] r
                  INNER JOIN CTE vcm ON vcm.SystemName = r.SystemName
                                        AND vcm.EntityName = r.EntityName
										AND vcm.SchemaName = r.SchemaName
				 INNER JOIN [elt].[MetadataSystem] AS ms
						ON ms.SystemName = vcm.SystemName
						and ms.SystemCode = r.SystemCode
						and ms.[Active] =1
            ORDER BY vcm.SystemName ASC;
    END;