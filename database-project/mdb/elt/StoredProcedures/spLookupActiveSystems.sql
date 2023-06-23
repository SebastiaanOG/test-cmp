CREATE PROCEDURE [elt].[spLookupActiveSystems] ( @UseCaseCode	nvarchar(128) )
AS
SELECT DISTINCT ms.*
FROM [elt].[UseCaseEntity] uc
INNER JOIN elt.metadatasystem ms
    ON uc.SystemCode = ms.SystemCode
    AND uc.Active = 1
    AND uc.UseCaseCode = @UseCaseCode