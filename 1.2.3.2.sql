SELECT
    start_station,
	count(*) start_station
FROM
    trips
group by start_station