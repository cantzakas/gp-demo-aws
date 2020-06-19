EXPLAIN ANALYZE 
SELECT COUNT(*), 
	product_category, 
	star_rating 
FROM demo.amzn_reviews_co 
WHERE DATE_PART('year', review_date) BETWEEN 2000 AND 2005
GROUP BY 2, 3;
