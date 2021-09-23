CREATE OR ALTER PROCEDURE AddRequestline
	@RequestId int = null,
	@ProductName varchar(30) = null,
	@Quantity int = null
AS BEGIN
	-- Check for all data entered
	If @RequestId is null OR @ProductName is null OR @Quantity is null BEGIN
		PRINT 'All parameters must be entered.';
		RETURN -1;
	END
	IF NOT EXISTS(SELECT 1 From Requests Where Id = @RequestId) BEGIN
		PRINT 'Request not found';
		RETURN -2;
	END
	IF NOT EXISTS(SELECT 1 from Products Where Name = @ProductName) BEGIN
		PRINT 'Product not found';
		RETURN -3;
	END
		IF @Quantity < 1 BEGIN
			PRINT 'Quantity must be GTE zero';
			RETURN -4
	END
	-- All parameters are checked
	DECLARE @ProductsId int;
	SELECT @ProductsId = Id From Products Products Where Name = @ProductName;
	-- Do the Insert
	INSERT Requestlines (RequestId, ProductsId, Quantity)
		VALUES (@RequestId, @ProductsId, @Quantity);
	PRINT 'Insert Succsessful!';
	RETURN 0;
END
Go
Exec AddRequestline @RequestId = 1, @ProductName = 'Echo', @Quantity = 3;