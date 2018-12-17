/* This script pivots a table without the need to specify the values that serve as column names in the result. */ 

-- temp table 
if object_id('tempdb..#temp') is not null drop table #temp;
create table #temp(dayno int, freq int, daydate char(1));
insert into #temp (dayno, freq, daydate) values(1,1,'a');
insert into #temp (dayno, freq, daydate) values(2,2,'a');
insert into #temp (dayno, freq, daydate) values(1,3,'b');
insert into #temp (dayno, freq, daydate) values(2,4,'b');
insert into #temp (dayno, freq, daydate) values(1,5,'c');
insert into #temp (dayno, freq, daydate) values(2,6,'c');
select * from #temp

-- declare variables
declare 
@cols as nvarchar(max),
@query as nvarchar(max);

-- create string with column names 
select @cols = stuff((select distinct ','+ quotename(daydate) from #temp for xml path(''), type).value('.', 'nvarchar(max)'),1,1,'');
--select @cols

-- paste query together 
set @query 
	=N'select 
		dayno newName,'
		+ @cols + 
	N'from
	(
		select dayno, freq, daydate
		from #temp
	) sourceTable 
	pivot
	(
	max(freq)
	for daydate in ('+ @cols + N')
	) pivotTable';

-- execute query 
exec sp_Executesql @query;