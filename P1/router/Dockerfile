FROM    frrouting/frr:latest

#       CONFIGURE FRR
RUN     sed -i 's/^bgpd=no$/bgpd=yes/' /etc/frr/daemons && \
        sed -i 's/^ospfd=no$/ospfd=yes/' /etc/frr/daemons && \
        sed -i 's/^isisd=no$/isisd=yes/' /etc/frr/daemons
