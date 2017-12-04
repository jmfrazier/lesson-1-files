with 
	rainy
as (
	select
		date
	from
		weather 
	where
		events like 'rain'
	group by date
)
--doesnt work
--select
--	trip_id,
--	duration,
--	start_date <-- need to extract date, use date function
--from 
--	trips
--join
--	rainy
--on 
--	rainy.date = trips.start_date
--order by duration desc
--limit 3

select
	trip_id,
	duration,
	DATE(start_date) trip_date
from 
	trips
join
	rainy
on 
	rainy.date = trip_date
order by duration desc
limit 3