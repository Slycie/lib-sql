select id, premature_checkout_state from data_lake.mrr_winks_bookings where premature_checkout_state is null;
select id, count(premature_checkout_state) from data_lake.mrr_winks_bookings where premature_checkout_state is null group by id;

select id, premature_checkout_state from data_lake.mrr_winks_bookings where premature_checkout_state is not null;
select count(id), count(premature_checkout_state) from data_lake.mrr_winks_bookings where premature_checkout_state is not null;

select 
(select count(id) from data_lake.mrr_winks_bookings where id is not null), 
(select count(premature_checkout_state) from data_lake.mrr_winks_bookings where premature_checkout_state is not null)
;


-- to script
select 
(select count( variable1 ) from table where variable1 is not null),
(select count(variable2) from table where variable2 is not null),
(select count(variable3) from table where variable3 is not null)
;



-- to script
select id, premature_checkout_state from data_lake.mrr_winks_bookings where premature_checkout_state is not null;
select count(id), count(premature_checkout_state) from data_lake.mrr_winks_bookings where premature_checkout_state is not null;
select (select count(id) from data_lake.mrr_winks_bookings where id is not null), (select count(premature_checkout_state) from data_lake.mrr_winks_bookings where premature_checkout_state is not null);
