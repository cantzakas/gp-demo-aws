DROP TABLE IF EXISTS demo.amzn_reviews; 
DROP TABLE IF EXISTS demo.amzn_reviews_2; 

SET gp_autostats_mode = 'NONE'; 
SHOW gp_autostats_mode; 

VACUUM FULL VERBOSE;