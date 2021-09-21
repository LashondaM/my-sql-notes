/* INSERT Student
	(Firstname, Lastname, Statecode, SAT, GPA, majorId)
	VALUES
	('Noah', 'Phense', 'GA', '1235', '3.15', (select Id from Major where Description = 'Math')); */

select * from student order by id desc;
