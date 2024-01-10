# P3

7 Application   Data               High-level protocols (HTTP...)
6 Presentation  Data               Translation of data (character encoding, data compression and encryption/decryption)
5 Session       Data               Managing communication sessions
4 Transport     Segment, Datagram  Reliable transmission of data segments between points on a network, including segmentation, acknowledgement and multiplexing
3 Network       Packet             Structuring and managing a multi-node network, including addressing, routing and traffic control
2 Data link     Frame              Data frames between two nodes connected by a physical layer
1 Physical      Bit, Symbol        Raw bit streams over a physical medium

VXLAN = virtualisation reseau (faux reseau local), encapsulation de paquets ethernet dans des paquets UDP
VTEP = router qui encapsule/decapsule des paquets dans un tunnel VXLAN
EVPN = MPLS ou VXLAN
MPLS = protocole pour envoyer un paquet entre deux node connecter en utilisant un label au lieu d'une adresse IP

OSPF = protocol de routage qui trouve le chemin le plus court grace a un representation dynamique de la topologie du reseau
BGP = protocol de routage pour connecter des sous resaux a internet

VNI = Virtual network interface
lo = loopback interface

loopback interface pour ne pas avoir a utiliser une interface physique
loopback interface est map a une adresse IP
les "leaf" essaient de cree un session bgp avec 1.1.1.1 et partage leur routes/chemins avec les autres "leaf"
