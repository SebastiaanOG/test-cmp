CREATE PROCEDURE [elt].[spSnGetFieldAndDataType]
    @json NVARCHAR(MAX) -- takes the [result] output as input from 'LU_Structure' activity
AS
BEGIN
    SELECT 
        t1.Field AS name,
        t2.scalar_type AS type
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
        elt.ServiceNowType t2 -- Should be replaced with TypeMap table with ServiceNow api field datatypes
    ON t1.FieldType = t2.name
END
