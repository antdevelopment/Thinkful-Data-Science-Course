-- What time of year is the busiest time to go to your city?
SELECT
		CASE
				WHEN date LIKE '%-01-%' OR date LIKE '%-02-%' OR  date LIKE '%-03-%' THEN 'winter'
				WHEN date LIKE '%-04-%' OR date LIKE '%-05-%' OR  date LIKE '%-06-%' THEN 'spring'
				WHEN date LIKE '%-07-%' OR date LIKE '%-08-%' OR  date LIKE '%-09-%' THEN 'summer'
				WHEN date LIKE '%-10-%' OR date LIKE '%-11-%' OR  date LIKE '%-12-%' THEN 'fall'
		END season,
		COUNT(*) listings_unavailable
FROM
		calendar
WHERE
		available LIKE 'f'
GROUP BY 1
ORDER BY 2 DESC
--summer has the largest amount of unavailable listings in SF