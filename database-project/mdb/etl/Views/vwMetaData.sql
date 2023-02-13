CREATE VIEW [etl].[vwMetaData]
AS
     SELECT st.[SystemCode],
			st.[SystemName], 
            sy.[SystemType],
			st.[SchemaName],
            st.[EntityName], 
            st.[Name],
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
            tm.InterimDataType  , 
            tm.SinkDataType 
     FROM [etl].[MetadataStructure] st
          INNER JOIN [etl].[MetadataSystem] sy ON sy.[SystemName] = st.[SystemName]
          INNER JOIN [etl].[TypeMap] tm	ON st.[DataType] = tm.[SourceDataType]
											AND sy.[SystemType] = tm.[SystemType]
     WHERE st.IsActive = 1;