CREATE TABLE foo (
	a int, 
	b text) 
WITH (appendonly=true, orientation=column) 
DISTRIBUTED BY (a);
