select * from current_salaries

select * from current_salaries join current_dept_emp on current_dept_emp.emp_no = current_salaries.emp_no
order by dept_no 

select dept_no, max(salary)
select * from current_salaries join current_dept_emp on current_dept_emp.emp_no = current_salaries.emp_no
order by dept_no 

select dept_no, SUM(CAST(salary AS bigint)) as total
from current_salaries join current_dept_emp on current_dept_emp.emp_no = current_salaries.emp_no
group by dept_no	order by total desc 

select * from current_salaries join current_dept_emp on current_dept_emp.emp_no = current_salaries.emp_no

select dept_no, SUM(CAST(salary AS bigint)) as total
from current_salaries join current_dept_emp on current_dept_emp.emp_no = current_salaries.emp_no
group by dept_no	order by total desc		having total> 2000000000

select dept_no, SUM(CAST(salary AS bigint)) as total
from current_salaries join current_dept_emp on current_dept_emp.emp_no = current_salaries.emp_no
group by dept_no	order by total desc		having SUM(CAST(salary AS bigint))> 2000000000