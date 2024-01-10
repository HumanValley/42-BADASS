#!/bin/sh

interface_to_router=eth1
interface_to_host=eth0

# vxlan
ip link add vxlan10 type vxlan id 10 dstport 4789
ip link set dev vxlan10 up

# bridge (ethernet of host <-> router vxlan)
ip link add br0 type bridge
ip link set dev br0 up
brctl addif br0 $interface_to_host
brctl addif br0 vxlan10

vtysh << EOF
conf t

hostname $(hostname)
no ipv6 forwarding
!
interface $interface_to_router
 ip address $eth_ip/30
 ip ospf area 0
!
interface lo
 ip address $lo_ip/32
 ip ospf area 0
!
router bgp 1
 neighbor 1.1.1.1 remote-as 1
 neighbor 1.1.1.1 update-source lo
 !
 address-family l2vpn evpn
  neighbor 1.1.1.1 activate
  advertise-all-vni
 exit-address-family
!
router ospf
!
EOF