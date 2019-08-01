CREATE TABLE foo (
	a int, 
	b text) 
WITH (appendonly=true) 
DISTRIBUTED BY (a);
