EXPLAIN
SELECT COUNT(*)
, date_part('year', review_date) AS YEAR_NUM
, date_part('month', review_date) AS MONTH_NUM
FROM demo.amzn_reviews 
GROUP BY 2, 3
ORDER BY 2, 3;
