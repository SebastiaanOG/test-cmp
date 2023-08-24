-- This file contains SQL statements that will be executed after the build script.

/* Truncate before insert */
TRUNCATE TABLE [elt].[ProcessedTables]

/*Insert records to pickup in the processed layer */
INSERT
    [elt].[ProcessedTables] ([Level], [EntityName], [UseCaseCode], [StoredProcedureName], [Schema], [Active], [Comment]) 

VALUES
    (1,'dyn_account','dyn','sp_load_dyn_account','processed',1,'Stored procedure to load dyn_account'),
    (1,'dyn_approval','dyn','sp_load_dyn_approval','processed',1,'Stored procedure to load dyn_approval'),
    (1,'dyn_area','dyn','sp_load_dyn_area','processed',1,'Stored procedure to load dyn_area'),
    (1,'dyn_bondguarantee','dyn','sp_load_dyn_bondguarantee','processed',1,'Stored procedure to load dyn_bondguarantee'),
    (1,'dyn_country','dyn','sp_load_dyn_country','processed',1,'Stored procedure to load dyn_country'),
    (1,'dyn_deviation','dyn','sp_load_dyn_deviation','processed',1,'Stored procedure to load dyn_deviation'),
    (1,'dyn_employee','dyn','sp_load_dyn_employee','processed',1,'Stored procedure to load dyn_employee'),
    (1,'dyn_equipment','dyn','sp_load_dyn_equipment','processed',1,'Stored procedure to load dyn_equipment'),
    (1,'dyn_equipmenttype','dyn','sp_load_dyn_equipmenttype','processed',1,'Stored procedure to load dyn_equipmenttype'),
    (1,'dyn_externalprojectparticipant','dyn','sp_load_dyn_externalprojectparticipant','processed',1,'Stored procedure to load dyn_externalprojectparticipant'),
    (1,'dyn_internalproject','dyn','sp_load_dyn_internalproject','processed',1,'Stored procedure to load dyn_internalproject'),
    (1,'dyn_nonstandardproject','dyn','sp_load_dyn_nonstandardproject','processed',1,'Stored procedure to load dyn_nonstandardproject'),
    (1,'dyn_press','dyn','sp_load_dyn_press','processed',1,'Stored procedure to load dyn_press'),
    (1,'dyn_procurement','dyn','sp_load_dyn_procurement','processed',1,'Stored procedure to load dyn_procurement'),
    (1,'dyn_project','dyn','sp_load_dyn_project','processed',1,'Stored procedure to load dyn_project'),
    (1,'dyn_projectfinancial','dyn','sp_load_dyn_projectfinancial','processed',1,'Stored procedure to load dyn_projectfinancial'),
    (1,'dyn_projectgeneral','dyn','sp_load_dyn_projectgeneral','processed',1,'Stored procedure to load dyn_projectgeneral'),
    (1,'dyn_projectriskprofile','dyn','sp_load_dyn_projectriskprofile','processed',1,'Stored procedure to load dyn_projectriskprofile'),
    (1,'dyn_quantitiesequipment','dyn','sp_load_dyn_quantitiesequipment','processed',1,'Stored procedure to load dyn_quantitiesequipment'),
    (1,'dyn_relatedproject','dyn','sp_load_dyn_relatedproject','processed',1,'Stored procedure to load dyn_relatedproject'),
    (1,'dyn_reportingnote','dyn','sp_load_dyn_reportingnote','processed',1,'Stored procedure to load dyn_reportingnote'),
    (1,'dyn_subarea','dyn','sp_load_dyn_subarea','processed',1,'Stored procedure to load dyn_subarea'),
    (1,'dyn_tenderteam','dyn','sp_load_dyn_tenderteam','processed',1,'Stored procedure to load dyn_tenderteam'),
    (1,'dyn_tenderteamrole','dyn','sp_load_dyn_tenderteamrole','processed',1,'Stored procedure to load dyn_tenderteamrole'),
    (1,'dyn_timeregistration','dyn','sp_load_dyn_timeregistration','processed',1,'Stored procedure to load dyn_timeregistration'),
    (1,'dyn_toptenrisk','dyn','sp_load_dyn_toptenrisk','processed',1,'Stored procedure to load dyn_toptenrisk'),
    (1,'dyn_vanoordentity','dyn','sp_load_dyn_vanoordentity','processed',1,'Stored procedure to load dyn_vanoordentity'),
    (1,'dyn_vobusinessunit','dyn','sp_load_dyn_vobusinessunit','processed',1,'Stored procedure to load dyn_vobusinessunit'),
    (1,'dyn_workelement','dyn','sp_load_dyn_workelement','processed',1,'Stored procedure to load dyn_workelement')
