CREATE PROCEDURE [elt].[spCreateSchema]
    @create_schema_script nvarchar(MAX)
AS
--Let op: deze parameter wordt gevoed vanuit ADF
BEGIN TRY
    BEGIN TRANSACTION
    EXEC(@create_schema_script)
    COMMIT TRANSACTION

END TRY

BEGIN CATCH
    DECLARE
        @ErrorMessage nvarchar(MAX),
        @ErrorSeverity tinyint,
        @ErrorState tinyint,
        @ErrorLine tinyint

    SET @ErrorMessage = ERROR_MESSAGE()
    SET @ErrorSeverity = ERROR_SEVERITY()
    SET @ErrorState = ERROR_STATE()
    SET @ErrorLine = ERROR_LINE()

    RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState, @ErrorLine)

    ROLLBACK TRANSACTION

END CATCH
