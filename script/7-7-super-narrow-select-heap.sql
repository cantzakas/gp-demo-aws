EXPLAIN ANALYZE 
SELECT review_id 
FROM demo.amzn_reviews_heap 
WHERE DATE_PART('year', review_date) BETWEEN 2000 AND 2005 
ORDER BY RANDOM() 
LIMIT 2000;
