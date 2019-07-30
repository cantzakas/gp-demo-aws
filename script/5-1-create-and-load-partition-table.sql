CREATE TABLE demo.amzn_reviews_2(
	marketplace TEXT, 
	customer_id BIGINT, 
	review_id TEXT, 
	product_id TEXT, 
	product_parent BIGINT, 
	product_title TEXT, 
	product_category TEXT, 
	star_rating INTEGER, 
	helpful_votes INTEGER, 
	total_votes INTEGER, 
	vine TEXT, 
	verified_purchase TEXT, 
	review_headline TEXT, 
	review_body TEXT, 
	review_date DATE) 
DISTRIBUTED BY (review_id) 
PARTITION BY RANGE(review_date) 
(
	START ('1998-07-01'::date) END ('2015-09-01'::date)
	EVERY ('1 month'::interval)
); 

INSERT INTO demo.amzn_reviews_2 
SELECT * FROM demo.amzn_reviews;

SELECT COUNT(*) AS row_count, 'demo.amzn_reviews' tablename FROM demo.amzn_reviews
UNION ALL 
SELECT COUNT(*) AS row_count, 'demo.amzn_reviews_2' tablename FROM demo.amzn_reviews_2;
