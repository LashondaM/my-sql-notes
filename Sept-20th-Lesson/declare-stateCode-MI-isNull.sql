--declare @statecode varchar(2) = 'MI'
declare @MI varchar(2) = 'MI'

select statecode, lastname, isnull(description, 'UNDECLARED') Major
	from Student s
	left join Major m
		on m.Id = s.MajorId
	--where Statecode = @statecode;
	--where StateCode = @MI;
	where statecode in (@MI); --the in clause is used for groups of variables you put in together inside the parenthesis

select s.lastname, statecode, isnull(description, 'UNDECLARED') Major
	from Student S
	left join major m
		on m.Id = s.MajorId
	where statecode = 'MI';