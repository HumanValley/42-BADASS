#!/bin/sh

export router_ip=10.1.1.2
export other_router_ip=10.1.1.1
export vxlan_ip=20.1.1.2

# sh /conf/static.sh
sh /tmp/multicast.sh
