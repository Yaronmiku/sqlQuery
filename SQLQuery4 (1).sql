
--select top 50 Employees.FirstName, Employees.LastName, Towns.Name, Addresses.AddressText
--from Employees 
--join Addresses 
--on Employees.AddressID = Addresses.AddressID
--join Towns 
--on Addresses.TownID = Towns.TownID
--order by FirstName, LastName

--select Employees.EmployeeID, Employees.FirstName, Employees.LastName, Departments.Name as DepartmentName
--from Employees join Departments on Employees.DepartmentID = Departments.DepartmentID
--where Departments.Name = 'Sales'
--order by EmployeeID

--select Employees.FirstName, Employees.LastName, Departments.Name as DeptName
--from Employees join Departments on Employees.DepartmentID = Departments.DepartmentID
--where Departments.Name in ('Sales','Finance')
--and HireDate > '1999-01-01'
--order by HireDate

--select top 50 Employees.EmployeeID, Employees.FirstName+' '+Employees.LastName as [Emp Fullname], 
--NewEmployees.FirstName +' '+NewEmployees.LastName as [Boss Name],
--Departments.Name as DeptName
--from Employees 
--join Departments 
--on Employees.DepartmentID = Departments.DepartmentID
--join Employees as NewEmployees
--on Employees.ManagerID = NewEmployees.EmployeeID
--order by EmployeeID

--select min(temp.sal)
--from (
--select AVG(Employees.Salary) AS sal
--from Employees
--group by Employees.DepartmentID
--) as temp

select * 
from Employees
where Employees.DepartmentID=1
intersect
select * 
from Employees
where Employees.ManagerID=12