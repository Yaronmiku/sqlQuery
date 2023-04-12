select 1+1;

create table customer
(Id int,
firstname varchar(20),
city varchar(20))

drop database lesson1;

create database day1;
go;
use day1

insert into Customers
values ('Son','2000-01-01','2000-12-01')

insert into Customers (CreatedDate, DoB, FirstName)
values ('2022-05-24','2002-12-01','Loc')

update Customer2
set DoB='2003-02-28'
where Id= 3;

/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP * FROM [day1].[dbo].[Invoice]

Create database Invoice;
CREATE TABLE Invoice (
    InvoiceId int primary key identity, 
	--identity tự động tăng dần
    CustomerId int,
    InvoiceDate date,
	BillingAddress nvarchar(60) not null,
	BillingCity nvarchar(30),
)

Insert into Invoice values (1, '2022-05-23',N'10 Trần Phú', N'Đà Nẵng')

Alter table Invoice
ADD Total float 

Alter table Invoice
Alter column BillingAddress nvarchar(100)

/****** Script for SelectTopNRows command from SSMS  ******/
SELECT * FROM [day1].[dbo].[Invoice]
Alter Table Customers ADD CONSTRAINT uq_NationalId
Unique (NationalId)
--Unique được NULL, Primary key không được NULL