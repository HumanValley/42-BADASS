#!/bin/sh

#no ipv6 forwarding -> disable ipv6
#router bgp 1 -> start config bgp AS 1 (Autonomous system)
#   neighbor ibgp peer-group -> create peer group name ibgp
#   neighbor ibgp remote-as 1 -> config neighbor ibgp with same AS
#   neighbor ibgp update-source lo -> put his loopback address has source addresse to send MAJ to ibgp (don't mean that the maj packet will be send with this addr)
#   bgp listen range 1.1.1.0/29 peer-group ibgp -> listen bgp connexion from range 1.1.1.O/29 and from ibgp group
#   !
#   address-family l2vpn evpn -> enter to family address BGP EVPN
#    neighbor ibgp activate -> activate ibgp session (and start listening)
#    neighbor ibgp route-reflector-client -> set itself at route-reflector (mean that other ibgp will send maj of there route table to it)
#   exit-address-family
touch /etc/frr/vtysh.conf

vtysh << EOF
conf t

hostname $(hostname)
no ipv6 forwarding
!
interface eth0
 ip address 10.1.1.1/30
!
interface eth1
 ip address 10.1.1.5/30
!
interface eth2
 ip address 10.1.1.9/30
!
interface lo
 ip address 1.1.1.1/32
!
router bgp 1
 neighbor ibgp peer-group
 neighbor ibgp remote-as 1
 neighbor ibgp update-source lo
 bgp listen range 1.1.1.0/29 peer-group ibgp
 !
 address-family l2vpn evpn
  neighbor ibgp activate
  neighbor ibgp route-reflector-client
 exit-address-family
!
router ospf
 network 0.0.0.0/0 area 0
!
line vty
!
EOF