CREATE FUNCTION udf_DiffWeek (@StartDate DATETIME, @EndDate DATETIME)
RETURNS INT
AS
BEGIN
  DECLARE @projectWeeks INT;
  IF(@EndDate IS NULL)
  BEGIN
    SET @EndDate = GETDATE()
  END
  SET @projectWeeks = DATEDIFF(WEEK, @StartDate, @EndDate)
  RETURN @projectWeeks;
END
go

CREATE FUNCTION ufn_GetSalaryLevel(@salary INT)
RETURNS NVARCHAR(10)
AS
BEGIN
DECLARE @salaryLevel VARCHAR(10)
IF (@salary < 30000)
  SET @salaryLevel = 'Low'
ELSE IF(@salary >= 30000 AND @salary <= 50000)
  SET @salaryLevel = 'Average'
ELSE
  SET @salaryLevel = 'High'
RETURN @salaryLevel
END;
go

CREATE PROC dbo.usp_SelectEmployeesBySeniority 
AS
  SELECT * 
  FROM Employees
  WHERE DATEDIFF(Year, HireDate, GETDATE()) > 5
GO

EXEC usp_SelectEmployeesBySeniority

drop proc dbo.usp_SelectEmployeesBySeniority
go

CREATE PROC usp_SelectEmployeesBySeniority(@minYearsAtWork int = 5)
AS
  SELECT FirstName, LastName, HireDate,
         DATEDIFF(Year, HireDate, GETDATE()) as Years
    FROM Employees
   WHERE DATEDIFF(Year, HireDate, GETDATE()) > @minYearsAtWork
   ORDER BY HireDate
GO

EXEC usp_SelectEmployeesBySeniority 10
go
EXEC usp_SelectEmployeesBySeniority
go

CREATE PROCEDURE sp_AssignProject (@EmployeeID INT, @ProjectID INT)
AS
BEGIN
DECLARE @maxEmployeeProjectsCount INT = 3
DECLARE @employeeProjectsCount INT
SET @employeeProjectsCount = (SELECT COUNT(*) 
   FROM [dbo].[EmployeesProjects] AS ep
   WHERE ep.EmployeeId = @EmployeeID)
	
	BEGIN TRAN
	INSERT INTO [dbo].[EmployeesProjects]  (EmployeeID, ProjectID)VALUES (@EmployeeID, @ProjectID)

	IF(@employeeProjectsCount >= @maxEmployeeProjectsCount)
	BEGIN
	  RAISERROR('The employee has too many projects!', 16, 1)
	  ROLLBACK
	END
	ELSE
	   COMMIT
END

exec sp_AssignProject 15, 15

select count(1) from EmployeesProjects where EmployeeID=62
go

CREATE TRIGGER tr_TownsInsert ON Towns FOR Insert 
AS
  IF (EXISTS(
        SELECT * FROM inserted
        WHERE Name IS NULL OR LEN(Name) = 0))
  BEGIN
    RAISERROR('Town name cannot be empty.', 16, 1)
    ROLLBACK
    RETURN
  END
go

drop trigger tr_TownsUpdate

UPDATE Towns SET Name='' WHERE TownId=1

insert into Towns 
values ('abcd'), ('');
go

CREATE TRIGGER tr_TownsInsertBad ON Towns FOR Insert
AS
  IF (EXISTS(
        SELECT * FROM inserted
        WHERE Name IS NULL OR LEN(Name) = 0 or Name LIKE 'Hell%'))
  BEGIN
    RAISERROR('Town name cannot be empty.', 16, 1)
    ROLLBACK
    RETURN
  END
go

drop trigger tr_TownsInsertBad

insert into Towns 
values ('abcd'), ('Hella'), ('hahaha'), ('abcdef');

delete from Towns
where TownID %2=0

select * from inserted