/*Insert MetadataTable records for ServiceNow Projects */
-- Includes values for columns which are NOT NULL and IncrementColumnName
INSERT INTO [elt].[MetadataTables] (SystemCode, SystemName, SchemaName, EntityName, CopyToStg, CopyToRaw, IncrementColumnName)
VALUES 
('snprojects', 'servicenow-projects', 'api', 'dmn_demand', 1, 0, 'sys_updated_on'),
('snprojects', 'servicenow-projects', 'api', 'issue', 1, 0, 'sys_updated_on'),
('snprojects', 'servicenow-projects', 'api', 'pm_portfolio', 1, 0, 'sys_updated_on'),
('snprojects', 'servicenow-projects', 'api', 'pm_project', 1, 0, 'sys_updated_on'),
('snprojects', 'servicenow-projects', 'api', 'pm_project_task', 1, 0, 'sys_updated_on'),
('snprojects', 'servicenow-projects', 'api', 'project_status', 1, 0, 'sys_updated_on'),
('snprojects', 'servicenow-projects', 'api', 'risk', 1, 0, 'sys_updated_on');

GO