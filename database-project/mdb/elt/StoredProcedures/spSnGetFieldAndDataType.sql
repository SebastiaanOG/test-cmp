CREATE PROCEDURE [elt].[spSnGetFieldAndDataType]
    @json NVARCHAR(MAX),
    @SystemType nvarchar(255)
AS
BEGIN
    SELECT 
        t1.Field AS name,
        tm.SourceDataType AS type
    FROM 
        OPENJSON(@json)
        WITH (
            IsUnique VARCHAR(5) '$.unique',
            Link VARCHAR(MAX) '$.internal_type.link',
            FieldType VARCHAR(MAX) '$.internal_type.value',
            Mandatory VARCHAR(5) '$.mandatory',
            Field VARCHAR(MAX) '$.element',
            Len INT '$.max_length'
        ) t1
    LEFT JOIN 
        elt.TypeMap tm
    ON t1.FieldType = tm.SourceDataType
    AND tm.SystemType = @SystemType
END
