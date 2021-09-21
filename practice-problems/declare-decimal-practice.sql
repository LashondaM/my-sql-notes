declare @upperGpa decimal(5,1) = 3.3;
declare @lowerGpa decimal(5,1) = 2.7;

select *
	from Student
	where gpa >= @upperGpa
union
select *
from Student
where gpa <= @lowerGpa;