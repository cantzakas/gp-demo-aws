DROP SCHEMA IF EXISTS demo CASCADE;

CREATE SCHEMA demo;

DROP TABLE IF EXISTS demo.amzn_reviews;


CREATE TABLE demo.amzn_reviews(
  marketplace TEXT, 
  customer_id TEXT, 
  review_id TEXT, 
  product_id TEXT, 
  product_parent TEXT, 
  product_title TEXT, 
  product_category TEXT, 
  star_rating TEXT, 
  helpful_votes TEXT, 
  total_votes TEXT, 
  vine TEXT, 
  verified_purchase TEXT, 
  review_headline TEXT, 
  review_body TEXT, 
  review_date TEXT)
DISTRIBUTED BY (review_id);
