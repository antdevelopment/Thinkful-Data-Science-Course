-- What was the hottest day in our data set? Where was that?
SELECT
		ZIP zip,
		MAX(MaxTemperatureF) database_max_temp
FROM
		weather