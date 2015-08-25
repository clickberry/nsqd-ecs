#!/bin/bash

PUBLIC_IP_ADDRESS=$( curl http://169.254.169.254/latest/meta-data/public-ipv4 )
echo "BROADCAST ADDRESS: $PUBLIC_IP_ADDRESS"

exec /gopath/src/github.com/bitly/nsq/apps/nsqd/nsqd "$@" "--broadcast-address=$PUBLIC_IP_ADDRESS"
