SELECT
	date,
	MinTemperatureF
FROM
	weather
where
	zip = 94301 and
	events like 'rain'
