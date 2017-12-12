-- What are the three longest trips on rainy days?

WITH
		rainy_days
AS (
		SELECT
				DATE(Date) date
		FROM
				weather
		WHERE
				Events like 'rain'
		GROUP by date
)

SELECT
		DATE(start_date) trip_date,
		t.trip_id,
		t.duration
FROM
		trips t
JOIN
		rainy_days rd
ON
		rd.date = trip_date
ORDER by t.duration DESC
LIMIT 3