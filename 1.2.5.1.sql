select
	*,
	max(price * 1)
from
    listings
union select
	*,
	max(weekly_price * 1)
from
    listings
union select
	*,
	max(monthly_price * 1)
from
    listings