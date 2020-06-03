# SQL Ops for Azure Synapse Analytics SQL Pools

The best experience is with [SSDT](./SqlOps_SSDT.md) and follow the same process but there are a handful of features that aren't at the same level for Synapse SQL Pools as a regular Azure SQL db.

# DevOps

* Using Azure DevOps, you would build a Dacpac through the DevOps service.
* Next you deploy via a DevOps Pipeline using Environments.
* [Install the Azure SQL DW Deployment task](https://marketplace.visualstudio.com/items?itemName=ms-sql-dw.SQLDWDeployment) from the DevOps marketplace.
* Leverage the example pipeline `/devops/synapse-azure-pipelines.yml`.

## Visual Studio SSDT Features Not Available for Synapse SQL Pools

### Refactor > Rename

* In SSDT, you are able to refactor by right-clicking on a column name (in the T-SQL editor) and it will create a refactor log and makes changes to all references of the column.
* SSDT does not support this feature when targeting Azure SQL Data Warehouse / Azure Synapse SQL Pools.

## References

* [Official Docs for Synapse CI/CD](https://docs.microsoft.com/en-us/azure/synapse-analytics/sql-data-warehouse/sql-data-warehouse-continuous-integration-and-deployment)
