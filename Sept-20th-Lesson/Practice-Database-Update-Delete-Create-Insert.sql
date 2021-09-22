--CREATE DATABASE Practice;
--USE Practice

CREATE Table Food (
	Id Int not null Primary Key Identity(1,1),
	Name varchar(25) not null,
	TasteGood bit not null default 0,
	eatAgain varchar(12) not null
);


INSERT into Food
	(Name, TasteGood, eatAgain)
	VALUES
	('Chicken WINGS', 1, 'yes'),
	('Canned Spinach', 0, 'no'),
	('Mango', 1, 'yes'),
	('Strawberry', 1, 'yes'),
	('Prunes', 0, 'no'),
	('Canned Peas', 0, 'no'),
	('Pink Frosting', 0, 'NO')
go
UPDATE Food Set
	Name = 'Onion Rings'
	where id = 4;

select *
	from Food

CREATE Table Shows(
	Id int Primary Key Identity(1,1),
	Title varchar(30) not null,
	Rating int not null,
	Recommend bit default 0 not null
);
go
INSERT into Shows
	(Title, Rating, Recommend)
	VALUES
	('Futuranama', 9, 1),
	('Simpsons', 10, 1),
	('Family Guy', 8.5, 1),
	('American Dad', 9, 1)

select *
	from Shows;