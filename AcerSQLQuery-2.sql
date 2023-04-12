CREATE TABLE Sales (Country VARCHAR(50), Region VARCHAR(50), Sales INT);

INSERT INTO sales VALUES (N'Canada', N'Alberta', 100);
INSERT INTO sales VALUES (N'Canada', N'British Columbia', 200);
INSERT INTO sales VALUES (N'Canada', N'British Columbia', 300);
INSERT INTO sales VALUES (N'United States', N'Montana', 100);
INSERT INTO sales VALUES (N'United States', N'NY', 500);
INSERT INTO sales VALUES (N'United States', N'NY', 150);

select * from sales

select country, region, sum(sales) as SUM_sale
from sales
group by country, region

select title, max(salary) as max_salary
from current_titles = current_salaries
where current_titles.emp_no = current_salaries.emp_no
group by current_titles.title

select * from current_salaries, current_titles
where current_titles.emp_no = current_salaries.emp_no

select employees.emp.no, employees.first_name, employees.birth_date
current_titles.title, current_salaries.salary
* from employees, current_titles, current_salaries
select title, max(salary) as max_salary
from current_titles = current_salaries
where current_titles.emp_no = current_salaries.emp_no
group by current_titles.title as TMP
where employees.emp.no = current_titles.emp_no
and employees.emp.no = current_titles.emp_no
and current_titles.title = TMP.title
and current_salaries.salary = TMP.max_salaries

select employees.emp.no, employees.first_name, employees.birth_date
current_titles.title, current_salaries.salary
* from employees, current_titles, current_salaries
select title, max(salary) as max_salary
from current_titles = current_salaries
where employees.emp.no = current_titles.emp_no
and employees.emp.no = current_titles.emp_no
and current_titles.title = 'Engineer'
and current_salaries.salary = 
--Phòng ban & title
select dept_name ,title ,count (1) num_of_titles
from current_dept_emp
JOIN current_titles on current_dept_emp.emp_no = current_titles.emp_no
GROUP by dept_name, title
ORDER by dept_name, title

select title ,count (1) num_of_titles
from current_dept_emp
JOIN current_titles on current_dept_emp.emp_no = current_titles.emp_no
GROUP by title
ORDER by title
--
create function udf_GetSalaryLevel(@income INT)
returns nvarchar(10)
as
begin
--we write body here
declare @sal_level nvarchar (10)
IF (@income < 50000)
	set @sal_level = 'Low'
ELSE
	set @sal_level = 'High'
return @sal_level
end;

select current_salaries.emp_no, 
[dbo].[udf_GetSalaryLevel] (current_salaries)
AS [salary level]
from current_salaries

exec <name of that SP><phia sau la danh sach tham so>
---
CREATE TABLE users (Customers VARCHAR(50), UserID VARCHAR(50), DoB INT);
CREATE TABLE withdraw_ATM (Country VARCHAR(50), Region VARCHAR(50), Sales INT);

insert into UserTable values (1, 'john', '01/01/2012')

create procedure sp_withdraw @account int, @amount int
as
begin
--TODO HERE
begin transaction
declare @balance int
SET @balance =
(select balance from UserTable where UserID = @account)
IF (Balance > @amount)
Begin
	--insert into withdraw_atm
	--update balance in UserTable
end