Select ID, DoB from Customers --Show 1 phần database
Select top (2) from Customers

create table [orders]
(OrderID int primary key,
Balance Decimal(10,2))

alter table [orders]
add constraint Balance check(Balance>0)

create table [ordersA]
(
OrderID int primary key,
Balance Decimal(10,2),
Quantity int check (Quantity>0),
Email varchar(30) unique
)

alter table [ordersA]
drop column Email
drop constraint [PK__ordersA__C3905BAF22260E9B]

alter table ordersA
add OrderDate Date not null

alter table ordersA
add constraint PK_double primary key(OrderID, OrderDate)

delete from [Customers]

drop table orders, ordersA

create table mountains
(Id int primary key identity,
[Name] nvarchar (50)
)
create table peaks
(Id int primary key identity,
MountainId int 
Foreign key references mountains(Id))

insert into mountains
values ('NHS'),('Thanh Son'),('Tri minh'),('Minh Tri')
insert into peaks
values ('4'),('4'),('4')

create table students
(Id int primary key identity,
[Name] nvarchar (50),
DoB Data,
Faculty nvarchar (50))

create table course
(Id int primary key identity,
[Name] nvarchar (50),
Credits int,
[Desc] text)
--This is for lazy boys .Lười biến= sạch sẽ
create table marks
(Id int primary key identity,
StudentId int foreign key references Students(Id),
CourseId int foreign key references Course(Id),
Marks float 
--This is for Pro
create table marksA
(Id int identity,
StudentId int,
CourseId int,
Marks float,
primary key (Id),
constraint FK_l1 foreign key (StudentId) references Students(Id),
constraint FK_l2 foreign key (CourseId) references Courses(Id),
)
--1:1 relationship
create table citizens
(NationalId char (12) primary key,
[Full Name] nvarchar(30),
DoB date)

create table MarriagesRecords
(
RegisterId char(12) primary key,
SpouseId char(12) unique,
constraint FK_marriage Foreign key (RegisterId) references Citizens(NationalId),
constraint FK_marr2 Foreign key (SpouseId) references Citizens(NationalId)
)

insert into Citizens values 
('123456789012','Thao','1999-01-01'),
('123456789013','Minh','1999-01-01'),
('123456789014','Cafe','1999-01-01'),
('123456789015','Dao','1999-01-01')

insert into MarriagesRecords values
('123456789012','123456789014')

insert into MarriagesRecords values
('123456789012','123456789013')

insert into MarriagesRecords values
('123456789013','123456789014')