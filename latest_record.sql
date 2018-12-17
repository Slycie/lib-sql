# we have to do this to only get the latest record
select *
from (select *, row_number() over(partition by id order by update_at desc) as latest_record
		from data_lake.mrr_winks_accommodations
    	order by id) a
where latest_record = 1