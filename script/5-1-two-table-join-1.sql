CREATE TABLE demo.calendar (cdate DATE) 
DISTRIBUTED BY (cdate);

INSERT INTO demo.calendar (cdate) 
SELECT GENERATE_SERIES(0, 364) + '2019-01-01'::DATE;

CREATE TABLE demo.sales (cdate DATE, qty INT, revenue NUMERIC) 
DISTRIBUTED BY (cdate);

CREATE TABLE demo.sales2 (cdate DATE, qty INT, revenue NUMERIC) 
DISTRIBUTED RANDOMLY;

INSERT INTO demo.sales (cdate, qty, revenue) 
SELECT (generate_series % 365) + '2019-01-01'::DATE, 
	qty, 
	qty * 19.99 
FROM ( 
	SELECT *,
		TRUNC(RANDOM() * 50 + 1)::INT AS qty 
	FROM 
		GENERATE_SERIES(1, 1000000)) A;

INSERT INTO demo.sales2 
SELECT * FROM demo.sales;

VACUUM ANALYZE demo.sales; 

VACUUM ANALYZE demo.sales2; 
