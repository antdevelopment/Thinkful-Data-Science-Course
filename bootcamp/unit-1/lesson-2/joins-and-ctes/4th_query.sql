-- (Challenge) What's the length of the longest trip for each day it rains anywhere?
WITH
		rainy_days
AS (
		SELECT
				weather.Date
		FROM
				weather
		WHERE
				weather.Events like 'rain'
		GROUP by weather.Date
		
)

SELECT
		rd.Date,
		t.start_station,
		MAX(t.duration) longest_trips
FROM
		trips t
JOIN
		rainy_days rd
ON
		rd.Date = DATE(t.start_date)
GROUP by rd.Date
		