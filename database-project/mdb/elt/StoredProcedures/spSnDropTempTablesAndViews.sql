CREATE PROCEDURE [elt].[spSnDropTempTablesAndViews]
    @sink_entity_name nvarchar(255)
AS
DECLARE @drop_query nvarchar(MAX);
DECLARE @drop_view nvarchar(MAX);
BEGIN
    SELECT @drop_query = CONCAT(
            'IF EXISTS (SELECT * FROM sysobjects WHERE name=''',
            @sink_entity_name,
            ' '') DROP TABLE [elt].',
            @sink_entity_name
        )
    SELECT @drop_view = CONCAT(
            'IF EXISTS (SELECT * FROM sysobjects WHERE name=''vw_sn_',
            @sink_entity_name,
            ' '') DROP VIEW [elt].vw_sn_',
            @sink_entity_name
        )
    EXEC (@drop_query)
    EXEC (@drop_view)
END
GO
