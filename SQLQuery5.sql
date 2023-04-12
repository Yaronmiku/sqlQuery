select 'A' +' '+'B';
select employees.first_name+' '+employees.last_name as [full name]		 from employees --Nối chuỗi
select CONCAT(first_name,' ',last_name) as [full name]		from  employees
select substring('day la moi chuoi ki tu dai', 5, 6)
select replace('day la mot cau noi gido','gido','hay') --=> day la mot cau noi hay
update [project] select replace(ProjectName, 'restructuring', 'proj')		from[project]
select ltrim('	abc	')
select len('thanh lam')
select len(first_name)		from employees
select len(N'Thảo')
select datalength(N'Thảo') --8 bytes
select datalength(Thao) --Only 4 bytes

select left('gcd1999' ,3) as department
select left('01234567890123456' ,6) +'********'

select LOWER('Xuan tRuOng'), UPPER('Xuan tRuOng'), reverse('Xuan tRuOng')	-- gnOuRt nauX
select CHARINDEX('gido','cau ma co chu gido haha', 1)	-- 15
select CHARINDEX('gido','cau ma co chu gido haha gido', 16)		-- 25
select stuff('cau se bi thi nghiem', 4, 0, 'ABC') -- cauABC se bi thi nghiem
select sqrt(12*12);
select sqrt(columnA*columnB+columnC*columnD);	from Table

create table lines(id int identity,x1 float y1 float	 x2 float y2 float)
select sqrt(square(x1-x2)+square(y1-y2)) as segment_length	from lines
select power(5,3)-- 125
select round(1.33333333, 2)

select Rand()
select Rand(1)
select Round(Rand()*100,0)

select DATEPART(week, '2022-06-06')
select DATEDIFF(day, '2021-04-30', getdate())	--402
select DATEDIFF(day, '2022-09-19', getdate())	--		-105
select DATENAME(dayofyear, GETDATE())	--157
select DATENAME(month, GETDATE())	--June
select dateadd(year,1,getdate())	--2023-06-06 16:36:25.443
select datename(WEEKDAY,getdate())	--Monday
select datename(WEEKDAY, DateADD(day,100,getdate())
select dateadd(day, -10, getdate())		--2022-05-27 16:46:32.010
select [FULL Name]		from Citizens
select * from (5) employees order by birth_date		offset 5 rows	fetch next 5 rows only --5 người kế tiếp của người cuối

select * from employees where last_name like 'Do%'
select * from employees where last_name like 'Do%'