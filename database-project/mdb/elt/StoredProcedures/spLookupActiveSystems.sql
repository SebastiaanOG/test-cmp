CREATE PROCEDURE [elt].[spLookupActiveSystems] (@SystemCode	nvarchar(128))
AS
SELECT DISTINCT ms.*
FROM [elt].[MetadataSystem] ms
WHERE ms.Active = 1
AND ms.SystemCode = @SystemCode