#!/bin/bash
YCSB_DIR=ycsb

VDB_RUN_DIR="/home/cc/Pond/voltdb"

cd ${YCSB_DIR}
numactl --cpunodebind=0 --membind=1 bin/ycsb.sh load voltdb -s -P workloads/workloada -P $VDB_RUN_DIR/voltdb-load.properties
