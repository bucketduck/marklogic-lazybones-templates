#!/usr/bin/env bash

cd ${projectDir}/bin
mlcp.sh copy -mode local -batch_size 100 -thread_count 4 \
   -copy_permissions true \
   -copy_collections true \
   -copy_properties true \
   -copy_quality true \
   -copy_metadata true \
   -input_host ${mlHost} \
   -input_port ${mlPort} \
   -input_username ${mlUser} -input_password ${mlPassword} \
   -input_database ${mlDatabase} \
   -output_host ${mlHostImport} \
   -output_port ${mlPortImport} \
   -output_username ${mlUserImport} -output_password ${mlPasswordImport} \
   -output_database ${mlDatabaseImport}

