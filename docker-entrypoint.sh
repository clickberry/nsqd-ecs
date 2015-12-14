#!/bin/bash

PUBLIC_IP_ADDRESS=$( curl http://ip4.me 2>/dev/null | sed -e 's#<[^>]*>##g' | grep '^[0-9]' )
echo "BROADCAST ADDRESS: $PUBLIC_IP_ADDRESS"

exec /gopath/src/github.com/bitly/nsq/apps/nsqd/nsqd "$@" "--broadcast-address=$PUBLIC_IP_ADDRESS"
