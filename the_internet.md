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

## Protocol Suites / Protocol Stacks / Network Models

These are different stacks of protocols for data transfer. These **are not** protocols themselves but are frameworks built up of protocols. Different stacks are used for different purposes and to fulfill different requirements in their data transfer.

**Some common ones:**
- **TCP/IP Stack** *(Commonly used for internet communications)*
- **OSI Model** *(Mostly theoretical and used for learning purposes)*
- **Bluetooth Protocol Stack** *(Used specifically for Bluetooth technology)*

## Protocol Layers for TCP/IP:
1. Application 
2. Transport
3. Internet
4. Link

## Protocol Layers for OSI:
1. Application 
2. Presentation 
3. Session
4. Transport
5. Network
6. Data Link
7. Physical

## PDU (Protocol Data Units)

A PDU is a block of data that a protocol passes on to the next protocol in the layered network. A PDU contains a *header* and *payload* (and sometimes a *trailer*).

### Headers

Headers include information relevant to the current network layer's protocol. This can include metadata specific to that protocol. 

For example: At the IP (Internet Protocol) layer the header may contain the IP address of the recipient (destination) and the IP address of the sender (source).

### Payload

This is the data from the previous layer(s) being passed on. Sort of like, the header for each protocol becoming the payload of the PDU for the next layer of a protocol suite.

This provides separation between the layers. Each layer of protocol only cares about the previous layers header and doens't need to regard the payload. It creates a layer of abstraction, so current layer doesn't need to know about the higher layers.

### Data Encapsulation

One concept in layering protocols is *"encapsulation"*. This refers to the idea of containing the data from the previous header in the payload to separate it from the header being added to the PDU. Encapsulation helps separate the data associated with each protocol from other protocols further down the line. This abstraction allows each layer to not worry about the data associated with previous layers, creating a more modular and predictable protocol suite.

### Bits

### Latency

### Bandwidth

## The Physical Layer

## The Data Link Layer

## The Internet/Network Layer

## Multiplexing

This is the process of taking multiple different streams of data from a host and sending them through one channel as opposed to sending each individual data stream asynchronously to the recieving host. Multiplexing is important because it allows a user to use multiple different applications each sending different forms of data, at the same time. This creates a more scalable internet that can accomodate a lot of traffic or diverse data and save costs.

## Demultiplexing

This is the opposite of multiplexing. This is when a single channel of multiple streams of data is taken and split apart into separate channels. This is important for allowing multiplexing, where data of different types can be sent in one channel. By having the data split off into their own respective channels allows that data to effectively reach its' intended recipient host without being mixed with other types of data.

## Ports 

Ports are used to identify the services or applications that are sending or recieving data. The ports are used at the Transport layer to help direct data to the correct application on a host device. IP addresses are used to locate the host device, while a port number is used to identify the specfic application on the host device. 

The number of ports usually ranges from 0 to 65535.

**Port numbers are generally reserved as so:**
- Well-known ports *(0-1023)*: Reserved for common services (e.g., 80 for HTTP, 443 for HTTPS)
- Registered ports *(1024-49151)*: Used by specific applications
- Dynamic/Private ports *(49152-65535)*: Can be used by any application

**Real-world analogy**... 

You can think of IP addresses and ports as an address for an apartment building. When you send a letter via a postal service you provide an address of the building/apartment, once the letter arrives at the building a concierge takes the letter and determines what room number to give the letter to. 

In this analogy the building's address represents an IP address and the room number represents a port number. 

The postal service can be thought of as the IP layer, while the concierge at the building can be thought of as the Data Transport layer. 

The building can be thought of as the host device, while the individual rooms in the building can be thought of as the specific applications.

**In this analogy:**
- Postal service = IP layer
- Building address = IP address
- Concierge = Transport layer
- Room number = Port number
- Building = Host device
- Individual rooms = Specific applications

The Transport Layer contains the destination and source port numbers in its header.

To establish *end-points* for the data being transferred, the IP address of the recipient host and the port number are combined. This will result in a number looking something like this: `10.14.0.2:55530` 

This number will help to identify where the data needs to be sent to. At a high level, this *"end-point address"* is generally known as a ***socket***. [[asdasd]](mental_model.md)

## Socket

A socket is the address that refers to a end-point for data being sent. The socket address usually comprises of the IP address combined with the port number of the recipient device and application, respectively. These addresses together identify the specific process on a host machine.

## Socket Connections (Connectionless 🆚 Connection-oriented)

### Connectionless

This is when data is sent directly to the host machine's socket. Incoming date to a socket is picked up in what ever order they arrive in and a response is sent back if necessary.

### Connection-oriented

This is when Socket objects are instantiated to setup a dedicated connection between the recipient host's process and the source host's process. This is generally considered more reliable as it established a dedicated connection for each session between sockets. Compared to connectionless it might be as fast though.

## TCP (Transmission Control Protocol)

Is a protocol designed for the Transport layer in networking.

Generally, it's very reliable at the cost of performance potentially.

### TCP Segments

These are the PDU's for this protocol layer.

## UDP (User Datagram Protocol)

Is a proto ol designed for the Transport layer in networking.

Generally, it's considered to be better in performance at the cost of reliability.


---
---
---
