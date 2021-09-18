SELECT Description, c.code, Subject, Section
	from Major m
	join MajorClass mc
		on mc.MajorId =  m.Id
	join Class c
		on c.Id = mc.ClassId
	where m.code = 'GENB';