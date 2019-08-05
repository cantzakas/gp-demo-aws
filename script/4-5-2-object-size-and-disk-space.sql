SELECT gp_size_of_table_disk.schemaname,
	gp_size_of_table_disk.tablename, 
	tabledisksize, 
	uncompressedsize, 
	tablesize, 
	indexsize, 
	toastsize, 
	othersize 
FROM (
		SELECT sotd.sotdoid as oid, 
			sotd.sotdschemaname as schemaname, 
			sotd.sotdtablename as tablename, 
			pg_size_pretty(sotd.sotdsize::BIGINT) as tablesize, 
			pg_size_pretty(sotd.sotdtoastsize::BIGINT) as toastsize, 
			pg_size_pretty(sotd.sotdadditionalsize::BIGINT) as othersize
		FROM
			gp_toolkit.gp_size_of_table_disk as sotd
		WHERE
			sotd.sotdschemaname || '.' || sotd.sotdtablename = 'demo.amzn_reviews') 
	gp_size_of_table_disk, 
	(
		SELECT sotaid.sotaidoid as oid, 
			sotaid.sotaidschemaname as schemaname, 
			sotaid.sotaidtablename as tablename, 
			pg_size_pretty(sotaid.sotaidtablesize::BIGINT) as tabledisksize, 
			pg_size_pretty(sotaid.sotaididxsize::BIGINT) as indexsize
		FROM
			gp_toolkit.gp_size_of_table_and_indexes_disk as sotaid 
		WHERE
			sotaid.sotaidschemaname || '.' || sotaid.sotaidtablename = 'demo.amzn_reviews') 
	gp_size_of_table_and_indexes_disk, 
	(
		SELECT sotu.sotuoid as oid, 
			sotu.sotuschemaname as schemaname, 
			sotu.sotutablename as tablename, 
			pg_size_pretty(sotu.sotusize::BIGINT) as uncompressedsize
		FROM
			gp_toolkit.gp_size_of_table_uncompressed as sotu
		WHERE
			sotu.sotuschemaname || '.' || sotu.sotutablename = 'demo.amzn_reviews') 
	gp_size_of_table_uncompressed 
WHERE
	gp_size_of_table_disk.oid = gp_size_of_table_and_indexes_disk.oid
	AND gp_size_of_table_and_indexes_disk.oid = gp_size_of_table_uncompressed.oid;
