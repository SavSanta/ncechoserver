#!/bin/sh

# Quick echo server primarily just so I can make sure HTTP methods were caught in a different application and Im too stupid to bother to setup Node.js or Apache.
# Slightly modified from https://github.com/nota-ja/nc-echo-server to use the correct flags from of netcat/nc version in Debian.

if [ -z $1 ]
    then
        set $1 8080
fi

echo "Starting echo-server on localhost port $1"
echo "Check '/tmp/webtrans.nc' for transactions recieved"
rm -f /tmp/webtrans.nc
tail -f /tmp/webtrans.nc | nc -l -p $1 > /tmp/webtrans.nc
