/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [EmployeesID]
      ,[MountainName]
      ,[Dob]
      ,[Phone]
  FROM [day1].[dbo].[employees]

SELECT count(1) as [Total employees]
	FROM [day1].[dbo].[employees]
SELECT distint(gender)
	FROM [day1].[dbo].[employees]
SELECT count(distinct(first_name)) as number_of_diff_names
	FROM [day1].[dbo].[employees]
SELECT count(distinct(birth_date)) as number_of_diff_names
	FROM [day1].[dbo].[employees]

SELECT *
	FROM [employees].[dbo].[employees]
	where 

SELECT *
	FROM [employees].[dbo].[employees]
	WHERE gender = 'M' AND birth_date > '1965-01-01';
	--300,024 nhanvien. 1275 cai ten, 4750

SELECT count(distinct(hire_date))
  FROM [employees].[dbo].[employees]
  WHERE (hire_date BETWEEN '1988-01-01' AND '1990-12-31') AND fender= 'F';
	-- ngay onboarding, gom, thue nhan vien theo dot.
	-- 108,000 nhan vien, thi duoc tuyen trong 1461 ngay.
	-- 43,415 nhan vien, thi duoc tuyen trong 1461 ngay trong cung khoang thoi gian
SELECT *
  FROM [employees].[dbo].[employees]
  ORDER BY hire_date desc;
  --Mac dich no la sap xep tang dan!, ascending default
bảng dept_manager
SELECT *
  FROM [employees].[dbo].[dept_manager]
  where dept_no IN ('d001', 'd004')
SELECT * FROM dept_manager
  where dept_no in
	(SELECT distinct (emp_no)
		FROM [employees].[dbo].[employees]
		WHERE gender= 'F'
		ORDER BY first_name
SELECT * FROM [employees].[dbo].[dept_manager]
	FROM [employees].[dbo].[employees]
	WHERE gender= 'F'
	ORDER BY first_name
--CURRENT DATE
Create view employee_short_view
SELECT*FROM
(
	SELECT employees.p_no, dept_emp.dept_no,
	datediff(year, dept_em.from_date, dept_emp.to_date) AS employed_duration
	FROM [employees].[dbo].[employees]
	join dept_emp 
	on employees.emp_no = dept_emp.emp_no;
) AS C
WHERE C.employed_duration<30;

select datediff(YEAR, '2011-01-01', '2012-01-01')
--Tim MIN(current_date, dept_emp.to_date)
1900 1989
1991 1989
1992 1999
(to_date)
MIN(to_date) => 1900 --...........

drop view employees_extened_view;
drop view  -> no lost data! (since its virtual, based only query!)

SELECT
TOP (15)
[emp_no]
	,[salary]
	,[from_date]
	,[to_date]
FROM [employees].[dbo].[salaries]
order by salary desc;
-----
create table projects
(id int identity primary key,
proj_name varchar(40),
[start_date] date,
)

insert into project(proj_name, start_date)
select departments,dept_name + 'restructuring', GETDATE()
from department;

select CustomerID,