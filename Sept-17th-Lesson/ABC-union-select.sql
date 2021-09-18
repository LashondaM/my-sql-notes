Select *, 'A'
	from student
	where sat > 1200
union
Select *, 'B'
	from student
	where sat <= 1200 and sat >= 1000
union
Select *, 'C'
	from student
	where sat < 1000
