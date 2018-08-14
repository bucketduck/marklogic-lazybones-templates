#!/usr/bin/env bash

cd ${projectDir}/bin
mlcp.sh export -mode local -batch_size 100 -thread_count 4 \
   -output_file_path ${projectDir}/content/ \
   -output_type archive \
   -copy_permissions true \
   -copy_collections true \
   -copy_properties true \
   -copy_quality true \
   -copy_metadata true \
   -host ${mlHost} \
   -port ${mlPort} \
   -username ${mlUser} -password ${mlPassword} \
   -database ${mlDatabase}