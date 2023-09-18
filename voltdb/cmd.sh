#!/bin/bash

source voltdb-globals.sh

numactl --cpunodebind=0 --membind=0 ${VDB_SRC_DIR}/bin/voltdb init --dir=${VDB_DB_DIR}
sleep 2
numactl --cpunodebind=0 --membind=0 ${VDB_SRC_DIR}/bin/voltdb start --dir=${VDB_DB_DIR} --externalinterface=$VDB_SERVER --http=$VDB_SERVER:8080 --background
sleep 3
