CREATE TABLE demo.london_lsoa ( 
	dat_type text NULL, 
	geometry geometry NULL, 
	msoa_code text NULL, 
	msoa_name text NULL, 
	la_code text NULL, 
	la_name text NULL, 
	geoeast int4 NULL, 
	geonorth int4 NULL, 
	popeast int4 NULL, 
	popnorth int4 NULL, 
	area_km2 numeric NULL, 
	movement_id int4 NULL, 
	display_name text NULL 
) 
DISTRIBUTED BY (movement_id); 
  
CREATE TABLE demo.london_lsoa_txt ( 
	input TEXT) 
DISTRIBUTED RANDOMLY; 