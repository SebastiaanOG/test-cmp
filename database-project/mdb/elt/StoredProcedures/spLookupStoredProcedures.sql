CREATE PROCEDURE [elt].[spLookupStoredProcedures]
@level INT
AS
BEGIN
    
    SELECT CONCAT('[',[Schema]/*1*/,'].[Load_'/*2*/, [EntityName], ']') as [Procedure] --*1 Project is the schema of the storage layer. *2 Stored procedures should have 'Load_' as a preposition in the name.
	 ,[Schema]
	 ,[EntityName]
	FROM [elt].[StorageTables] 
	WHERE 1=1
	--AND [TableType] = 'Dim' 
	AND [Level] = @level
	AND [Active] =  1
 
END