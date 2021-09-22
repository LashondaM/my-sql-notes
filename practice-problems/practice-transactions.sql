--SELECT GETDATE;

BEGIN TRANSACTION
	
INSERT Food
(Name, TasteGood, eatAgain)
VALUES
('Sweet Potatoes', 1, 'yes')

Select * from Food

ROLLBACK TRANSACTION

COMMIT TRANSACTION