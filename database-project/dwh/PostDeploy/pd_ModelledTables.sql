-- This file contains SQL statements that will be executed after the build script.



-- Add empty and unknowns to Dimensions
IF (SELECT COUNT(*) FROM modelled.DimArea WHERE pk_area < 0) != 2
BEGIN
    SET IDENTITY_INSERT modelled.DimArea ON;  
    INSERT INTO [modelled].[DimArea]
    (    [pk_area]
        ,[dwh_valid_from] 
        ,[dwh_valid_to]
        ,[dwh_active]
        ,[ak_area]
        ,[area_name]
        ,[area_groupname]
        ,[area_abbrevation]
        ,[area_businessunit]
        ,[area_owner]
        ,[company]
    )
    VALUES 
    (-1, '1900-01-01', NULL, 1, -1, 'Unknown', 'Unknown', 'Unknown', 'Unknown', 'Unknown', 'Unknown'),
    (-2, '1900-01-01', NULL, 1, -2, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty')
END

IF (SELECT COUNT(*) FROM modelled.DimSubArea WHERE pk_subarea < 0) != 2
BEGIN
    SET IDENTITY_INSERT modelled.DimSubArea ON;  
    INSERT INTO [modelled].[DimSubArea]
    (    [pk_subarea]
        ,[dwh_valid_from]
        ,[dwh_valid_to]
        ,[dwh_active]
        ,[dwh_process_run_id]
        ,[dwh_hash]
        ,[ak_subarea]
        ,[subarea_name])

    VALUES 
    (-1, '1900-01-01', NULL, 1, NULL, NULL, -1, 'Unknown'),
    (-2, '1900-01-01', NULL, 1, NULL, NULL, -2, 'Empty')    
END

IF (SELECT COUNT(*) FROM modelled.DimTenderType WHERE pk_tendertype < 0) != 2
BEGIN
    SET IDENTITY_INSERT modelled.DimTendertype ON;  
    INSERT INTO [modelled].[DimTenderType]
    (      [pk_tendertype]
        ,[dwh_valid_from]
        ,[dwh_valid_to]
        ,[dwh_active]
        ,[dwh_process_run_id]
        ,[dwh_hash]
        ,[tendertype_name]
        ,[tendertype_sort]
    )
    VALUES 
    (-1, '1900-01-01', NULL, 1, NULL, NULL, 'Unknown', 2147483646),
    (-2, '1900-01-01', NULL, 1, NULL, NULL, 'Empty', 2147483647)
END