#!/bin/bash

# copies files that are in the same location on multiple servers
# usage: multi-scp.sh username remote_path local_path [server1 server2 server3...]

if [ $# -lt 4 ]
then
    echo "usage: multi-scp.sh username remote_path local_path [server1 server2 server3...]"
    exit
fi

username=$1
remote_path=$2
local_path=$3

#collect the servers
for i in $(seq 4 $#); do
    scp -r $username@${!i}:$remote_path ${local_path}_${!i}
done
