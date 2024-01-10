# Bgp At Doors of Autonomous Systems is Simple

## Objectif

The purpose of this project is to simulate a network and configure it using GNS3 with docker images.

## Project

### P1

Setup Virtual Machine, install GNS3 and use docker images to simulate computers in a network.

### P2

Setup a VXLAN network in GNS3 using bridges and P1's docker images. Open P2.drawio.html for configuration diagram. 

### P3

Setup A BGP EVPN using P2's VXLAN. Open P3.drawio.html for configuration diagram. 

## Knowledge

### OSI MODEL

1. Physical Layer: Physical connections and transmission of binary data over a physical medium. *Examples: Cables, electrical signals.*

2. Data Link Layer: Manages data between devices on the same network (LAN). *Examples: Ethernet, MAC addresses.*

3. Network Layer: Handles logical addressing and routing, allowing data to be sent between multiple networks. *Examples: IP (Internet Protocol).*

4. Transport Layer: Ensures reliable communication, error-checking and data flow control. *Examples: TCP, UDP.*

5. Session Layer: Establishes, maintains, and terminates connections between applications. *Examples: NetBIOS, RPC.*

6. Presentation Layer: Translates data between the application layer and the lower layers, dealing with data syntax and encryption/decryption. *Examples: JPEG, GIF.*

7. Application Layer: Provides network services directly to end-users or applications. *Examples: HTTP, FTP, DNS.*

### Glossary [OSI layer]

***[2] LAN:*** Local Area Network. It refers to a network of interconnected computers, devices, or resources within a limited geographic area

***[2] BRIDGE:*** A network device that connect and filter traffic between two or more local network segments, creating a single logical network.

***[2] VLAN:*** Virtual Local Area Network, is used to divide a physical network into multiple logical networks. VLANs enhance network security, management, and efficiency using bridges or switches.

***[2-3] VXLAN:*** Virtual Extensible LAN extends Layer 2 networks over Layer 3 networks. It encapsulates Ethernet frames in UDP packets through VEPT, allowing communication between virtual machines across different hosts and networks.

***[4] BGP:*** Border Gateway Protocol is an exterior gateway protocol that is used to exchange routing and reachability information between different autonomous systems (ASes) on the Internet.
