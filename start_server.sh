#!/bin/bash
server_ip=$(ip -4 addr | grep -oP '(?<=inet\s)\d+(\.\d+){3}' | awk 'NR==2 {print
$0}');
global_ip=$(python get_global_ip.py)
echo "global ip is $global_ip"
echo $server_ip;
python signaling-server.py $server_ip:$PORT;
sleep infinity
