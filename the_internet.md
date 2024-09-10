# The Internet

## What is a Network?

A network is a system of nodes/devices that send and transfer information between each other. 

At the most basic level, this could be connecting two computers to each other through a cable, and confirguring the computers to exchange information with each other through the use of the cable.

---

### LAN (Local Area Network)

This is a network of devices that are located locally, that is, there are a bunch of devices in an area that communicate through a central system like a hub or switch.

---

### WLAN (Wireless LAN)

### Routers

Are devices used to connect devices across networks. Works on Layer 3. Routers help in determining the best paths for data to take in order to reach a recipient. Routers use IP addresses to determine the network that the recieving device is in and in order to identify devices in their local network. A router assigns IP addresses to each device in its network, and upon recieving data from another network can use the *"recipient IP address"* to figure out which MAC address in its' local network to send the data to.

### Switches

Are devices used to connect devices in the same network. Works on Layer 2. Switches use MAC addresses to identify what devices in its local network to send data to.

---
---
---

## What is a Protocol?

A protocol is a set of rules and procedures for how data is formatted, transferred, sent and delivered between devices and networks. Different protocols are used for different kinds of data transfer. Differing protocols define their own rules, procedures and syntax used for their objective.

Protocols provide a clear and standardized way for devices to communicate with other devices in a network regardless of their hardware or architecture. When rules and procedures are laid out, it makes for a more interoperable system of devices. With this, devices don't have to "guess" as to how to transfer or interpret data.

**Examples of some protocols include:**
- **HTTP** *(Hypertext Transfer Protocol)*: Used for transmitting web pages
- **TCP** *(Transmission Control Protocol)*: Ensures reliable data delivery
- **UDP** *(User Datagram Protocol)*: Provides fast, connectionless data transfer
- **IP** *(Internet Protocol)*: Routes data packets across networks

Not one protocol is used for the task of sending and recieving data as a whole. Generally multiple different protocols are used and layered ontop of each other when it comes to the task of sending and recieving data.

Protocols also help to create a more adaptable, modular, flexible and maintainable aggregate system. As opposed to monolithic system for data transfer that is more susceptible to being less flexible, less adaptable and potentially fragile. Protocols also offer a more scalable system that's more resilient.

**Analogy to Human Communication:**

Network protocols are like the rules of etiquette in different social situations:

1. Presentation Protocol (e.g., HTTP):
   - Similar to rules for giving a presentation:
     * The presenter (server) speaks for a set time.
     * The audience (clients) listens and then can ask questions.
     * There's a defined format for slides (data packets).

2. Conversation Protocol (e.g., TCP):
   - Like rules for a group conversation:
     * Friends take turns speaking (data packets sent in sequence).
     * If someone misses what was said, they ask for it to be repeated (packet acknowledgment and retransmission).
     * If multiple people start talking, they decide who goes first (collision avoidance).

3. Introduction Protocol (e.g., Handshake in TCP):
   - Similar to meeting someone new:
     * You introduce yourself (SYN).
     * They acknowledge and introduce themselves (SYN-ACK).
     * You acknowledge their introduction (ACK).

4. Emergency Protocol (e.g., ICMP):
   - Like fire drill procedures:
     * Quick, standardized messages for urgent situations.
     * Everyone knows how to respond to these special messages.

## Protocol Layers:

1. The Physical Layer
2. The Data Link Layer
3. Network Layer

### Data Encapsulation

## PDU (Protocol Data Units)

### Header & Trailer

### Bits

### Latency

### Bandwidth

## The Physical Layer

## The Data Link Layer

## The Internet/Network Layer

---
---
---
