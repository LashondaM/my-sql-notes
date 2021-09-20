select city, state, sum(sales) Sales, count(*) 'Count'
	from Customers
	where Sales > 10000 -- this is the amount spent per sale, this clause says it has to be over $10,000 in order to be counted
	group by City, State
	having sum(sales) > 600000;