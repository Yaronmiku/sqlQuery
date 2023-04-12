alter table people_test7
add salary decimal(6,1);

alter table people_test7
Drop collumn salary

insert into people_test
values ('Trung', NULL, NULL);

alter table [User] --Cái bảng thầy dùng table tên "User"
alter column SurName varchar(40);
go

alter table [User1]
add constraint PK_User1 --Ràng Buộc
primary key (UserID);
go;

alter table [User7]
add constraint MininumBalance --Của cột Balance
check ([Balance] >= 100.0) --NULL vẫn thoả mãn lớn hơn 100

Insert User7
values
('Phong', 'Mai', '2000-01-01', 'dinhphong@gmail.com', 99);

alter table User7
drop constraint MinimumBalance
go

alter table User7
alter column Balance
drop default;

truncate table User7; --Mất dữ liệu ,không mất cấu trúc