select StateCode, sum(sat) SAT, count(sat) 'count'
	from student
	where sat > 900
	group by StateCode
	having sum(sat) > 500
	order by sat desc;