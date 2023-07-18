/*Insert MetadataTable records for ServiceNow Projects */
DELETE FROM [elt].[MetadataTables]
WHERE SystemCode = 'snp'
-- Includes values for columns which are NOT NULL and IncrementColumnName
INSERT INTO [elt].[MetadataTables] (SystemCode, SystemName, SchemaName, EntityName, CopyToRaw, CopyToStg)
VALUES 
('snp', 'servicenow-projects', 'api', 'dmn_demand', 1, 1),
('snp', 'servicenow-projects', 'api', 'issue', 1, 1),
('snp', 'servicenow-projects', 'api', 'pm_portfolio', 1, 1),
('snp', 'servicenow-projects', 'api', 'pm_project', 1, 1),
('snp', 'servicenow-projects', 'api', 'pm_project_task', 1, 1),
('snp', 'servicenow-projects', 'api', 'project_status', 1, 1),
('snp', 'servicenow-projects', 'api', 'risk', 1, 1),
('snp', 'servicenow-projects', 'api', 'pm_m2m_project_stakeholder', 1, 1),
('snp', 'servicenow-projects', 'api', 'cost_plan', 1, 1),
('snp', 'servicenow-projects', 'api', 'fiscal_period', 1, 1),
('snp', 'servicenow-projects', 'api', 'cost_plan_breakdown', 1, 1),
('snp', 'servicenow-projects', 'api', 'sys_user', 1, 1),
('snp', 'servicenow-projects', 'api', 'cost_plan_baseline', 1, 1),
('snp', 'servicenow-projects', 'api', 'cost_plan_breakdown_baseline', 1, 1),
('snp', 'servicenow-projects', 'api', 'dmn_demand_baseline', 1, 1);

GO