SELECT *
	from Student s -- the s is an alias you use when you call on a table name more than once
	join Major m
		on m.Id = s.MajorId
	join MajorClass mc
		on mc.MajorId = m.Id
	join Class c
		on c.Id = mc.ClassId
	where c.subject = 'Computer Science';

/* multi -line
comment */