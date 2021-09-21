select *--c.name, count(*) as Orders (Display number of orders for each customer is the commented out sections)
	from Customers c
	left join Orders o
		on o.CustomerId = c.Id
	--group by c.id, c.Name