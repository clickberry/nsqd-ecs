#!/bin/bash

IP_ADDRESS=$(exec /sbin/ip route|awk '/default/ { print $3 }' | head -1)
echo "BROADCAST ADDRESS: $IP_ADDRESS"

exec /gopath/src/github.com/bitly/nsq/apps/nsqd/nsqd "$@" "--broadcast-address=$IP_ADDRESS"
