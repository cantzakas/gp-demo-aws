CREATE TABLE foo ( 
	a int ENCODING (compresstype=zlib), 
	b text ENCODING (compresstype=quicklz, blocksize=65536)) 
WITH (appendonly=true) 
DISTRIBUTED BY (a);
