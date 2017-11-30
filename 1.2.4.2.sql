select
	status.station_id,
	stations.name,
	count(case when docks_available=0 then 1 end) empty
FROM 
	status
JOIN 
	stations
on 
	stations.station_id = status.station_id
GROUP BY 1
ORDER BY empty DESC