CREATE PROCEDURE [etl].[spSystemStorageDays] AS

SELECT st.SystemName
, st.StorageDays * -1 as StorageDays
, CONCAT('reservoir/', st.SystemName, '/') AS FolderPath
FROM [etl].[SystemStorageDays] st
INNER JOIN etl.MetadataSystem sy
	ON st.SystemName = sy.SystemName
	AND sy.Active = 1
--where SystemName = @system_name