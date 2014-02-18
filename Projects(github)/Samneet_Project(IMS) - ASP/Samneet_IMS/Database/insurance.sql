create database insurance
on
(
name='insurance.mdf',
filename='D:\C#\PROJECT\insurance.mdf',
size=2,
filegrowth=2
)
use insurance
---------------------------------------------------------------------------------
create table customer_info
(
Customer_ID char(5) PRIMARY KEY,
Name varchar(20),
C_Address varchar(50),
Contact_Number bigint,
Vehicle_Name varchar(25),
Vehicle_type varchar(15),
Model_No varchar(15),
Vehicle_No varchar(10),
Purchasing_year int,
Meeting_Date datetime
)
---------------------------------------------------------------------------------
drop table customer_info
insert into customer_info values
('C01','Mr.S.K Thomson','A-1 Old Lane,New Jersey',2564387958,'Ford','Four Wheeler','A0157','NYLS-2051')

select *from customer_info


--------------------------------------------------------------------------------
create table employee_info
(
Employee_ID char(4) primary Key,
E_Password varchar(20) default 'pass',
Name varchar(20),
E_Address varchar(50),
Contact_No bigint
)
ALTER TABLE employee_info ADD EMail varchar(50)
--truncate table employee_info

insert into employee_info values
('E01','abcd','Paul Wang','4311 Clay Rd,98004',5235550175,'paul@hotmail.com')

insert into employee_info values
('E02','abcd','Jacob Sily','43 New York,98004',454521767675,'sily@hotmail.com')

insert into employee_info values
('E03','abcd','Garet Wargs','10121 Acor Avenue',544875467646,'garet@hotmail.com')

insert into employee_info values
('E04','abcd','Ben Miler','1652 Buskrik Avenue',445465487654,'miler@hotmail.com')

insert into employee_info values
('E05','abcd','Gordon Hee','46545 Lakeside Court',523547646567,'hee@hotmail.com')

insert into employee_info values
('E06','abcd','Michael Raheem','54651 Dallas Drive',44246843164,'raheem@hotmail.com')

insert into employee_info values
('E07','abcd','Karan Khanna','565 Paradise Ravenwood',121246543216,'karan@hotmail.com')

insert into employee_info values
('E08','abcd','Kirik Ajenstat','4654 Candy Road',242165432137,'kirik@hotmail.com')

insert into employee_info values
('E09','abcd','Jack Richins','44 Somerset Place',5174254354315,'jack@hotmail.com')

insert into employee_info values
('E10','abcd','Barbara MoreLand','74546 Steven Way',4321353134631,'barbara@hotmail.com')



select * from employee_info order by Employee_ID asc
---------------------------------------------------------------------------------
use insurance

create table assign_jobs
(
Employee_ID char(4) constraint fkcon foreign key references employee_info(Employee_ID) ,
Employee_name varchar(20),
Customer_ID char(5) foreign key references customer_info(Customer_ID) ,
Customer_Name varchar(20),
C_Address varchar(50),
Contact_Number bigint

)
drop table assign_jobs
select *from assign_jobs

