select concat(Firstname, ' ', Lastname) Name, SAT, GPA, sat /2 'Calc Nbr'
	from student
	where sat >= 1490
	--order by Lastname desc; --descending sequence, no desc if you want it flowing from A-Z
	order by gpa desc, sat desc;