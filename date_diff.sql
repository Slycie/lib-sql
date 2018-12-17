# date_diff function Athena 
select date_diff('day', date'2017-08-02', date'2017-08-14');

# date_diff function Athena 
select 
date_diff('day', cast(checkin_date as timestamp), cast(checkout_date as timestamp)) diff1 
,date_diff('day', cast(checkout_date as timestamp), cast(checkin_date as timestamp)) diff2
from mrr_winks_bookings

# date notations 
select * from data_lake.mrr_currency_rates where cast(updated_date as date) = date'2018-08-30';
select * from data_lake.mrr_currency_rates where cast(updated_date as date) = date'2018-09-01';