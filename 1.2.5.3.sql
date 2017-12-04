select 
	case when month(date) between 3 and 5 then 'Spring'
		 when month(date) between 6 and 8 then 'Summer'
		 when month(date) between 9 and 10 then 'Fall'
		 else 'Winter' end as season,		 
	count(available) total
from
	calendar
where available = 't'
group by season
order by total desc