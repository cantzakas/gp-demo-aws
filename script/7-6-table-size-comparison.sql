SELECT 
	pg_size_pretty(pg_relation_size('demo.amzn_reviews_heap'))::TEXT, 
	'demo.amzn_reviews_heap' AS TABLENAME 
UNION 
SELECT 
	pg_size_pretty(pg_relation_size('demo.amzn_reviews_ao_ro_zlib3'))::TEXT AS TABLESIZE, 
	'demo.amzn_reviews_ao_ro_zlib3' AS TABLENAME 
UNION ALL 
SELECT 
	pg_size_pretty(pg_relation_size('demo.amzn_reviews_ao_co_zlib3')) AS TABLESIZE, 
	'demo.amzn_reviews_ao_co_zlib3' AS TABLENAME; 
