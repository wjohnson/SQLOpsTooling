# SQL Ops for Azure SQL DB

SQL Server Data Tools (SSDT) is the best experience for managing Azure SQL Databases and Azure Synapse SQL Pools.

## DevOps

* Using Azure DevOps, you would build a Dacpac through the DevOps service.
* Leverage the example pipeline `/devops/azuresql-azure-pipelines.yml`.
* You'll need the following variables:
  * azureSubscription: The name of your Azure subscription and subscription id (e.g. `<Subscription Name>(<subscription id>)`).  This wil have to be authorized one time for each pipeline.
  * databaseName: The name of the database you'll be deploying to.
  * serverName: The server name of your Azure SQL or Synapse resource (e.g. `<unique-id>.database.windows.net`).
  * sqluser: The SQL user with permissions to make changes to the database.
  * sqlpassword: The password to the SQL user.

## Visual Studio SSDT

### Refactor > Rename

![SSDT Refactor Column](./img/ssdt_refactor_column.jpg)

* In SSDT, you are able to refactor by right-clicking on a column name (in the T-SQL editor) and it will create a refactor log and makes changes to all references of the column.
* In addition, it will provide a preview of changes for any other stored procedures or references.

![SSDT Refactor Preview](./img/ssdt_refactor_preview.jpg)

* SSDT does not support this feature when targeting Azure SQL Data Warehouse / Azure Synapse SQL Pools.

### Build a Dacpac

![SSDT Build Dacpac](./img/ssdt_build.jpg)

* In SSDT, you can build a Dacpac based off of an existing database or from SQL files.
* From the project, you can right-click and select build or re-build.
  * Re-build seems to be more stable and will attempt to analyze all files.
  * Build will attempt to analyze only recently changed files.
  * Both will generate a dacpac file in `bin/Debug/`.

### Schema Compare

* You can compare your local SQL files against a Dacpac or an existing database.
* It will then provide you with:
  * A visual display of changes necessary to get the source to match the target.
  * The ability to produce a script of changes.
