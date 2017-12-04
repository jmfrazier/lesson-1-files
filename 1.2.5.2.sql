select	
	neighbourhood_cleansed,
	avg(review_scores_rating) average_rating
from
	listings
group by 1
order by 2 desc