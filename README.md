# cmp-data-warehouse

This repository contains the relevant code to configure and provision the Compass data warehouse.
Please review the development strategy document for detailed information on how we develop solutions within our data platform.

## Database projects
- The root folder is set to /database-project
- The development of the database projects takes place on the development environment. 
- All environments are provisioned via the CD workflow.

## Synapse workspace
- The development Synapse workspace is connected to this Repository
- The root folder is set to /synapse-workspace
- Acceptance and production are provisioned via the CD workflow.

## CI/CD Workflow
The following branching stratagy is being used:
- Custom code / changes via the UI are pushed to a feature/* branch 
- Development environment is connected with the branch: development
- Acceptance environment is connected with the branch: uat
- Production environment is connected with the branch: main
