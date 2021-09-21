-- A transaction

BEGIN TRANSACTION

DELETE Student where Id = 61

/* INSERT Student
	(Firstname, Lastname, StateCode, gpa, sat, MajorId)
	VALUES
	('Noah', 'Phense', 'GA', 1235, 3.15, (select Id from Major where Description = 'Math')) */

SELECT * From Student order by Id desc;

ROLLBACK TRANSACTION;

COMMIT TRANSACTION;