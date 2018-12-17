## template
# usual metrics: count, min, max, range, sum, avg/mean, mode, median, std.dev 
select 'count' as metric
,count(v1) as v1
,count(v2) as v2
,count(v3) as v3
from table_schema.table_name 
union all 
select 'minimum'
,min(cast(v1 as )
,min(v2)
,min(v3)
from table_schema.table_name 
union all 
select 'maximum'
,max(v1)
,max(v2)
,max(v3)
from table_schema.table_name

## example 
select 'count' as metric
,count(date) as date
,count(tasks_users_per_day) as tasks_users_per_day
,count(user_id) as user_id
,count(account_id) as account_id
from source_data.tasks_used_da 
union all 
select 'minimum'
,min(date)
,min(tasks_users_per_day)
,min(user_id)
,min(account_id)
from source_data.tasks_used_da 
union all
select 'maximum'
,max(date)
,max(tasks_users_per_day)
,max(user_id)
,max(account_id)
from source_data.tasks_used_da 
union all
select 'range'
,datediff(day, min(date), max(date))
,max(tasks_users_per_day)-min(tasks_users_per_day)
,max(user_id)-min(user_id)
,max(account_id)-min(account_id)
from source_data.tasks_used_da 
union all
select 'sum'
,null
,sum(tasks_users_per_day)
,null
,null
from source_data.tasks_used_da 








select 'max' as metric
,max(date) as date
,max(tasks_users_per_day) as tasks_users_per_day
,max(user_id) as user_id
,max(acmax_id) as acmax_id,
from source_data.tasks_used_da

select 'sum' as metric
,sum(date) as date
,sum(tasks_users_per_day) as tasks_users_per_day
,sum(user_id) as user_id
,sum(acsum_id) as acsum_id,
from source_data.tasks_used_da

select 'maximum'
, max(0),max(0),max(accommodation_type_id),max(0),max(0),max(0),max(0),max(0),cast(max(breakfast_end_hour) as varchar)
FROM data_lake.mrr_winks_accommodations
UNION ALL 
SELECT
'maximum', max(0),max(0),max(accommodation_type_id),max(0),max(0),max(0),max(0),max(0),cast(max(breakfast_end_hour) as varchar)
FROM data_lake.mrr_winks_accommodations;