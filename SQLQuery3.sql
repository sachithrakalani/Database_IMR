create database TriggerTesting;
Go

use TriggerTesting;
GO

Create table employee(
	employId int IDENTITY(1,1) primary key,
	first_name varchar(255),
	last_name varchar(255),
	hourly_pay decimal,
	job varchar(255),
	hire_date date
	);
	Go

	insert into employee(
	first_name,last_name,hourly_pay,job,hire_date)values(
	'Eugene','Krabs',25.5,'Manager','2023-01-02');
	Go

	select * from employee;
	Go

	insert into employee(
	first_name,last_name,hourly_pay,job,hire_date)values(
	'Squidward','Tentacles',15.0,'Cashire','2023-01-03'),(
	'Spongebob','Squarepants',12.5,'Cook','2023-01-04'),(
	'Patrick','Star',12.5,'Cook','2023-01-05'),(
	'Sandy','Cheeks',17.25,'Asst.manager','2023-01-06'),(
	'Sheldon','Plankton',10.0,'Janitor','2023-01-07')
	;
	GO

	select * from employee;
	Go

Create table empDepatment(
	employId int,
	depatmentId int,
	dematmentName varchar(100)
	);
	GO

