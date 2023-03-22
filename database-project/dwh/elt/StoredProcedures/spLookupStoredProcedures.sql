CREATE PROCEDURE [elt].[spLookupStoredProcedures]
@level INT
AS
BEGIN
    
    SELECT CONCAT('[',[Schema],'].[', [EntityName], ']') as [Procedure]
	 ,[Schema]
	 ,[EntityName]
	FROM [elt].[StorageTables] 
	WHERE 1=1
	--AND [TableType] = 'Dim' 
	AND [Level] = @level
	AND [Active] =  1
 
END