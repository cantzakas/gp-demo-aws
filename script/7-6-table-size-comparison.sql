SELECT 
	tablename, 
	tablesize, 
	total_tablesize 
FROM ( 
SELECT 
	'demo.amzn_reviews_heap' AS tablename, 
	pg_size_pretty(pg_relation_size('demo.amzn_reviews_heap'))::TEXT AS tablesize, 
	pg_size_pretty(pg_total_relation_size('demo.amzn_reviews_heap'))::TEXT AS total_tablesize  
UNION 
SELECT 
	'demo.amzn_reviews_ao_ro_zlib3' AS tablename, 
	pg_size_pretty(pg_relation_size('demo.amzn_reviews_ao_ro_zlib3'))::TEXT AS tablesize, 
	pg_size_pretty(pg_total_relation_size('demo.amzn_reviews_ao_ro_zlib3'))::TEXT AS total_tablesize 
UNION ALL 
SELECT 
	'demo.amzn_reviews_ao_co_zlib3' AS tablename, 
	pg_size_pretty(pg_relation_size('demo.amzn_reviews_ao_co_zlib3')) AS tablesize, 
	pg_size_pretty(pg_total_relation_size('demo.amzn_reviews_ao_co_zlib3'))::TEXT AS total_tablesize) A 
ORDER BY 
	tablename DESC; 
