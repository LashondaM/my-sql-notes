select state, city, sum(sales) sales, count(*) count -- this count is the number of sales from the area
	from customers
	where sales > 50000
	group by city, state
	having sum(sales) > 600000; -- having works on grouped data