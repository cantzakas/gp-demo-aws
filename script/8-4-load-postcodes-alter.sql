ALTER TABLE demo.postcode_lookup 
ALTER COLUMN dointr TYPE INTEGER USING COALESCE(NULLIF(dointr, ''), '0')::INT; 
 
ALTER TABLE demo.postcode_lookup 
ALTER COLUMN doterm TYPE INTEGER USING COALESCE(NULLIF(doterm, ''), '0')::INT; 
 
ALTER TABLE demo.postcode_lookup 
ALTER COLUMN usertype TYPE SMALLINT USING COALESCE(NULLIF(usertype, ''), '0')::SMALLINT;