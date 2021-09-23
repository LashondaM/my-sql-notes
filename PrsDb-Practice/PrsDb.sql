/* Use master;
go
drop database if exists PrsDb
go
CREATE DATABASE PrsDb;
go
USE PrsDb
go */

CREATE TABLE Users (
Id int not null primary key identity(1,1),
Username varchar(30) not null Unique,
Password varchar(30) not null,
Firstname varchar(30) not null,
Lastname varchar(30) not null,
Phone varchar(12) null,
Email varchar(255) null,
IsReviewer bit not null Default 0,
IsAdmin bit not null Default 0
);
go
CREATE TABLE Vendors(
Id int not null Primary Key identity(1,1),
Code varchar(30) not null unique,
Name varchar(30) not null,
Adress varchar(30) not null,
City varchar(30) not null,
State varchar(2) not null,
Zip varchar(5) not null,
Phone varchar(12) null,
Email varchar(255) null
);
go
CREATE TABLE Products (
Id int not null primary key identity(1,1),
PartNbr varchar(30) not null Unique,
Name varchar(30) not null,
Price decimal(9,2) not null default 0,
Unit varchar(30) not null default 'Each',
PhotoPath varchar(255) null,
VendorId int not null
	foreign key references Vendors(Id)
);
go
CREATE TABLE Requests(
Id int not null primary key identity(1,1),
Description varchar(80) not null,
Justification varchar(80) not null,
RejectionReason varchar(80) null,
DeliveryMode varchar(20) not null Default 'Pickup',
Status varchar(10) not null Default 'NEW',
Total decimal(11,2) not null Default 0, 
UserId int not null
	foreign key references Users(Id)
);
go
CREATE TABLE Requestlines (
Id int not null primary key identity(1,1),
Quantity int not null Default 1
	check (Quantity > 0),
RequestId int not null
	foreign key references Requests(Id),
ProductsId int not null
	foreign key references Products(Id)
);
go
-- Insert seed data here
INSERT Users (Username, Password, Firstname, Lastname,IsReviewer, IsAdmin)
	VALUES ('sa', 'sa', 'Systems', 'Admin', 1, 1),
			('rv', 'rv', 'Systems', 'Reviewer', 1, 0),
			('us1', 'us1', 'Systems 1', 'User', 0, 0),
			('us2', 'us2', 'Systems 2', 'User', 0, 0)

select * from Users;
select * from Vendors;
select * from Products;
select * from Requests;
select * from Requestlines;
go
INSERT Vendors (Code, Name, Adress, City, State, Zip)
	VALUES ('APL', 'Apple', '860 Smitten Dr.', 'LA', 'CA', '30755');
--
go
INSERT Products (PartNbr, Name, Price, Unit, VendorId)
	VALUES ('nx-7891', 'Iphone Xr', 300, '4-south', 1);
go
INSERT Products (PartNbr, Name, Price, Unit, VendorId)
	VALUES ('nx-7861', 'Iphone 8', 250, '4.7-south', 1);
--
go
INSERT Requests (Description, Justification, Status, Total, UserId)
	VALUES ('Iphone 12', 'idk', 'Arrived', 1069, 4);
go
INSERT Requests (Description, Justification, Status, Total, UserId)
	VALUES ('Iphone 8', 'idk', 'late', 250, 3);
--
go
INSERT Requestlines (Quantity, RequestId, ProductsId)
	VALUES (1, 6, 1);
go
INSERT Requestlines (Quantity, RequestId, ProductsId)
	VALUES (4, 7, 2);