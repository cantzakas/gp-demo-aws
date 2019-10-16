CREATE SCHEMA demo;

CREATE TABLE demo.uber_mov_ldn ( 
	qoy INTEGER, 
	sourceid INTEGER, 
	dstid INTEGER, 
	hod INTEGER, 
	mean_travel_time NUMERIC, 
	standard_deviation_travel_time NUMERIC, 
	geometric_mean_travel_time NUMERIC, 
	geometric_standard_deviation_travel_time NUMERIC) 
DISTRIBUTED BY (sourceid, dstid) 
PARTITION BY LIST (qoy) 
SUBPARTITION BY RANGE (hod) 
	SUBPARTITION TEMPLATE ( 
		START (0) END (23) EVERY (1), 
			DEFAULT SUBPARTITION OTHERHOD) 
(VALUES (201601, 201602, 201603, 201604, 201701, 201702, 201703, 201704, 201801), DEFAULT PARTITION OTHERQOY);
    
DROP TABLE IF EXISTS demo.postcode_lookup;
CREATE TABLE demo.postcode_lookup (
	pcd7 TEXT,
	pcd8 TEXT, 
	pcds TEXT, 
	dointr TEXT, 
	doterm TEXT, 
	usertype TEXT, 
	oa11cd TEXT, 
	lsoa11cd TEXT, 
	msoa11cd TEXT, 
	ladcd TEXT, 
	lsoa11nm TEXT, 
	msoa11nm TEXT, 
	ladnm TEXT, 
	ladnmw TEXT) 
DISTRIBUTED RANDOMLY;

DROP TABLE IF EXISTS demo.colour_gradient;
CREATE TABLE demo.colour_gradient (
	id SMALLINT, 
	min INT, 
	max INT, 
	RGB TEXT) 
DISTRIBUTED BY (id);

INSERT INTO demo.colour_gradient (id, min, max, RGB) 
VALUES (01, 00, 300, '04C8AC'), 
(02, 300, 600, '03B7A5'), 
(03, 600, 900, '03A79E'), 
(04, 900, 1200, '039698'), 
(05, 1200, 1500, '028691'), 
(06, 1500, 1800, '02758A'), 
(07, 1800, 2100, '026584'), 
(08, 2100, 2400, '01557D'), 
(09, 2400, 2700, '014476'), 
(10, 2700, 3000, '013470'), 
(11, 3000, 3300, '002369'), 
(12, 3300, 3600, '001362'), 
(13, 3600, 10000, '00035C');
