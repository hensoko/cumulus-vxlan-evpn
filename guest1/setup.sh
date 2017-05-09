#!/usr/bin/env bash

#create bridge and disable arp learning
brctl addbr br0
brctl setageing br0 0

#create vxlan interface
ip link add vxlan0 type vxlan id 10 dstport 4789 local 10.3.1.1 nolearning

#add vxlan interface to br0
brctl addif vxlan0

#enable interfaces
ip link set up br0
ip link set up vxlan0

#configure ip-address on bridge
ip address add 192.168.0.1/24 dev br0
