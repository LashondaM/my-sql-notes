select concat(Firstname, ' ', Lastname) Name
	from Student
	where Lastname
		--like '%e'; any word that ends with an e is right
		--like 'd%'; any word that starts with a d is right
		like '%ar%'; --any word with ar is right
		--like '_e'; the underscore represents the amount of characters that needs to follow, or come before a letter(s)