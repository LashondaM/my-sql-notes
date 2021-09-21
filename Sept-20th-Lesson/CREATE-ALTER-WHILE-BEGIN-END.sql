CREATE OR ALTER PROCEDURE CountToTen
AS
BEGIN
	DECLARE @Index int = 1;
	DECLARE @Stop int = 10;

-- A loop that will perform the function over and over until told to stop
	WHILE @Index <= @Stop 
	BEGIN
		PRINT '@Index is ' + CAST(@Index as varchar(5));
		IF @Index = 5
		BEGIN
			PRINT '@Index is five';
		END
		SET @Index = @Index + 1; -- = stands for assignment, it asigns
	END
END;
Go
EXEC CountToTen;