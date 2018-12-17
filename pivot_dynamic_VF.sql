/*** kpi.deposits.requests ***/
-- declare variables
declare
@cols as nvarchar(max),
@query as nvarchar(max);
 
-- create string with column names
select @cols = stuff((select distinct ','+ quotename(measureMoment) from kpi.deposits.requests for xml path(''), type).value('.', 'nvarchar(max)'),1,1,'');
--select @cols
 
-- paste query together
set @query
       =N'select
             daysPending newName,'
             + @cols +
       N'from
       (
             select daysPending, noOfRequests, measureMoment
             from kpi.deposits.requests
       ) sourceTable
       pivot
       (
       max(noOfRequests)
       for measureMoment in ('+ @cols + N')
       ) pivotTable';
 
-- execute query
exec sp_Executesql @query;
 
 
 
/*** kpi.deposits.amount ***/
-- declare variables
declare
@cols as nvarchar(max),
@query as nvarchar(max);
 
-- create string with column names
select @cols = stuff((select distinct ','+ quotename(measureMoment) from kpi.deposits.amount for xml path(''), type).value('.', 'nvarchar(max)'),1,1,'');
--select @cols
 
-- paste query together
set @query
       =N'select
             daysPending newName,'
             + @cols +
       N'from
       (
             select daysPending, amountPending, measureMoment
             from kpi.deposits.amount
       ) sourceTable
       pivot
       (
       max(amountPending)
       for measureMoment in ('+ @cols + N')
       ) pivotTable';
 
-- execute query
exec sp_Executesql @query;
