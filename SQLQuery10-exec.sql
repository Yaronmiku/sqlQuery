CREATE PROC usp_SelectEmployeesBySeniority(@minYearsAtWork int = 5)  AS
SELECT FirstName, LastName, HireDate,  DATEDIFF(Year, HireDate, GETDATE()) as Years
FROM Employees
WHERE DATEDIFF(Year, HireDate, GETDATE()) > @minYearsAtWork  ORDER BY HireDate
GO
Procedure Logic
EXEC usp_SelectEmployeesBySeniority 10
EXEC usp_SelectEmployeesBySeniority

DROP PROC usp_SelectEmployeesBySeniority

CREATE PROC usp_SelectEmployees
--EXECUTER PROCEDURES
CREATE PROC dbo

declare @ketQuaNhan int

exec usp_AddNumbers
@firstNumber = 2;
@secondNumber = 3;

declare @ketQuanhan int		exec usp_AddNumber 2, 3, @ketQuaNhan output		select @ketQuaNhan as KetQuaNhan

--Trigger công ty, ít 'người làm'