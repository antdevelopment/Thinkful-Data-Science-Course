-- Which station is empty most often?
WITH
		empty_count
AS (
		SELECT
				sa.station_id,
				sa.docks_available,
				COUNT(docks_available) empty
		FROM
				status sa		
		WHERE
				sa.docks_available = 0
		GROUP by sa.station_id
)
SELECT
		s.name,
		MAX(ec.empty)
		
FROM
		empty_count ec
JOIN
		stations s
ON
		s.station_id = ec.station_id