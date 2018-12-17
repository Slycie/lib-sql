/* This script creates and pivots a table. Column names in the result are specified in the code. */ 

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

-- pivot table 
select 
dayno newName, 
[a], 
[b], 
[c]
from 
(
select dayno, freq, daydate from #temp
) sourceTable 
pivot
(
max(freq) for daydate in(a, b, c)
) pivotTable;

