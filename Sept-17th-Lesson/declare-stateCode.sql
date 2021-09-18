--declare @statecode varchar(2) = 'KY' --varchar : variable character;
declare @OH varchar(2) = 'OH';
declare @KY varchar(2) = 'KY';
declare @IN varchar(2) = 'IN';

select *
	--from Student s
	--where s.StateCode = @statecode;
	--another way to do it below
	from student
	--where StateCode = @statecode;
	where StateCode in(@OH, @KY, @IN);