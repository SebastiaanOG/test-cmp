CREATE PROCEDURE [elt].[spSnCreateTruncateTempTables]
    @sink_entity_name nvarchar(255)
AS
DECLARE @create_query nvarchar(MAX);
DECLARE @truncate_query nvarchar(MAX);
BEGIN
    SELECT @create_query = CONCAT(
            'IF NOT EXISTS (SELECT * FROM sysobjects WHERE name=''',
            @sink_entity_name,
            ' '') CREATE TABLE [elt].',
            @sink_entity_name,
            ' (result nvarchar(max) NULL)'
        )
    SELECT @truncate_query = CONCAT('TRUNCATE TABLE [elt].', @sink_entity_name)
    EXEC (@create_query)
    EXEC (@truncate_query)
END
GO
