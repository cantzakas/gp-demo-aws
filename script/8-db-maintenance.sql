DROP TABLE IF EXISTS demo.amzn_reviews; 
DROP TABLE IF EXISTS demo.amzn_reviews_2; 
DROP TABLE IF EXISTS demo.amzn_reviews_ao_co_zlib3;
DROP TABLE IF EXISTS demo.amzn_reviews_ao_ro_zlib3;
DROP TABLE IF EXISTS demo.amzn_reviews_heap;
DROP TABLE IF EXISTS demo.calendar;
DROP TABLE IF EXISTS demo.sales;
DROP TABLE IF EXISTS demo.sales2;

SET gp_autostats_mode = 'NONE'; 

VACUUM FULL VERBOSE;
