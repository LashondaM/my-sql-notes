--SELECT GETDATE();

Declare @name varchar(30) = 'O''Brien';

select REPLACE('''','''''', @name);