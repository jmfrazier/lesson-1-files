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
select
	trip_id,
	duration,
	start_date
from 
	trips
join
	rainy
on 
	rainy.date = trips.start_date
order by duration desc
limit 3