CREATE PROCEDURE [elt].[spCopyRawToStg]
    @process_run_date DATE, @pipeline_run_id UNIQUEIDENTIFIER
AS
BEGIN
    WITH CTE
    AS (SELECT DISTINCT
        ELT.VWMETADATA.SYSTEMNAME,
        ELT.VWMETADATA.SYSTEMTYPE,
        ELT.VWMETADATA.SCHEMANAME,
        ELT.VWMETADATA.ENTITYNAME
        FROM ELT.VWMETADATA
    )

    SELECT
        CTE.SYSTEMNAME AS SOURCE_SYSTEM_NAME,
        CTE.SYSTEMNAME AS SYSTEM_NAME,
        CTE.ENTITYNAME AS ENTITY_NAME,
        [elt].[fnCreateStagingFileName](
            CTE.ENTITYNAME,
            CTE.SCHEMANAME,
            ELT.[METADATATABLES].INCREMENTCOLUMNNAME,
            @process_run_date,
            ELT.[METADATATABLES].INCREMENTRANGE
        ) AS SOURCE_ENTITY_FILE_NAME,
        [elt].[fnCreateStagingFolderPath](
            CTE.SYSTEMNAME, @process_run_date
        ) AS SOURCE_ENTITY_FOLDER_PATH,
        [elt].[fnCreateEntityStructure](
            CTE.SYSTEMNAME, CTE.SCHEMANAME, CTE.ENTITYNAME
        ) AS SOURCE_ENTITY_STRUCTURE,
        [elt].[fnCreateTableName](
            CTE.SYSTEMNAME, CTE.ENTITYNAME
        ) AS SINK_ENTITY_NAME,
        [elt].[fnCreateEntityStructure](
            CTE.SYSTEMNAME, CTE.SCHEMANAME, CTE.ENTITYNAME
        ) AS SINK_ENTITY_STRUCTURE,
        [elt].[fnCreateEntityTranslator](
            CTE.SYSTEMNAME, CTE.SCHEMANAME, CTE.ENTITYNAME
        ) AS SOURCE_SINK_MAPPING
    --CASE
    --    WHEN r.IncrementColumnName IS NOT NULL
    --    THEN 'yes'
    --    ELSE 'no'
    --END AS is_delta,
    --r.IncrementColumnName,
    --r.IncrementRange,
    --@process_run_date AS delta_date
    FROM ELT.[MetadataTables]
    INNER JOIN CTE ON CTE.SYSTEMNAME = ELT.[METADATATABLES].SYSTEMNAME
        AND CTE.ENTITYNAME = ELT.[METADATATABLES].ENTITYNAME
        AND CTE.SCHEMANAME = ELT.[METADATATABLES].SCHEMANAME
    INNER JOIN [elt].[MetadataSystem]
        ON [ELT].[METADATASYSTEM].SYSTEMNAME = CTE.SYSTEMNAME
            AND [ELT].[METADATASYSTEM].SYSTEMCODE = ELT.[METADATATABLES].SYSTEMCODE
            AND [ELT].[METADATASYSTEM].[Active] = 1
    WHERE ELT.[METADATATABLES].COPYTOSTG = 1
        AND ELT.[METADATATABLES].ISACTIVE = 1
    ORDER BY CTE.SYSTEMNAME ASC;
END;
