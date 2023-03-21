CREATE VIEW [elt].[vwMetaData]
AS
SELECT
    [ELT].[METADATASTRUCTURE].[SystemCode],
    [ELT].[METADATASTRUCTURE].[SystemName],
    [ELT].[METADATASYSTEM].[SystemType],
    [ELT].[METADATASTRUCTURE].[SchemaName],
    [ELT].[METADATASTRUCTURE].[EntityName],
    [ELT].[METADATASTRUCTURE].[Name],
    [ELT].[METADATASTRUCTURE].[SemanticName],
    [ELT].[METADATASTRUCTURE].[DataType],
    [ELT].[METADATASTRUCTURE].[CharacterMaximumLength],
    [ELT].[METADATASTRUCTURE].[IsNullable],
    [ELT].[METADATASTRUCTURE].[OrdinalPosition],
    [ELT].[METADATASTRUCTURE].[NumericPrecision],
    [ELT].[METADATASTRUCTURE].[NumericScale],
    [ELT].[METADATASTRUCTURE].[DatetimeCulture],
    [ELT].[METADATASTRUCTURE].[DatetimeFormat],
    [ELT].[TYPEMAP].[SourceDataType],
    [ELT].[TYPEMAP].INTERIMDATATYPE,
    [ELT].[TYPEMAP].SINKDATATYPE
FROM [elt].[MetadataStructure]
INNER JOIN
    [elt].[MetadataSystem] ON
        [ELT].[METADATASYSTEM].[SystemName] = [ELT].[METADATASTRUCTURE].[SystemName]
INNER JOIN
    [elt].[TypeMap] ON
        [ELT].[METADATASTRUCTURE].[DataType] = [ELT].[TYPEMAP].[SourceDataType]
        AND [ELT].[METADATASYSTEM].[SystemType] = [ELT].[TYPEMAP].[SystemType]
WHERE [ELT].[METADATASTRUCTURE].ISACTIVE = 1;
