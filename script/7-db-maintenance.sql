DROP TABLE IF EXISTS demo.amzn_reviews; 
DROP TABLE IF EXISTS demo.amzn_reviews_partitioned; 

SET gp_autostats_mode = 'NONE'; 
SHOW gp_autostats_mode; 

VACUUM FULL VERBOSE;
