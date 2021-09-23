--use PrsDb;

--UPDATE Products Set
	--description = 'Ream of Paper'

select * from Requests;
select * from Requestlines

Total =
	(select Sum(rl.quantity * p.price)
		from Requests r
		join Requestlines rl
			on rl.RequestId = r.Id
		join Products p
			on p.id = rl.ProductsId);
		where id = ?
		--where r.id = ?