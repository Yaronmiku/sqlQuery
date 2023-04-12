select * from departments
select * from employees		where last_name='Facello'
select employees.emp_no, first_name, last_name from employees
select * from employees		where last_name='Facello' and gender='F'
select * from employees		where (last_name='Facello' or last_name='Bambord')
select * from employees		where (last_name='Facello' and hire_date > '1990')
select emp_no, birth_date, gender, first_name +' ' + last_name as [Full name]	 from employees
select emp_no, birth_date as [Date of Birth], gender, first_name +' ' + last_name as [Full name]	 from employees
select distinct last_name from employees
select distinct title from [employees].[dbo].[titles]	--Tìm tất cả Title không lặp
select distinct title from [employees].[dbo].[titles]	WHERE from_date>='1988' AND to_date<'1999'
--Bài tập
select * from [employees].[dbo].[salaries]	WHERE salary between 75000 and 85000
select * from employees		where not (last_name != 'Facello' and gender='F')
select * from employees		where last_name = 'Facello' OR last_name = 'Simel' OR last_name = 'Bamford'
select * from employees		where last_name IN ('Facello''Simel','Bamford')
select * from employees		where last_name NOT IN ('Facello''Simel','Bamford')

where Dob is null	Insert into Citizens([NationalId],[Full Name]) values('1234567989123','khanh')
select * from salaries		where emp_no in ('10001', '10002')
select * from salaries		where to_date > GETDATE() order by salary desc	--getdate () is current date and time

create table project
(id int identity primary key.
ProjectNamee nvarchar(100),
StartedDate date,
FinishedDate date)

insert into project values ('Customer Service restructuring', GETDATE(), '9999-01-01')
delete from [project] where [ID=1] --???

insert into project select departments.dept_name + 'restructuring', GETDATE(), '9999-01-01' from departments
--Update
update Citizens		SET DoB= '2000-01-01' WHERE NationalID > '123456789011'
create table SUMTable (A1 int, A2 int, total int)
insert into SUMTable (A1, A2) values (1, 2), (1, 3), (4, 5)
update SUMTable set Total = A1 + A2
update SUMTable set Total = 0 where A1 > A2