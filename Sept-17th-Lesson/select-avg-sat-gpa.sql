/* select avg(SAT)
	from student

SELECT Lastname, Firstname, SAT
	from student
	where sat >= 1176; */

select * 
	from student
	where sat < (select avg(SAT) 
					from student)
	order by sat desc

select *
	from student
	where gpa < (select avg(gpa) from student)
	order by gpa desc