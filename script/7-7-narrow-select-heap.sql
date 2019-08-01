EXPLAIN ANALYZE 
SELECT product_id, 
	marketplace, 
	product_category, 
	star_rating 
FROM demo.amzn_reviews_heap 
WHERE DATE_PART('year', review_date) BETWEEN 2000 AND 2005 
ORDER BY RANDOM() 
LIMIT 2000;
