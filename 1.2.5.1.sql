select
	*,
	max(price)
from
    listings
union select
	*,
	max(weekly_price)
from
    listings
union select
	*,
	max(monthly_price)
from
    listings

