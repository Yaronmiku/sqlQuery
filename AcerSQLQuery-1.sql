select id, total as 
datepart(QUARTER, invoiceDate) as [quarter]
from invoice
group by datepart(QUARTER, invoiceDate)

select DATEADD(WEEKDAY, YEAR, 1, getdate()))

//
SELECT *
from employeess
order by emp_no
offset 10 rows
fetch next 15 rows only

SELECT *
from employeess
where first_name like 'Do___'

SELECT *
from salaries join employees
on salaries.emp_no = employees.emp_no
---
SELECT *
from department join department
on department.id = department.emp_id

SELECT department.id as dept_id,
dep_name,
employees.id as emp.no
from departments right join employees
on department.id = department.emp_id
---code join 3 tables
select employees.', dept_emp.', departments.'
from_date, to _date
from employees 
join dept_emp on employees.emp_no = dept_emp.emp_no
join departments on dept_emp.emp_no = departments.dept_no

fullname, id, birthday of those managers + dept's name
order by dept_id

SELECT first_name +' '+ last_name as FullName.
employees.emp.no, employees.birth_date,
departmetns.*, dept_manager.*
FROM (employees join dept_manager
on employees.emp_no = dept_manager.emp_no )
join departments on
dept_manager.dept_no = departments.dept_no
----
select * 
from employees
join dept_emp on employees.emp_no - dept_emp.emp_no
where dept_emp.dept_no in(
SELECT employees.', dept_manager ' --Sub Query
	FROM dept_ manager
	JOIN employees on dept_manager.emp_no.employees.emp_no
	where gender.'F' AND to_Date>getdate()
)
order  by dept_no