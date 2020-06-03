/*
 Pre-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be executed before the build script.	
 Use SQLCMD syntax to include a file in the pre-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the pre-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
IF object_id ('dbo.temp_simple_example','U') is not null DROP TABLE [dbo].[temp_simple_example];
CREATE TABLE [dbo].[temp_simple_example](
[c1] int,
[c2] int
) WITH (CLUSTERED COLUMNSTORE INDEX, DISTRIBUTION = ROUND_ROBIN);;
INSERT INTO [dbo].[temp_simple_example] (c1, c2)
SELECT [c1], [c2]
FROM [dbo].[simple_example];