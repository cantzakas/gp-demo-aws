CREATE TABLE bar (
	a int, 
	b text) 
WITH (appendonly=true) 
DISTRIBUTED BY (a);
