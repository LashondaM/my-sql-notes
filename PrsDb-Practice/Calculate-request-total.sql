--in sql, integers (int) can be null
-- right click on a table and select top 1000 rows or edit Top 200 rows
-- when you edit in the 200 rows, a pencil will appear and you click off of the table and the database locks the change in, if valid

CREATE OR ALTER Procedure CalculateRequestTotal
	@RequestId int = Null
AS
BEGIN
	-- Check for missing RequestId
	IF @RequestId is NULL
	BEGIN
		PRINT 'RequestId is required';
		RETURN -1
	END
	-- Check the RequestId exists
	IF NOT Exists(SELECT * from Requests Where Id = @RequestId)
	BEGIN
	PRINT 'Request not found';
	RETURN -2;
	END
	--
	DECLARE @Total decimal(9,2);
	-- This puts the total calculated by the query in the @Total
	Select Sum(rl.quantity * p.price)
		from Requests r
		join Requestlines rl
			on rl.RequestId = r.Id
		join Products p
			on p.id = rl.ProductsId
		where r.id = @RequestId;
	Select @Total 'Total';
	-- Now update the request
	UPDATE Requests Set
		Total = @Total
		where Id = @RequestId;
	Print 'Updated!'
	RETURN 0;
END
Go
EXEC CalculateRequestTotal @RequestId = 1;
Go
Declare @rc int;
EXEC @rc = CalculateRequestTotal @RequestId = 1;
Print @rc
Go