select 
	case when strftime('%m', date) between 3 and 5 then 'Spring'
		 when strftime('%m', date) between 6 and 8 then 'Summer'
		 when strftime('%m', date) between 9 and 10 then 'Fall'
		 else 'Winter' end as season,
	count(available) total
from
	calendar
where available = 't'
group by season
order by total desc
