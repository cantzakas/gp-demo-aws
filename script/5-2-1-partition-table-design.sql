SELECT 
	partitionboundary, 
	partitiontablename, 
	partitionname, 
	partitionlevel, 
	partitionrank 
FROM pg_partitions 
WHERE tablename='amazn_reviews_2';
