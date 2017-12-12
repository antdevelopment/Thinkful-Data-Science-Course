-- Return a list of stations with a count of number of trips starting at that station but ordered by dock count.
SELECT
		t.start_station,
		s.dockcount,
		COUNT(*) total_trips
FROM
		trips t
JOIN
		stations s
on s.name=t.start_station
GROUP BY t.start_station
order by s.dockcount DESC