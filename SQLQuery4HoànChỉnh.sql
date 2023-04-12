create table Customer (cId int primary key indentity, cName nvarchar(30), cAddress nvarchar (50))--Primary key tự động tăng dần
create table Orders (oId int primary key indentity, cId int foreign key references customer (cId), oDate date) --foreign key chỏ tới Khóa Chính
create table Products (pId int primary key indentity, pName nvarchar(30), pPrice int) --oId= orderId, pId= productId
create table OrderDetail (oId int foreign key references Orders(oId), pId int foreign key references Products(pId), quantity int, primary key (oId, pId))
insert into Customer values
(N'Chiến',N'1 Bạch Đằng'),
(N'Trí',N'Bạch Đằng'),
(N'Long',N'Bạch Đằng'),
(N'Thành Thái',N'Huế'),
(N'Trung Nguyên',N'Dak Lak'),
insert into Products values (N'',)
(N'Bún bò',30000)
(N'Heo nướng', 200000)
(N'Coca ngọt',10000)
(N'Nước suối',5000)
(N'Bánh mì ngọt chà bông',12000)
(N'Trà Xanh Tea+',12000)
(N'Bún đậu mắm tôm',50000)
--??
insert into Orders values (1, GETDATE())
insert into Orders values (4, '2002-06-01')
insert into OrderDetail values (2, 7, 2),(2, 4, 1),(2, 2, 1)