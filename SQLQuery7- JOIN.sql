SELECT employees.*, dept_emp.dept_no, dept_emp.from_date, dept_emp.to_date	FROM dept_emp
JOIN employees on dept_emp.emp_no = employees.emp_no

SELECT employees.emp_no, employees.first_name, employees.last_name,
departments.dept_name,
dept_emp.from_date, dept_emp.to_date	
FROM dept_emp
JOIN employees on dept_emp.emp_no = employees.emp_no
JOIN departments on departments.dept_no = dept_emp.dept_no

select employees.emp_no, employees.first_name, employees.last_name,
titles.*
from employees
join titles on employees.emp_no = titles.emp_no

select employees.emp_no, employees.first_name, employees.last_name,
titles.*
from employees
join titles on employees.emp_no = titles.emp_no
where employees.emp_no='49995'
--
select employees.*, salaries.salary
from employees
join salaries on salaries.emp_no = employees.emp_no
order by salaries.salary

select employees.emp_no, first_name, last_name, salary
FROM [employees] 
right join employees on salaries.emp_no = employees.emp_no
where to_date > GETDATE

create view current_salaries
as
select * from salaries	where to_date > GETDATE()

select * from current_salaries

select top (5) employees.*, current_salaries.salary
from employees
left join current_salaries 
on employees.emp_no = current_salaries.emp_no
order by salary desc

SELECT TOP (1000) [emp_no]
      ,[dept_no]
      ,[from_date]
      ,[to_date]
  FROM [employees].[dbo].[dept_manager]

create view current_dept_emp
as
select emp_no, dept_no from dept_emp where to_date > GETDATE()

select employees.first_name+' '+employees.last_name as [Full Name],
current_dept_emp.emp_no,
dept_manager.emp_no,
empA.first_name+' '+empA.last_name as [Dept's Boss's Name]
* from employees
join current_dept_emp on employees.emp_no = current_dept_emp.emp_no
join dept_manager on dept_manager.dept_no = current_dept_emp.dept_no
join employees as empA on dept_manager.emp_no = empA.emp_no
where dept_manager.to_date > GETDATE()