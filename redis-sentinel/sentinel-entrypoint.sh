#!/bin/sh

IP=`getent hosts ${HOST} | awk '{ print $1 }'`

sed -i "s/\$SENTINEL_QUORUM/$SENTINEL_QUORUM/g" /redis/sentinel.conf
sed -i "s/\$SENTINEL_DOWN_AFTER/$SENTINEL_DOWN_AFTER/g" /redis/sentinel.conf
sed -i "s/\$SENTINEL_FAILOVER/$SENTINEL_FAILOVER/g" /redis/sentinel.conf
sed -i "s/\$MASTER_HOST/$MASTER_HOST/g" /redis/sentinel.conf
sed -i "s/\$MASTER_PORT/$MASTER_PORT/g" /redis/sentinel.conf
sed -i "s/\$IP/$IP/g" /redis/sentinel.conf
sed -i "s/\$PORT0/$PORT0/g" /redis/sentinel.conf

redis-server /redis/sentinel.conf --sentinel