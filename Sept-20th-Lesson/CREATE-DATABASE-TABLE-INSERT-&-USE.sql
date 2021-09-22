--CREATE DATABASE Bootcamp;

--USE Bootcamp (switch to other databases by using: use)

--The system automatically knows that the primary key is not null, so you don't have to put that if you don't want to

-- If you want domething to be null, don't put "not null" or you can just leave it blank

-- A boolean is defined as a bit (0 or 1)

-- A null column doesn't have to be included in an INSERT

-- Unique: no two rows can have the same number in the sequence column for the Topics table

CREATE TABLE Students (
	Id int not null primary key identity(1,1),
	Name varchar(50) not null,
	FavNumber int not null,
	FavColor varchar(20) null default 'Gray',
	Milk bit null default 0
);
go
INSERT into Students 
	(Name, FavNumber, FavColor, MILK)
	VALUES
	('Matt', 144, 'Green', 1),
	('Parth', 84, 'Blue', 1),
	('Caroline', 25, null, 0)
go
CREATE TABLE Topics(
Id int not null primary key identity(1,1),
	Description varchar(30) not null,
	Sequence int not null unique,
	TooEasy bit not null default 1
);
go
INSERT into Topics
	(Description, Sequence, TooEasy)
	VALUES
	('Git/Github', 1, 1),
	('SQL Server', 2, 1),
	('c#', 3, 1),
	('EntityFrameWorkCore', 4, 1),
	('Java', 5, 1),
	('Spring', 6, 1),
	('HTML', 7, 1),
	('CSS', 8, 1),
	('JavaScript', 9, 1),
	('BootStrap', 10, 1),
	('jQuery', 11, 1),
	('TypeScript', 12, 1),
	('Angular', 13, 1)

select *
	from Topics

/* go
ALTER TABLE Customers
	add Updated DateTime;

use this inside of BcDb */

ALTER TABLE Customers
	Add Note varchar(30) null; --can't use not null in alters when adding new col into a table with stuff in it already | ADD NOTE FIRST BEFORE ALTER COLUMN
	alter column Note varchar(30) not null;

	UPDATE Customers Set -- do this first before setting alter column Note to not null
		Note = 'Default note', 
		Updated = getDate()

--select * from customers