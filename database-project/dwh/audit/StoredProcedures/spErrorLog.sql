CREATE PROCEDURE [audit].[spErrorLog]
    @ProcessRunID AS UNIQUEIDENTIFIER,
    @Schema AS VARCHAR(100),
    @EntityName AS VARCHAR(100),
    @ErrorCode INT,
    @ErrorDescription AS VARCHAR(MAX),
    @ErrorType INT = 1

AS
BEGIN
    INSERT INTO [audit].ProcessError
    (
        [ProcessRunID],
        [ExecutionTime],
        [Schema],
        [EntityName],
        [ErrorCode],
        [ErrorDescription],
        [ErrorType]
    )
    VALUES (
        @ProcessRunID,
        GETDATE(),
        @Schema,
        @EntityName,
        @ErrorCode,
        @ErrorDescription,
        @ErrorType
    )
END
