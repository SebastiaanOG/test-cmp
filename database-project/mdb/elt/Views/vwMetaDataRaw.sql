CREATE   VIEW [elt].[vwMetaDataRaw]
AS
     SELECT st.[SystemCode],
			st.[SystemName], 
            sy.[SystemType],
			st.[SchemaName],
            st.[EntityName], 
            st.[Name],
            st.[IsPrimaryKey],
			st.[SemanticName],
			st.[DataType],
            st.[CharacterMaximumLength], 
            st.[IsNullable], 
            st.[OrdinalPosition], 
            st.[NumericPrecision], 
            st.[NumericScale], 
            st.[DatetimeCulture], 
            st.[DatetimeFormat], 
			tm.[SourceDataType], 
            tm.[InterimDataType], 
            tm.[SinkDataType]
     FROM [elt].[MetadataStructure] st
          INNER JOIN [elt].[MetadataSystem] sy ON sy.[SystemCode] = st.[SystemCode]
          INNER JOIN [elt].[TypeMap] tm	ON st.[DataType] = tm.[SourceDataType]
		AND sy.[SystemType] = tm.[SystemType]
     WHERE st.IsActive = 1;
     --  AND u.Active = 1;