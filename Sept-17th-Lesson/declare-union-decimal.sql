declare @upperGpa decimal(5,1) = 3.5; -- the 5 means you'll never see a number with 5 non 0 digits, and 1 is the of numbers following the decimal
declare @lowerGpa decimal(5,1) = 2.5; -- the highest number this can go to is 9,999.9

select *
	from student
	where gpa >= @upperGpa
union
select *
	from student
	where gpa <= @lowerGpa;