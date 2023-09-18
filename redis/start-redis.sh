#!/bin/bash

source redis-globals.sh

sudo mkdir -p /mnt/redis
# --save "" --appendonly no

sed -i "s/^bind.*/bind $REDIS_SERVER ::1/" redis2.conf

numactl --cpunodebind=0 --membind=0 redis-server redis2.conf
