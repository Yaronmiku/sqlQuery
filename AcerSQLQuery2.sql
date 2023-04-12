create table people_test7
(id int identity (10,5) primary key,
email varchar(50) unique,
fullname nvarchar(50) not null,
--OwO
balance decimal(10,2) default 0			check (balance>0),
age int check (age >0)
);

insert into people_test7 
values ('thao@gma', 'thao', null);

insert into people_test7 
values ('alah@gma', 'mohamma', 999.52, 10);

insert into people_test6 (email, fullname) 
values ('golbin@gma', 'Osborn');

insert into people_test6 (balance, fullname, email) 
values ('golbin@gma', 'Osborn', );

SET ANSI_WARNINGS ON;
insert into people_test2
values ('day nay no dai hon 10', 'thao', 1);