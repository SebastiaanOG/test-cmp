CREATE PROCEDURE [elt].[spLookupActiveSystems] 
AS
SELECT DISTINCT ms.*
FROM [elt].[MetadataSystem] ms
WHERE ms.Active = 1
