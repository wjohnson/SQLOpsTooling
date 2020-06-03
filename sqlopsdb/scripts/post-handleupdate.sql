BEGIN TRY  
       BEGIN TRAN
       PRINT N'Updating Simple Example with data'
        UPDATE [dbo].[simple_example]
        SET [c3] = [sourceTable].[c2]
        FROM [dbo].[temp_simple_example] as [sourceTable]
        WHERE [dbo].[simple_example].[c1] = [sourceTable].[c1];
        
        COMMIT TRAN;
		DROP TABLE [dbo].[temp_simple_example];
END TRY 
BEGIN CATCH 
        PRINT N'FAILED TO UPDATE SIMPLE_EXAMPLE'
       ROLLBACK TRAN  
END CATCH 