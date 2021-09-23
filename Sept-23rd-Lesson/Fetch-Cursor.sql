CREATE OR ALTER PROCEDURE StudentGpaAdjustment
AS
BEGIN
	DECLARE @Firstname varchar(30);
	DECLARE @Lastname varchar(30);
	DECLARE @GpaDelta decimal(5,2);
	DECLARE cur CURSOR For --cur for cursor
		SELECT Firstname, Lastname, GpaDelta
			from Adjustments
				where Completed = 0;
	OPEN cur;
		
	FETCH NEXT From cur into @Firstname, @Lastname, @GpaDelta;
	WHILE @@FETCH_STATUS = 0
	BEGIN
		UPDATE Student SET
			GPA = GPA + @GpaDelta
			where Firstname = @Firstname AND Lastname = @Lastname;
/*
		SELECT Firstname, Lastname, GPA, @GpaDelta Delta, (gpa + @GpaDelta) 'New GPA' 
			from Student
				where Firstname = @Firstname AND Lastname = @Lastname;
*/

		FETCH NEXT From cur into @Firstname, @Lastname, @GpaDelta;

	END

	CLOSE cur;
	DEALLOCATE cur;

	UPDATE Adjustments Set
		Completed = 1
		where Completed = 0
END
go -- create an update of that procedure, now execute it
EXEC StudentGpaAdjustment;
go
--select * from Adjustments