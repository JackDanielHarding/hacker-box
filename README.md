# hacker-box

## Build
docker build -t hacker-box .  

## Run 

### Mac Host
docker run -it --cap-add=NET_ADMIN --device=/dev/net/tun --sysctl net.ipv6.conf.all.disable_ipv6=0 -p 3128:3128 hacker-box /bin/bash

## Using the Box

### Connect to VPN

openvpn <your_file>.ovpn --daemon

"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" --user-data-dir="$HOME/proxy-profile" --proxy-server="http://localhost:3128"