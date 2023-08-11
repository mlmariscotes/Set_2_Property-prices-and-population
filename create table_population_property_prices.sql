WITH total_amount AS (
	SELECT
		SUM(estimate_population) AS total_population,
		SUM(avg_price) AS total_avg_price
	FROM population_property
)

SELECT state_usa, estimate_population, avg_price, min_price, max_price, 
	ROUND((estimate_population / total_population) * 100, 2) AS population_percentage,
	ROUND((avg_price / total_avg_price) * 100, 2) AS avg_price_percentage
FROM population_property, total_amount
