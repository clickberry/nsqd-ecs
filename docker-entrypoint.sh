#!/bin/sh
set -e

PUBLIC_IP_ADDRESS=$( wget -O - http://ip4.me 2>/dev/null | sed -e 's#<[^>]*>##g' | grep '^[0-9]' )
echo "BROADCAST ADDRESS: $PUBLIC_IP_ADDRESS"

exec nsqd "$@" "--data-path=/data" "--broadcast-address=$PUBLIC_IP_ADDRESS"
