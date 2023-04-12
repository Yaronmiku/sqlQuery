use day3_1

drop table product
drop table category


create table category(
catID int primary key,
catName varchar(10))

create table product(
prodId int primary key,
prodName varchar(50),
prodPrice float,
catId int foreign key references category(catId) on delete cascade on update cascade
)

insert category
values (1, 'tv')

insert category
values (5, 'ampliance')

insert product
values (1, 'LG 101', 100, 1)

insert product
values (2, 'Rice cooker', 100, 5)

--delete from product where catID=1
delete from category where catID=1
delete from category where catID=5

UPDATE product
SET catId=1
WHERE prodId=2