#!/bin/bash


echo 'Printing environment'
echo "Route net is ${SECURE_NET}"
echo "Route gateway is ${SECURENET_GATEWAY}"

sysctl net.ipv4.ip_forward=0
sysctl -p

make clean
make

$(./switch >& /proc/1/fd/1)

while true; 
    do sleep 0.01;
    done
