--declare @statecode varchar(2) = 'KY';
declare @OH varchar(2) = 'OH'
declare @KY varchar(2) = 'KY'
declare @IN varchar(2) = 'IN'

select *
	from Student
	--where StateCode = @statecode;
	--where StateCode in(@OH);
	where StateCode in(@OH, @KY, @IN);