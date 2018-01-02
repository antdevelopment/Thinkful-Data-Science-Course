--What neighborhoods seem to be the most popular?
SELECT
		listings.neighbourhood_cleansed neighborhood,
		COUNT(*) high_rated_listings_reviewed_over_100_times
FROM
		listings
WHERE
		listings.review_scores_rating > 89 AND
		listings.review_scores_rating NOT LIKE '' AND
		listings.number_of_reviews > 100
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5
--Mission, Castro, and Western Addition seem to be the most popular