select count(1)
from employees
where hire_date >= '1990-01-01' and hire_date <=

DBCC FREEPROCCAHE; --Xoá acche
SELECT count(1) from [employees].[dbo].[employees]
where hire_date between '1990-01-01' and '1991-02-02'

create index index_on_hiredate

SELECT count(1) from [employees].[dbo].[employees]
where hire_date = '1990-01-01'

select * from [dbo].[current_dept_emp] join  [dbo].[current_salaries] on [current_dept_emp].emp_no = [current_salaries].emp_no
group by dept_no
 
 select [current_dept_emp].emp_no, dept_no, salary
 
 CREATE FUNCTION udf_ProjecctDurationWeeks (@StartDate
 DATETIME, @EndDate DATATIME)
 RETURNS INT
 AS
 BEGIN
	DECLARE @ projectWeeks INT;
	IF(@EndDate IS NULL)
	BEGIN
		SET @EndDate =GETDATE()
	END
	SET 

select [dbo].[udf_ProjectDurationWeeks]('1995-01-01', '2003-07-07')

select emp_no, [dbo].[ufn_GetSalaryLevel](salary), from_date
from current_salaries

select emp_no, salary. ufn_GetSalaryLevel(salary) as salary_level, from_date
from current_salaries