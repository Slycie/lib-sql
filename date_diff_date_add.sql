case when f.by_night=true 
then /*accommodations*/
	case when date_diff('day',f.consumed_at,cast(b.checkout_date as timestamp))>=1 /*if it's not the last night of the stay*/
	then date_add('day',1,f.consumed_at)
	else date_add('hour',hour(a.checkout_time), cast(date_add('day',1,cast(f.consumed_at as date)) as timestamp)) end	/*take the next day at the checkout time of the business_unit*/											
else /*non-accommodations*/ f.consumed_at end as booking_item_end_datetime