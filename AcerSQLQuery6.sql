/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [ID]
      ,[NameProject]
      ,[Fund]
      ,[StartDate]
  FROM [day1].[dbo].[projects]

  SELECT * FROM [day1].[dbo].[projects]
  go;

  SELECT * FROM [day1].[dbo].[projects]
  where FUND >= 7500;

   SELECT * FROM [day1].[dbo].[projects]
  where 
  StartDate > '2010-01-01'
  AND
  FUND < 8000;

   SELECT * FROM [day1].[dbo].[projects]
  where 
  StartDate > '2010-01-01'
  OR
  FUND < 8000;

  update projects
  set FUND = 1500
	where id=3;

update projects
  set FUND = FUND + 1000
	where StartDate >= '2010-01-01'

delete Projects 
where StartDate > '2013-01-01'