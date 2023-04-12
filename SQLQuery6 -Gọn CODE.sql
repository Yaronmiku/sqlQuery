--Rườm Rà
select sum(salary) as sum_of_dept from TheTable
where Dept='DB'		UNION
select sum(salary) as sum_of_dept from TheTable
where Dept='App'	UNION
select sum(salary) as sum_of_dept from TheTable
where Dept='Soft'	UNION
select distinct(dept) from TheTable
--Gọn
Select dept, sum(salary) as sum_of_dept	from TheTable	group by dept
select distinct(dept)	from TheTable
Select dept, sum(salary)	from TheTable

Select dept, sum(salary) as sum_of_dept	from TheTable	group by dept	order sum_of_salary desc
select distinct(dept)	from TheTable
Select distinct(salary)	from TheTable
--
Select dept, count(1) from TheTable	group by dept
--CODE Bài Tập Employees
Select top(1) last_name, count(1) as num_emp from Employees 
group by last_name order by num_emp desc  --Top 1 có num_emp cao nhất

Select --top(1) 
emp_no, max(salary) as max_salary
from salaries group by emp_no order by max_salary desc
--Tính mức độ nhảy vọt lương cao nhất
select --top(1)
emp_no, 
max(salary) as max_salary,		min (salary) as min_salary, 
sum (salary) as total_income,	count(1) as num_salary_changes,
max(salary)- min(salary) as salary_gap
from salaries group by emp_no order by salary_gap desc
--Code https://docs.microsoft.com/en-us/sql/t-sql/queries/select-group-by-transact-sql?view=sql-server-ver16
CREATE TABLE Sales ( Country VARCHAR(50), Region VARCHAR(50), Sales INT );
INSERT INTO sales VALUES (N'Canada', N'Alberta', 100);
INSERT INTO sales VALUES (N'Canada', N'British Columbia', 200);
INSERT INTO sales VALUES (N'Canada', N'British Columbia', 300);
INSERT INTO sales VALUES (N'United States', N'Montana', 100);
INSERT INTO sales VALUES (N'United States', N'Cali', 500);\
INSERT INTO sales VALUES (N'United States', N'Montana', 50);

select country, region, sum(Sales)	from sales
group by country, region