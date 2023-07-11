/*Insert MetadataTable records for ServiceNow Projects */
DELETE FROM [elt].[MetadataTables]
WHERE SystemCode = 'snp'
-- Includes values for columns which are NOT NULL and IncrementColumnName
INSERT INTO [elt].[MetadataTables] (SystemCode, SystemName, SchemaName, EntityName)
VALUES 
('snp', 'servicenow-projects', 'api', 'dmn_demand'),
('snp', 'servicenow-projects', 'api', 'issue'),
('snp', 'servicenow-projects', 'api', 'pm_portfolio'),
('snp', 'servicenow-projects', 'api', 'pm_project'),
('snp', 'servicenow-projects', 'api', 'pm_project_task'),
('snp', 'servicenow-projects', 'api', 'project_status'),
('snp', 'servicenow-projects', 'api', 'risk'),
('snp', 'servicenow-projects', 'api', 'pm_m2m_project_stakeholder'),
('snp', 'servicenow-projects', 'api', 'cost_plan'),
('snp', 'servicenow-projects', 'api', 'fiscal_period'),
('snp', 'servicenow-projects', 'api', 'cost_plan_breakdown'),
('snp', 'servicenow-projects', 'api', 'sys_user'),
('snp', 'servicenow-projects', 'api', 'cost_plan_baseline'),
('snp', 'servicenow-projects', 'api', 'cost_plan_breakdown_baseline'),
('snp', 'servicenow-projects', 'api', 'dmn_demand_baseline');

GO