CREATE TABLE modelled.FactProjects (
   [pk_projects]  int IDENTITY  NOT NULL
,  [dwh_valid_from]  date   NOT NULL
,  [dwh_valid_to]  date   NULL
,  [dwh_active]  bit   NOT NULL
,  [dwh_process_run_id]  uniqueidentifier   NULL
,  [dwh_hash]  varbinary(8000)   NULL
,  [ak_project]  nvarchar(36)   NOT NULL
,  [fk_expected_startdate_of_work]  date   NOT NULL
,  [fk_default_expected_startdate_of_work]  date   NOT NULL
,  [fk_expected_awarddate]  date   NOT NULL
,  [fk_tenderdate]  date   NOT NULL
,  [fk_default_tenderdate]  date   NOT NULL
,  [fk_project]  int   NOT NULL
,  [fk_dredgingcategory]  int   NOT NULL
,  [fk_projectstatus]  int   NOT NULL
,  [fk_stage]  int   NOT NULL
,  [fk_tendertype]  int   NOT NULL
,  [fk_contractvalue_class]  int   NOT NULL
,  [fk_area]  int   NOT NULL
,  [fk_subarea]  int   NOT NULL
,  [fk_country]  int   NOT NULL
,  [project_count]  int  DEFAULT 1 NOT NULL
,  [total_VO_share_value]  decimal(18,0)   NULL
,  [total_contract_value]  decimal(18,0)   NULL
,  [cashflow_D&I]  decimal(18,0)   NULL
,  [total_overhead_expenses]  decimal(18,5)   NULL
,  [total_gross_margin_D&I_PL_GO]  decimal(18,5)   NULL
,  [potential_tender_volume]  decimal(18,5)   NULL
,  [potential_award_value]  decimal(18,5)   NULL
,  [potential_cashflow_D&I_PL_GO]  decimal(18,5)   NULL
,  [potential_gross_margin_D&I_PL_GO]  decimal(18,5)   NULL
,  [default_VO_contract_value]  integer   NULL
, CONSTRAINT [PK_modelled.FactProjects] PRIMARY KEY CLUSTERED ([pk_projects] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100, DATA_COMPRESSION = PAGE))
GO

GO

exec sys.sp_addextendedproperty @name=N'Table Name', @value=N'FactProjects', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=FactProjects
GO
exec sys.sp_addextendedproperty @name=N'Table Type', @value=N'Fact', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=FactProjects
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'Projects', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=FactProjects
GO
exec sys.sp_addextendedproperty @name=N'Database Schema', @value=N'modelled', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=FactProjects
GO
exec sys.sp_addextendedproperty @name=N'Generate Script?', @value=N'N', @level0type=N'SCHEMA', @level0name=modelled, @level1type=N'TABLE', @level1name=FactProjects
GO
GO

exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'Primary key fact', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'pk_projects'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dwh startdate', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dwh endate', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'indicator active', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dwh_process_run_id', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'dwh_hash', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'dwh_hash'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'application ID', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'ak_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'DimDate dimension key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_expected_startdate_of_work'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'DimDate dimension key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_default_expected_startdate_of_work'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'DimDate dimension key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_expected_awarddate'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'DimDate dimension key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_tenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'DimDate dimension key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_default_tenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'DimProject dimension key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'DimDredgingCategory dimension key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_dredgingcategory'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'DimProjectstatus dimension key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_projectstatus'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'DimStage dimension key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_stage'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'DimTenderType dimension key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_tendertype'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'DimContractValueClass dimension key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_contractvalue_class'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'DimArea dimension key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_area'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'DimSubArea dimension key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_subarea'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'DimCountry dimension key', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_country'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'number of projects', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'project_count'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'total VO share value', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'total_VO_share_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'total contract value', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'total_contract_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'Cashflow D&I', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'cashflow_D&I'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'total overhead expenses', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'total_overhead_expenses'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'Total Gross Margin (D&I + P/L + GO)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'total_gross_margin_D&I_PL_GO'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'potential tender value', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'potential_tender_volume'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'potential award value', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'potential_award_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'potential cashflow (D&I + P/L + GO)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'potential_cashflow_D&I_PL_GO'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'potential gross margin (D&I + P/L + GO)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'potential_gross_margin_D&I_PL_GO'; 
GO
exec sys.sp_addextendedproperty @name=N'Display Name', @value=N'default VO contract value', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'default_VO_contract_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Primary key fact', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'pk_projects'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'record startdate', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'record endate', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'indicator active', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'proces run id of the synapse pipeline', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'hash of the columns that will be compared with the staged layer', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'dwh_hash'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Application key, unique identifier source', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'ak_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'the expected startdate of work (real or default)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_expected_startdate_of_work'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'the default expected startdate of work via dreding category', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_default_expected_startdate_of_work'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'the expected awarddate (real or default)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_expected_awarddate'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'the tenderdate (real or default)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_tenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'the default tenderdate via dreding category', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_default_tenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Key to project details', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Key to dredgingcategory and defaults', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_dredgingcategory'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Key to projectstatus', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_projectstatus'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Key to stage', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_stage'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Key to tendertype', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_tendertype'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Class via total_VO_share', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_contractvalue_class'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'VO work area, non geografical', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_area'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'VO work subarea, non geografical', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_subarea'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Key to country', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_country'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'number of projects', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'project_count'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'total VO share value €/mln', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'total_VO_share_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'total contract value €/mln', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'total_contract_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Cashflow D&I (€)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'cashflow_D&I'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'total overhead expenses €/mln', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'total_overhead_expenses'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'Total Gross Margin (D&I + P/L + GO)  €/mln', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'total_gross_margin_D&I_PL_GO'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'potential tender value', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'potential_tender_volume'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'potential award value', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'potential_award_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'potential cashflow (D&I + P/L + GO)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'potential_cashflow_D&I_PL_GO'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'potential gross margin (D&I + P/L + GO)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'potential_gross_margin_D&I_PL_GO'; 
GO
exec sys.sp_addextendedproperty @name=N'Description', @value=N'default_VO_contract_value', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'default_VO_contract_value'; 
GO
exec sys.sp_addextendedproperty @name=N'FK To', @value=N'DimDate.PK_Date', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_expected_startdate_of_work'; 
GO
exec sys.sp_addextendedproperty @name=N'FK To', @value=N'DimDate.PK_Date', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_default_expected_startdate_of_work'; 
GO
exec sys.sp_addextendedproperty @name=N'FK To', @value=N'DimDate.PK_Date', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_expected_awarddate'; 
GO
exec sys.sp_addextendedproperty @name=N'FK To', @value=N'DimDate.PK_Date', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_tenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'FK To', @value=N'DimDate.PK_Date', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_default_tenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'FK To', @value=N'DimProject.PK_project', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_project'; 
GO
exec sys.sp_addextendedproperty @name=N'FK To', @value=N'DimDredgingCategory.PK_Dregingcategory', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_dredgingcategory'; 
GO
exec sys.sp_addextendedproperty @name=N'FK To', @value=N'DimProjectstatus.PK_projectstatus', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_projectstatus'; 
GO
exec sys.sp_addextendedproperty @name=N'FK To', @value=N'DimStage.FK_Stage', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_stage'; 
GO
exec sys.sp_addextendedproperty @name=N'FK To', @value=N'DimTendertype.PK_tendertype', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_tendertype'; 
GO
exec sys.sp_addextendedproperty @name=N'FK To', @value=N'DimContractValueClass.PK_contractvalue_class', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_contractvalue_class'; 
GO
exec sys.sp_addextendedproperty @name=N'FK To', @value=N'DimArea.PK_area', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_area'; 
GO
exec sys.sp_addextendedproperty @name=N'FK To', @value=N'DimSubArea.PK_subarea', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_subarea'; 
GO
exec sys.sp_addextendedproperty @name=N'FK To', @value=N'DimCountry.PK_country', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_country'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'pk_projects'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'FFFD461A-DD78-E511-8122-C4346BAC7E10', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'ak_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'20230526', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_expected_startdate_of_work'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'20230526', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_default_expected_startdate_of_work'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'20230526', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_expected_awarddate'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'20230526', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_tenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'20230526', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_default_tenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1,2,3', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1,2,3', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_dredgingcategory'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1,2,3', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_projectstatus'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1,2,3', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_stage'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1,2,3', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_tendertype'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1,2,3', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_contractvalue_class'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1,2,3', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_area'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1,2,3', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_subarea'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1,2,3', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_country'; 
GO
exec sys.sp_addextendedproperty @name=N'Example Values', @value=N'1', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'project_count'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'pk_projects'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'26-05-2023', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'26-05-2023', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'0/1', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'FFF57AF8-D10A-EA11-A811-000D3A2C5614', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'0xBF35F538E0E96618230E2FEA1CC000EA', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'dwh_hash'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'ak_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_expected_startdate_of_work'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_default_expected_startdate_of_work'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_expected_awarddate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_tenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_default_tenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_dredgingcategory'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_projectstatus'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_stage'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_tendertype'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_contractvalue_class'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_area'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_subarea'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_country'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'project_count'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'total_VO_share_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'total_contract_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'cashflow_D&I'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'total_overhead_expenses'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'total_gross_margin_D&I_PL_GO'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'potential_tender_volume'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'potential_award_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'potential_cashflow_D&I_PL_GO'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'potential_gross_margin_D&I_PL_GO'; 
GO
exec sys.sp_addextendedproperty @name=N'Source System', @value=N'DWH', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'default_VO_contract_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'ak_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_expected_startdate_of_work'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_default_expected_startdate_of_work'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_expected_awarddate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_tenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_default_tenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_dredgingcategory'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_projectstatus'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_stage'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_tendertype'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_contractvalue_class'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_area'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_subarea'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_country'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'total_VO_share_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'total_contract_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'cashflow_D&I'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'total_overhead_expenses'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'total_gross_margin_D&I_PL_GO'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'potential_tender_volume'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'potential_award_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'potential_cashflow_D&I_PL_GO'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'processed', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'potential_gross_margin_D&I_PL_GO'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Schema', @value=N'modelled', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'default_VO_contract_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'dwh_valid_from'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'dwh_valid_to'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'dwh_active'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'Derived from synapse pipeline', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'dwh_process_run_id'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'Derived in ETL', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'dwh_hash'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_project', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'ak_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_project', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_expected_startdate_of_work'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_project', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_default_expected_startdate_of_work'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_project', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_expected_awarddate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_project', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_tenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_project', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_default_tenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_project', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_project', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_dredgingcategory'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_project', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_projectstatus'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_project', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_stage'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_project', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_tendertype'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_projectfinancial', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_contractvalue_class'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_project', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_area'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_project', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_subarea'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_project', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_country'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_projectfinancial', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'total_VO_share_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_projectfinancial', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'total_contract_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_projectfinancial', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'cashflow_D&I'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_projectfinancial', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'total_overhead_expenses'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_projectfinancial', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'total_gross_margin_D&I_PL_GO'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_project/ dyn_projectfinancial', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'potential_tender_volume'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_project/ dyn_projectfinancial', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'potential_award_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_project/ dyn_projectfinancial', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'potential_cashflow_D&I_PL_GO'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'dyn_project/ dyn_projectfinancial', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'potential_gross_margin_D&I_PL_GO'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Table', @value=N'DimDredgingCategory', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'default_VO_contract_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'AK_project', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'ak_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'expectedstartofwork', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_expected_startdate_of_work'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'tenderdate/createdon', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_default_expected_startdate_of_work'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'awarddateexpected', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_expected_awarddate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'tenderdate', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_tenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'createdon', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_default_tenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'AK_project', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'dredgingcategory', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_dredgingcategory'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'statuscode', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_projectstatus'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'typetender/projectsstatus', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_stage'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'tendertype', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_tendertype'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'voshareineuro', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_contractvalue_class'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'areaid', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_area'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'subareaid', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_subarea'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'countryid', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_country'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'voshareineuro', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'total_VO_share_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'totalcontractvalueeuro', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'total_contract_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'cashflowdipleuro', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'cashflow_D&I'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'overheadexpenseseuro', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'total_overhead_expenses'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'voshareineuro/cashflowdipleuro', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'total_gross_margin_D&I_PL_GO'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'chanceofgoingahead_value/ total_VO_share_value/ default_VO_contract_value', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'potential_tender_volume'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'chanceofwinningcommercialposition_value / total_VO_share_value/ default_VO_contract_value/ chanceofwinningcommercialposition_value', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'potential_award_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'chanceofgoingahead_value/ cashflow_D&I', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'potential_cashflow_D&I_PL_GO'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'chanceofwinningcommercialposition_value / total_VO_share_value/ default_VO_contract_value/ chanceofwinningcommercialposition_value/ cashflowdipleuro', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'potential_gross_margin_D&I_PL_GO'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Field Name', @value=N'default_contract_value', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'default_VO_contract_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvachar(36)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'ak_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'date', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_expected_startdate_of_work'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'date', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_default_expected_startdate_of_work'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'date', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_expected_awarddate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'date', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_tenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'date', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_default_tenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvachar(36)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_project'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_dredgingcategory'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_projectstatus'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_stage'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(4000)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_tendertype'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_contractvalue_class'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_area'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_subarea'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'nvarchar(36)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_country'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'total_VO_share_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'total_contract_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'cashflow_D&I'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'total_overhead_expenses'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'total_gross_margin_D&I_PL_GO'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'potential_tender_volume'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'potential_award_value'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'potential_cashflow_D&I_PL_GO'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'decimal(18,0)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'potential_gross_margin_D&I_PL_GO'; 
GO
exec sys.sp_addextendedproperty @name=N'Source Datatype', @value=N'int', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'default_VO_contract_value'; 
GO
exec sys.sp_addextendedproperty @name=N'ETL Rules', @value=N'Connect to DimDate via source field. If expectedstartofwork is empty then FK_default_start_of_workdate is used.', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_expected_startdate_of_work'; 
GO
exec sys.sp_addextendedproperty @name=N'ETL Rules', @value=N'Connect to DimDate via source field + default_days_to_startdate_of_work (Via DimDredgingCategory). If tenderdate is empty then createdon is used.', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_default_expected_startdate_of_work'; 
GO
exec sys.sp_addextendedproperty @name=N'ETL Rules', @value=N'Connect to DimDate via source field. ', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_expected_awarddate'; 
GO
exec sys.sp_addextendedproperty @name=N'ETL Rules', @value=N'Connect to DimDate via source field. If tenderdate is empty then FK_default_tenderdate is used.', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_tenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'ETL Rules', @value=N'Connect to DimDate via source field + default_days_to_tenderdate (via DimDredgingCategory). ', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_default_tenderdate'; 
GO
exec sys.sp_addextendedproperty @name=N'ETL Rules', @value=N'Connect to DimProject via source field. ', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_project'; 
GO
exec sys.sp_addextendedproperty @name=N'ETL Rules', @value=N'Connect to DimDredgingcatagory via source field', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_dredgingcategory'; 
GO
exec sys.sp_addextendedproperty @name=N'ETL Rules', @value=N'connect vto DimProjectStatus via source field', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_projectstatus'; 
GO
exec sys.sp_addextendedproperty @name=N'ETL Rules', @value=N'connect to DimStage via statuscode_value and tendertype_value', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_stage'; 
GO
exec sys.sp_addextendedproperty @name=N'ETL Rules', @value=N'connect to DimTenderType via source field', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_tendertype'; 
GO
exec sys.sp_addextendedproperty @name=N'ETL Rules', @value=N'Connect to DimContractValueClass via source field (value between total_VO_share_from and total_VO_share_to)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_contractvalue_class'; 
GO
exec sys.sp_addextendedproperty @name=N'ETL Rules', @value=N'Connect to DimArea via source field. ', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_area'; 
GO
exec sys.sp_addextendedproperty @name=N'ETL Rules', @value=N'Connect to DimSubArea via source field. ', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_subarea'; 
GO
exec sys.sp_addextendedproperty @name=N'ETL Rules', @value=N'Connect to DimCountry via source field. ', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'fk_country'; 
GO
exec sys.sp_addextendedproperty @name=N'ETL Rules', @value=N'cashflowdipleuro + overheadexpenseseuro +  (voshareineuro * 0.09)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'total_gross_margin_D&I_PL_GO'; 
GO
exec sys.sp_addextendedproperty @name=N'ETL Rules', @value=N'isnull(% Chance go ahead, 0.5) * isnull(total_VO_share_value,default_VO_contract_value)', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'potential_tender_volume'; 
GO
exec sys.sp_addextendedproperty @name=N'ETL Rules', @value=N'% Winning chance * Potential_tender_volume', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'potential_award_value'; 
GO
exec sys.sp_addextendedproperty @name=N'ETL Rules', @value=N'% Chance go ahead * cashflow_D&I', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'potential_cashflow_D&I_PL_GO'; 
GO
exec sys.sp_addextendedproperty @name=N'ETL Rules', @value=N'Decide on the right rule: (Potential cashflow D&I * % Winning chance) + ((Potential tender volume_NL * % Winning chance)*0.08))  or (cashflowdipleuro + overheadexpenseseuro) * % Winning chance', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'potential_gross_margin_D&I_PL_GO'; 
GO
exec sys.sp_addextendedproperty @name=N'ETL Rules', @value=N'via dyn_project.dredgingcategory', @level0type=N'SCHEMA', @level0name=N'modelled', @level1type=N'TABLE', @level1name=N'FactProjects', @level2type=N'COLUMN', @level2name=N'default_VO_contract_value'; 
GO
GO
