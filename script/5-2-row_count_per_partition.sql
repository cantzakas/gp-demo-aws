SELECT
	tableoid::regclass, 
	count(*) 
FROM
	demo.amzn_reviews_2 
GROUP BY 1 
ORDER BY 1;
