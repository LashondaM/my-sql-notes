select description, c.Code, Subject, Section -- ambiguous column name 'code' error means there's more that one column with the name 'code'
	from major m
	join MajorClass mc
		on mc.MajorId = m.Id -- .Id is always the primary key
	join Class c
		on c.Id = mc.ClassId
	where Description = 'General Business';

select * from class; -- you can highlight a whole query statement, so it only runs the statement not highlighted'
--ctrl + r hides the results box and brings it back