# SQL Ops for Azure Synapse Analytics SQL Pools

The best experience is with [SSDT](./SqlOps_SSDT.md) and follow the same process but there are a handful of features that aren't at the same level for Synapse SQL Pools as a regular Azure SQL db.

# DevOps

* Using Azure DevOps, you would build a Dacpac through the DevOps service.
* Next you deploy via a DevOps Pipeline using Environments.
* [Install the Azure SQL DW Deployment task](https://marketplace.visualstudio.com/items?itemName=ms-sql-dw.SQLDWDeployment) from the DevOps marketplace.
* Leverage the example pipeline `/devops/synapse-azure-pipelines.yml`.
* You'll need the following variables:
  * azureSubscription: The name of your Azure subscription and subscription id (e.g. `<Subscription Name>(<subscription id>)`).  This wil have to be authorized one time for each pipeline.
  * dataWarehouseName: The name of the data warehouse / database you'll be deploying to.
  * serverName: The server name of your Azure SQL or Synapse resource (e.g. `<unique-id>.database.windows.net`).
  * sqluser: The SQL user with permissions to make changes to the database.
  * sqlpassword: The password to the SQL user.

## Visual Studio SSDT Features Not Available for Synapse SQL Pools

### Refactor > Rename

* In SSDT, you are able to refactor by right-clicking on a column name (in the T-SQL editor) and it will create a refactor log and makes changes to all references of the column.
* SSDT does not support this feature when targeting Azure SQL Data Warehouse / Azure Synapse SQL Pools.

## References

* [Official Docs for Synapse CI/CD](https://docs.microsoft.com/en-us/azure/synapse-analytics/sql-data-warehouse/sql-data-warehouse-continuous-integration-and-deployment)
