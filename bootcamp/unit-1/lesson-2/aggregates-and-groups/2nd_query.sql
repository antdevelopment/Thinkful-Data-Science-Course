-- How many trips started at each station?
SELECT
		start_station station,
		COUNT(*) trip_count
FROM
		trips
GROUP BY start_station