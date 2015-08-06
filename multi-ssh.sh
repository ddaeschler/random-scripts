#!/bin/bash

# runs an ssh command on multiple servers
# usage: multi-ssh.sh username command [server1 server2 server3...]

if [ $# -lt 3 ]
then
    echo "usage: multi-ssh.sh username command [server1 server2 server3...]"
    exit
fi

username=$1
command=$2

#collect the servers
for i in $(seq 3 $#); do
    ssh $username@${!i} $command
done
