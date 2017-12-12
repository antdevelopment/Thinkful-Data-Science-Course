-- What is the average trip duration, by end station?
SELECT
		end_station,
		AVG(duration) average_trip_duration
FROM
		trips
GROUP by end_station