#!/bin/bash

export S3_DATA_DIR=/var/tmp_s3_data

if [ -d $S3_DATA_DIR ]; then rm -rf $S3_DATA_DIR; fi

mkdir $S3_DATA_DIR
cd $S3_DATA_DIR

ls -laF $S3_DATA_DIR

/usr/local/bin/aws s3 cp s3://uber-movement-ldn/PCD_OA_LSOA_MSOA_LAD_AUG19_UK_LU.csv PCD_OA_LSOA_MSOA_LAD_AUG19_UK_LU.csv
/usr/local/bin/aws s3 cp s3://uber-movement-ldn/london-lsoa.json london-lsoa.json
/usr/local/bin/aws s3 cp s3://uber-movement-ldn/uber-movement-ldn.tar.gz uber-movement-ldn.tar.gz
/usr/local/bin/aws s3 cp s3://uber-movement-ldn/ukpostcodes.csv ukpostcodes.csv
