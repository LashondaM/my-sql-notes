--SELECT concat(Lastname, ', ', Firstname) 'Name' /*Name*/, Description 'Major' --(Description) Major - can also change column name like this

SELECT concat(Lastname, ', ', Firstname) 'Name', isnull(Description, 'Undecided') 'Major'
	from student s
	left join Major m
		on m.id = s.MajorId
	order by Lastname;