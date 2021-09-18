select m.Code, Description, c.Code, i.Lastname
	from Major m
	join MajorClass mc
		on mc.MajorId = m.Id
	join Class c
		on c.Id = mc.ClassId
	join Instructor i
		on i.id = c.InstructorId