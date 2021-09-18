select *
	from Customers c
	where sales > (select avg(sales) from Customers)
	order by sales desc