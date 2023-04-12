use employees
go

--SELECT CONCAT(first_name, ' ', last_name)
--    AS [Fullname blah]
--  FROM employees


--select SUBSTRING('Soft School', 5, 6) as 'yeah'
--go

--select REPLACE('SOFT School soft', 'soft', 'Hard')
--go

--select datalength('   holy quote            ')
--go

--select left('ola_alo', 3)
--select right('ola_alo', 3)

--select substring('ola_alo', len('ola_alo')-3+1, 3)

-- upper or lower
--select UPPER('holA')
--select LOWER('holAA')

---- reverse
--select reverse('holAA')

---- replicate
--select replicate('holAA ', 5)

-- charindex, stuff

--select CHARINDEX('man', 'really man')

--select stuff('really man', 8, 0, 'cool ')

--select id, H, W, H*W as Area, (H+W)*2 as [total surrounding]
--from Geo

--go
--select PI() 
----,ABS(-1000), sqrt(16), SQUARE(5)
--go

--select x1, y1, x2, y2, sqrt(square(x1-x2)+square(y1-y2)) as lengths
--from Coordinates
--go

---- power, round, floor, ceiling
--select POWER(3,2), round(PI(), 5), floor(1.2), CEILING(1.2)
--go

--select ceiling(ceiling(350.0/24)/3) as [number of pallets needed]
--select ceiling(ceiling(350/24)/3) as [number of pallets needed]
--select cast(350 as float)/4

--select sign(-100), Floor(RAND()*10000)
--select getdate(), datepart(dayofyear,'1995-07-01')

--select datediff(YYYY, '1995-02-02', getdate()) as my_age, 
--DATENAME(month, getdate()) AS thang_cua_name, 
--dateadd(year, -1, getdate()) AS ngay_gio_cua_ai_do

--select *, ISNULL(blah, 'empty') AS [dummy col]
--from Coordinates

--select convert(nvarchar, 15) + ' nam' as tho,
--convert(int, '100')+15 as real_number
SELECT emp_no, First_Name, Last_Name
FROM Employees
go

SELECT emp_no, First_Name, Last_Name
FROM Employees
ORDER BY emp_no
OFFSET 10 ROWS
FETCH NEXT 5 ROWS ONLY
go

SELECT emp_no, First_Name, Last_Name
  FROM Employees
 WHERE First_Name LIKE 'Rosl[^h]'

SELECT emp_no, First_Name, Last_Name
  FROM Employees
 WHERE First_Name LIKE '_ng[e,u]_'
 
SELECT emp_no, First_Name
  FROM Employees
 WHERE First_Name LIKE '%max!%' ESCAPE '!'
