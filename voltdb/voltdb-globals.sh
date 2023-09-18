#!/bin/bash
# fail fast
#set -euo pipefail

# Global directory for all the voltdb experiment related files
export VDB_TOP_DIR=/tdata/VDB/

export VDB_DB_DIR=${VDB_TOP_DIR}/vdb
export VDB_SRC_DIR=${VDB_TOP_DIR}/voltdb

export VDB_SERVER=10.0.1.42
export VDB_CLIENT=10.0.1.42

export YCSB_DIR="/home/cc/Pond/voltdb/ycsb"
