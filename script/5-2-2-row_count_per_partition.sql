SELECT
	tableoid::regclass AS partition_name, 
	count(*) AS row_count 
FROM
	demo.amzn_reviews_2 
GROUP BY 1 
ORDER BY 1;
