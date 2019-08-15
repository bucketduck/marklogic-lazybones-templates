#!/usr/bin/env bash

cd ${projectDir}/bin
mlcp.sh import -mode local -batch_size 100 -thread_count 4 \
   -input_file_path ${projectDir}/content/ \
   -input_compressed \
   -input_file_type archive \
   -copy_permissions true \
   -copy_collections true \
   -copy_properties true \
   -copy_quality true \
   -host ${mlHostImport} \
   -port ${mlPortImport} \
   -username ${mlUserImport} -password ${mlPasswordImport} \
   -database ${mlDatabaseImport}