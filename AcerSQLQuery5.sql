USE [day1]
GO

INSERT INTO [dbo].[Projects]
           ([NameProject]
           ,[FUND]
           ,[StartDate])
     VALUES
           (<NameProject, nvarchar(50),>
           ,<FUND, int,>
           ,<StartDate, date,>)
GO