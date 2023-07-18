CREATE FUNCTION [elt].[fnConvertDataTypeOracle](
		@datatype NVARCHAR(128),
		@systemtype NVARCHAR(128),
		@NumericPrecision int,
		@NumericScale int,
		@character_maximum_lenght int
                                                   )

RETURNS VARCHAR(256)
AS
     BEGIN
         DECLARE @result VARCHAR(256);
         SET @result = (Select SinkDataType
						FROM elt.TypeMap
						WHERE SourceDataType =  CASE WHEN @datatype = 'number'
														  AND @NumericScale = 0 THEN 'number(' + Cast(@NumericPrecision as varchar) + ')'
													 WHEN  @datatype = 'number'
														  AND @NumericScale = 4
														  AND @NumericPrecision = 19 THEN 'number(' + Cast(@NumericPrecision as varchar)+ ','+ Cast(@NumericScale as varchar)  + ')'
													 WHEN @datatype = 'number'
														  AND @NumericScale = 4
														  AND @NumericPrecision = 10 THEN 'number(' + Cast(@NumericPrecision as varchar)+ ','+ Cast(@NumericScale as varchar)  + ')'
													 WHEN @datatype = 'number'
													 AND @NumericScale != 0 THEN 'number(10,2)'
													 WHEN @datatype = 'char'
													 AND @character_maximum_lenght = 36 THEN 'char(36)'
													 ELSE @datatype END
						AND SystemType = @systemtype
						)
         RETURN @result;
     END
