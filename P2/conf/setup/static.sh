#!/bin/sh

# $1: router address
# $2: destination address
# $3: vxlan address

ip addr add $1/24 dev eth0

# vxlan (router vxlan <-> other router vxlan)
ip link add name vxlan10 type vxlan id 10 \
    dev eth0 \
    remote $2 \
    local $1 \
    dstport 4789
ip addr add $3/24 dev vxlan10
ip link set dev vxlan10 up

# bridge (ethernet of host <-> router vxlan)
ip link add br0 type bridge
ip link set dev br0 up
brctl addif br0 eth1
brctl addif br0 vxlan10
