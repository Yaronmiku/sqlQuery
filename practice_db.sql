create database day7_practice
go

use day7_practice
go

create table customer(
	customer_id int primary key,
	cust_name	nvarchar(50),
	city	nvarchar(30),
	grade	int,
	salesman_id	int
)
go

create table orders(
	ord_no int primary key,
	purch_amt float,
	ord_date	date,
	customer_id	int,
	salesman_id	int
)
go

insert into customer values
(3002,'NickRimando','NewYork',100,5001),
(3007,'BradDavis','NewYork',200,5001),
(3005,'GrahamZusi','California',200,5002),
(3008,'JulianGreen','London',300,5002),
(3004,'FabianJohnson','Paris',300,5006),
(3009,'GeoffCameron','Berlin',100,5003),
(3003,'JozyAltidor','Moscow',200,5007),
(3001,'BradGuzan','London',NULL,5005)
go

insert into orders values
(70001,150.5,'2012-10-05',3005,5002),
(70009,270.65,'2012-09-10',3001,5005),
(70002,65.26,'2012-10-05',3002,5001),
(70004,110.5,'2012-08-17',3009,5003),
(70007,948.5,'2012-09-10',3005,5002),
(70005,2400.6,'2012-07-27',3007,5001),
(70008,5760,'2012-09-10',3002,5001),
(70010,1983.43,'2012-10-10',3004,5006),
(70003,2480.4,'2012-10-10',3009,5003),
(70012,250.45,'2012-06-27',3008,5002),
(70011,75.29,'2012-08-17',3003,5007),
(70013,3045.6,'2012-04-25',3002,5001)