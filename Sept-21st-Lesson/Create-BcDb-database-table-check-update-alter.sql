USE master;
go
drop database if exists BcDb;
go
create database BcDb;
go
use BcDb;
go
--create the table here
CREATE TABLE Customers(
Id int not null primary key identity(1,1),
Code varchar(10) not null unique,
Name varchar(30) not null,
Sales decimal(9,2) not null
	default 0 check (Sales >= 0),
Active bit not null default 1,
Created DateTime not null default GETDATE()
);
go
--do your inserts here
INSERT Customers
	(Code, Name, Sales, Active, Created) VALUES
	('AMZ', 'Amazon', 9000000.00),
	('APL', 'Apple', 6000000.00),
	('MCD', 'McDonalds', 8500000)
go

ALTER TABLE Customers
	add Updated DateTime;

ALTER TABLE Customers
	Add Note varchar(30) null;
	alter column Note varchar(30) not null;

	UPDATE Customers Set -- do this first before setting alter column Note to not null
	Note = 'Default note',
	Updated = getDate();

	UPDATE Customers Set
	Sales = 9000000.00
	where Id = 1;

	UPDATE Customers Set
	Sales = 6000000.00
	where Id = 2;

	UPDATE Customers Set
	Sales = 8000000.00
	where Id = 3;
	

select * from Customers