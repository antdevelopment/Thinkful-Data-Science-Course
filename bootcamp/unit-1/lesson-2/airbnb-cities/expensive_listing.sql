-- What's the most expensive listing? What else can you tell me about the listing?
SELECT
		listings.name,
		listings.interaction,
		small_calendar.date,
		small_calendar.price,
		listings.neighbourhood_cleansed,
		listings.property_type,
		listings.room_type,
		listings.accommodates,
		listings.bathrooms,
		listings.bedrooms,
		listings.beds,
		small_calendar.available
FROM
		small_calendar
JOIN
		listings
ON
		small_calendar.listing_id = listings.id
WHERE
		small_calendar.price NOT LIKE "nan"
ORDER BY 4 DESC
LIMIT 1

--This listing is not for lodging, but for weddings. It is aparently a hotel, but the host decided to place attributes of 6 bedrooms, one bathroom and one usable bed.
--The queried attributes highlight that basic information about this listing can only unfortunately be understood by reading the free text fields.