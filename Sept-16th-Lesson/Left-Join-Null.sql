SELECT *
	from Student s
	left join Major m -- left join bring in all students that doesn't have majors and ones that do
		on m.Id = s.MajorId
	where s.MajorId is null;