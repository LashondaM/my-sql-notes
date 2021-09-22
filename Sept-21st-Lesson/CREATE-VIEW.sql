CREATE VIEW ClassesForMajorIncInstructor as
Select m.code 'MajorCode', m.Description Major, c.code Class, i.Lastname Instructor
	from Major m
	join MajorClass mc
		on mc.MajorId = m.Id
	join Class c
		on c.Id = mc.ClassId
	join Instructor i
		on i.Id = c.InstructorId

Select * from ClassesForMajorIncInstructor
	where MajorCode = 'GenB'