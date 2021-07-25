# hacker-box

## Pre-requisites

## Build
docker build -t hacker-box .  

## Run 
docker run -it --cap-add=NET_ADMIN --device=/dev/net/tun --sysctl net.ipv6.conf.all.disable_ipv6=0 hacker-box /bin/bash