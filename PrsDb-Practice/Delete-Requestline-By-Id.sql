CREATE OR ALTER PROCEDURE DeleteRequestlineById
	@RequestlineId int = null
AS BEGIN
	if @RequestlineId is null BEGIN
		PRINT 'Requestline id is required';
		RETURN -1;
	END
	DELETE from Requestlines
		where Id = @RequestlineId;
END
Go
Exec DeleteRequestlineById @RequestlineId = 4;
Go