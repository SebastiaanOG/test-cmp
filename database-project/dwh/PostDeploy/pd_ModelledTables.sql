-- This file contains SQL statements that will be executed after the build script.

/* Truncate before insert */
TRUNCATE TABLE [elt].[ModelledTables]

/*Insert records to pickup in the processed layer */
INSERT
    [elt].[ModelledTables] ([Level], [EntityName], [StoredProcedureName], [Schema], [Active], [Comment]) 

VALUES
    (2,'DimArea','sp_load_DimArea','modelled',1,'Stored procedure to load DimArea'),
    (2,'DimContractValueClass','sp_load_DimContractValueClass','modelled',1,'Stored procedure to load DimContractValueClass'),
    (2,'DimCountry','sp_load_DimCountry','modelled',1,'Stored procedure to load DimCountry'),
    (2,'DimDredgingCategory','sp_load_DimDredgingCategory','modelled',1,'Stored procedure to load DimDredgingCategory'),
    (2,'DimEquipmentObject','sp_load_DimEquipmentObject','modelled',1,'Stored procedure to load DimEquipmentObject'),
    (2,'DimEquipmentType','sp_load_DimEquipmentType','modelled',1,'Stored procedure to load DimEquipmentType'),
    (2,'DimProject','sp_load_DimProject','modelled',1,'Stored procedure to load DimProject'),
    (2,'DimProjectEquipment','sp_load_DimProjectEquipment','modelled',1,'Stored procedure to load DimProjectEquipment'),
    (2,'DimProjectStatus','sp_load_DimProjectStatus','modelled',1,'Stored procedure to load DimProjectStatus'),
    (2,'DimStage','sp_load_DimStage','modelled',1,'Stored procedure to load DimStage'),
    (2,'DimSubArea','sp_load_DimSubArea','modelled',1,'Stored procedure to load DimSubArea'),
    (2,'DimTenderType','sp_load_DimTenderType','modelled',1,'Stored procedure to load DimTenderType'),
    (2,'DimDate','sp_populate_dimdate','processed',1,'Stored procedure to load DimDate'),
    (3,'FactProjects','sp_load_FactProjects','processed',1,'Stored procedure to load FactProjects')



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
    SET IDENTITY_INSERT modelled.DimArea OFF;
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
    SET IDENTITY_INSERT modelled.DimSubArea OFF;
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
    SET IDENTITY_INSERT modelled.DimTendertype OFF;
END


IF (SELECT COUNT(*) FROM modelled.DimProjectEquipment WHERE pk_projectequipment < 0) != 2
BEGIN
    SET IDENTITY_INSERT [modelled].[DimProjectEquipment] ON;
    INSERT INTO [modelled].[DimProjectEquipment]
    (   [pk_projectequipment]
        ,[dwh_valid_from]
        ,[dwh_active]
        ,[ak_projectequipment]
        ,[projectequipment_description]
        ,[projectequipment_activity]
        ,[projectequipment_product_services]
        ,[projectequipment_scope]
        ,[soiltype]
        ,[dredging_volume_unit]
        ,[projectequipment_remarks]
        ,[equipment_unit_category]
        ,[equipment_name]
    )
    VALUES
        (-1, '1900-01-01', -1, 1, 'Unknown', 'Unknown', 'Unknown', 'Unknown', 'Unknown', 'Unknown', 'Unknown', 'Unknown', 'Unknown'),
        (-2, '1900-01-01', -2, 1, 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty')
    SET IDENTITY_INSERT [modelled].[DimProjectEquipment] OFF;
END

IF (SELECT COUNT(*) FROM modelled.DimEquipmentType WHERE pk_equipmenttype < 0) != 2
BEGIN
    SET IDENTITY_INSERT [modelled].[DimEquipmentType] ON;
    INSERT INTO [modelled].[DimEquipmentType]
    (    [pk_equipmenttype]
        ,[dwh_valid_from]
        ,[dwh_active]
        ,[ak_equipmenttype]
        ,[equipmenttype_name]
    )
    VALUES
        (-1, '1900-01-01', -1, 1, 'Unknown'),
        (-2, '1900-01-01', -2, 1, 'Empty')
    SET IDENTITY_INSERT [modelled].[DimEquipmentType] OFF;
END

IF (SELECT COUNT(*) FROM modelled.DimEquipmentObject WHERE pk_equipmentobject < 0) != 2
BEGIN
    SET IDENTITY_INSERT [modelled].[DimEquipmentObject] ON;
    INSERT INTO [modelled].[DimEquipmentObject]
    (    [pk_equipmentobject]
        ,[dwh_valid_from]
        ,[dwh_active]
        ,[ak_equipmentobject]
        ,[equipmentobject_name]
        ,[equipmentobject_number]
        ,[equipmentobject_type]
        ,[equipmentobject_code]
    )
    VALUES
        (-1, '1900-01-01', -1, 1, 'Unknown', 'Unknown', 'Unknown', 'Unknown'),
        (-2, '1900-01-01', -2, 1, 'Empty', 'Empty', 'Empty', 'Empty')
    SET IDENTITY_INSERT [modelled].[DimEquipmentObject] OFF;
END