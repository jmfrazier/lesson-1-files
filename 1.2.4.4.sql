with 
	rainy 
as (
	select 
		date
	from 
		weather
	where events = 'Rain'
group by 1
)
select
	max(duration),
	date(start_date) trip_date
from 
	trips
join
	rainy
on
	rainy.date = trip_date
group by 2
