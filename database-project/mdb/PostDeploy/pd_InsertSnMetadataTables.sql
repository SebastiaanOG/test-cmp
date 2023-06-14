/*Insert MetadataTable records for ServiceNow Projects */
DELETE FROM [elt].[MetadataTables]
WHERE SystemCode = 'snp'
-- Includes values for columns which are NOT NULL and IncrementColumnName
INSERT INTO [elt].[MetadataTables] (SystemCode, SystemName, SchemaName, EntityName, IncrementColumnName)
VALUES 
('snp', 'servicenow-projects', 'api', 'dmn_demand', 'sys_updated_on'),
('snp', 'servicenow-projects', 'api', 'issue', 'sys_updated_on'),
('snp', 'servicenow-projects', 'api', 'pm_portfolio', 'sys_updated_on'),
('snp', 'servicenow-projects', 'api', 'pm_project', 'sys_updated_on'),
('snp', 'servicenow-projects', 'api', 'pm_project_task', 'sys_updated_on'),
('snp', 'servicenow-projects', 'api', 'project_status', 'sys_updated_on'),
('snp', 'servicenow-projects', 'api', 'risk', 'sys_updated_on');

GO