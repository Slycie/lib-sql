select current_time as currenttime, current_date as currentdate, current_timestamp as currenttimestamp, now() as now;


select cast(replace(checkedin_date, '/', '-') as timestamp) checkedin_date
,cast(checkin_date as timestamp) checkin_date
,date_add('hour', -5, current_timestamp) utcminusfive
,current_timestamp current
,case when cast(replace(checkedin_date, '/', '-') as timestamp) is null
and cast(checkin_date as timestamp) < date_add('hour', -5, current_timestamp)
then cast(checkin_date as timestamp) else cast(replace(checkedin_date, '/', '-') as timestamp) end
from mrr_winks_bookings limit 10;


select cast(replace(checkedin_date, '/', '-') as timestamp) checkedin_date
,cast(checkin_date as timestamp) checkin_date
,offset_from_utc
,cast(case when offset_from_utc is null then 0 else offset_from_utc end as bigint) offset_from_utc_bigint
,date_add('hour', cast(case when offset_from_utc is null then 0 else offset_from_utc end as bigint), current_timestamp) utcminusoffset
,current_timestamp current
,case when checkedin_date is not null then cast(replace(checkedin_date, '/', '-') as timestamp)
	 when cast(checkin_date as date) < cast(date_add('hour', cast(case when offset_from_utc is null then 0 else offset_from_utc end as bigint), current_timestamp) as date) then null
	 else cast(checkin_date as timestamp) end finalvariable
from mrr_winks_bookings limit 10;

case when checkedin_date is not null then cast(replace(checkedin_date, '/', '-') as timestamp)
	 when cast(checkin_date as date) < cast(date_add('hour', cast(case when offset_from_utc is null then 0 else offset_from_utc end as bigint), current_timestamp) as date) then null
	 else cast(checkin_date as timestamp) end



,case when checkedout_date is not null then cast(replace(checkedout_date, '/', '-') as timestamp)
	 when cast(checkout_date as date) < cast(date_add('hour', cast(case when offset_from_utc is null then 0 else offset_from_utc end as bigint), current_timestamp) as date) then null
	 else cast(checkout_date as timestamp) end booking_end_actual_datetime