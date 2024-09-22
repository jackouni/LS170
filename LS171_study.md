# LS171 Written Study Guide

------------
------------
------------

## Common Misunderstandings I've Found:

This section is used to note things that I had trouble with when trying to understand some of these concepts.

> **Q:** *"Do the network layers represent physical events or physical parts of the computer?"*
> **A:** 
> They should be thought of in a sense of wrapping data - encapsulation and decapsulation. 
> Sending (Encapsulation) = Top to Bottom 
> Recieving (Decapsulation) = Bottom to Top
>
> **Follow-up Questions:** *"Why have encapsulation and decapsulation?"* ; *"What problem is encapsulation and decapsulation solving?"*

---

> **Q:** *"Is the network layers a series of events that happen? For example; the 'transport layer' being responsible for physically transporting data, or the 'data-link layer' being responsible for the physical linking of data to the internet..."*
> **A:**
> Each layer isn't necessarily performing a physical event. The networking layers are more so meant to create a better conceptual model for network protocols and how they interact. Each layer is responsible for giving instructions/protocols for how data should be formatted to be transmitted from one device to another, not necessarily physically transmitting the data themselves. 
>
> **Example:**
> The transport layer isn't necessarily creating the connection between two devices itself. What it is doing is establishing rules and agreements for how two devices will connect. It provides the logic for end-to-end connection, but the transport layer itself is not the one creating that physical connection.

---

------------
------------
------------

# The Internet
- Have a broad understanding of what the internet is and how it works
- Understand the characteristics of the physical network, such as latency and bandwidth
- Have a basic understanding of how lower level protocols operate
- Know what an IP address is and what a port number is
- Have an understanding of how DNS works
- Understand the client-server model of web interactions, and the role of HTTP as a protocol within that model

### What is the Internet?

The internet is a network of cables, wires and wave frequencies connecting computers across the world. These means of connectivity can transfer data (bits) between computers via light, electricity and radio waves. The internet as a whole consists of many local area networks (LANs) of computers, generally interconnected by fiber optic cables over large areas (WANs). In other words, the internet is a massive network of networks.

### Define Latency

Latency refers to the time in which is takes for data/bits to travel over a given distance. Data that takes a long duration to go from point A to point B would be referred to as being high in latency. Whereas, data that takes a short duration to go from point A to point B would be referred to as being low in latency. To remember what high and low latency represent, *"latency"* can be thought of as *"length of time"*. 

Latency is often measured in milliseconds (ms). 

Things like distance, the means of transporting data (light, electricity, radio waves, etc...), the number of devices data has to intersect with, and network congestion - can all affect latency.

### Define Bandwidth

Bandwidth refers to the rate of data/bits that can be transmitted per second. Higher bandwidth means more data can be transmitted per second, while lower bandwidth means less data can be transmitted per second.

In the real world, larger bandwidth is associated with the ability to upload and download bigger units of data faster, while having lower bandwidth is associated with being able to send smaller units of data at a slower speed.

Network congestion, the means of transmitting data (light, electricity, radio waves), other physical hardware that the data will intersect or interact with; are all things that can affect bandwidth.

Bandwidth is generally measured in bps (bits per second), mbps (megabits per second) or gbps (gigabits per second).

### What is an IP Address?

An IP address is a series of 4 octets separated by dots (for IPv4): `xxx.xxx.xxx.xxx`
*There's a new IPv6 format for IP addresses, that's beyond the scope of this lesson*

IP addresses are assigned to devices in a LAN (generally done by a router) in order for devices outside of that LAN to send data to the recipient device. An IP address can be thought of as a home address, so a sender can know where to send a letter to and the recipient can know where the letter is being sent from. In the context of networking, the IP address is used to accurately navigate data sent over the internet to a recipient computer.

### What is a Port Number?

A port number is a number associated with a specific application on a device. Port numbers act as addresses for applications hosted on a device. The concept is similar to an IP address, but instead of addressing a device, a port number addresses an application.

Port numbers often work in tandem with IP addresses. For applications that access the internet, an IP address is used to identify the recipient device to transmit data to and then the port number is used to identify what application on the recipient device to send that data to.

Port numbers range from 0 to 65535 and are divided into three categories:
1. Common ports (0-1023): Reserved for common applications
2. Registered ports (1024-49151): Assigned by a governing body for specific applications
3. Dynamic or private ports (49152-65535): For any other application to use

Generally, there are port numbers that are reserved or commonly used with specific applications on a device. An example of this is web servers often being assigned to port `80`, while mail servers being assigned to port `25`.

### What is a MAC (Media Access Control) Address?

A MAC (Media Access Control) address is a unique and permanent number given to a device from manufacturing. A MAC address is often used to idenitify devices in a LAN (generally) by a router.

### What is DNS?

DNS (Domain Name System) are a wide network of servers used to locate and retrieve IP addresses associated with specific web domains. IP addresses are not very human-readable, memorable or easy to use. To fix this problem with IP addresses human-readable domain names are used instead (like `google.com` or `khanacademy.org`).

When a domain name is entered into a browser, the browser makes a request to a Domain Name Server. The client Domain Name Server checks it's registry for any matches to the domain name. If the client Domain Name Server finds a match, the Domain Name Server retrieves the IP address associated with the requested domain name for the browser to complete its request. If the client Domain Name Server does not find a match, it checks with other Domain Name Servers in a hierarchical pattern until either: one of Domain Name Servers locates the domain name or none of them finds a match.

A request to the DNS doesn't always happen, as most browsers will store retrieved IP addresses for domains previously requested.

### What Issue Does DNS Solve?

IP addresses are not very human-readable, memorable or easy to type. To fix this problem with IP addresses human-readable domain names are used instead (like `google.com` or `khanacademy.org`). DNS is a system that allows us to associate a domain name with an IP address without the user having to know anything about the IP address for a domain.

### How does DNS Work? (High-Level)

When a domain name is entered into a browser, the browser makes a request to a Domain Name Server. The client Domain Name Server checks it's registry for any matches to the domain name. If the client Domain Name Server finds a match, the Domain Name Server retireves the IP address associated with the requested domain name for the browser to complete its request. If the client Domain Name Server does not find a match, it checks with other Domain Name Servers in a hierarchical pattern until either: one of Domain Name Servers locates the domain name or none of them finds a match.

A request to the DNS doesn't always happen, as most browsers will store retrieved IP addresses for domains previously requested.

### How Are Layers Ordered? How do The Layers Flow?

Layers are generally ordered from bottom to top, with the bottom layers being closest to hardware and physical components, while the top layers are more associated with software and applications.

When sending data (Encapsulation) the process is starting at the top of the stack and going down through each layer.

When recieving data (De-encapsulation) the process is starting at the bottom of the stack and going up through each layer.

### What are the Layers Associated with the TCP/IP Model?

1. Link Layer
2. Internet Layer
3. Transport Layer
4. Application Layer

### What is the Application Layer?

The application layer is the layer of the data transmitting process that's responsible for defining how data is formatted/structured, how data is being sent and received between applications, and how those applications interact with each other. When sending data from an application on a client device, the application layer is **encapsulating** relevant data/information associated with its layer and then passing that data to the transport layer. When receiving information, the application layer is **decapsulating** the data associated with its layer.

*Some common protocols associated with the application layer include: *
- HTTP/HTTPS (for web browsing)
- DNS (domain name IP address look-ups)
- SMTP (for transmitting emails)

### What Problems are Associated with the Application Layer?

Applications have different communication needs and rely on different types and formats of data in order to interpret and interact with data. The application layer provides a way to include a standardized structure for data transmission between applications.

### What is the Main Protocol Used at the Application Layer For Web Browsing?

HTTP/HTTPS

### What is the Main Protocol Used at the Application Layer For Email?

SMTP

### What is the Main Protocol Used at the Application Layer For Domain Resolution?

DNS

### What is the Transport Layer?

The transport layer is the layer of the data transmitting process that's responsible for establishing a *logical* (*not physical*) connection between two devices. The transport layer is a way for establishing a set of rules or procedures for creating a connection between two different devices. When sending data from the transport layer on a client device, the transport layer is **encapsulating** relevant data/information associated with its layer and then passing that data to the internet layer. When receiving information, the transport layer is **decapsulating** the data associated with its layer.

The transport layer establishes how data is to be segmented into smaller units, how that data will flow from one device to another and how to maintain integrity of data throughout a connection.

### What Issues are Associated with the Transport Layer?

There needs to be a set of standards or a protocol to follow in order to make a connection between two devices. The transport layer allows for the establishment of a set of standards and rules to be put in place for two devices to establish a connection by.

### What are the Main Protocols Used at the Transport Layer?

- TCP (Transmission Control Protocol)
Used mostly for web browsing

- UDP (User Datagram Protocol 
Used for more continuous relaying of data - video/audio calling, live streaming

### What is the Data-Link Layer?

The data-link layer is the first layer (lowest layer) of the TCP/IP netowrk model. It's mainly responsible for identification of physical devices within the physical network in question. The data-link layer is used to identify the specific devices to send peices of data to, along the physical network (routers, switches, servers, and etc). The data-link layer, being the lowest layer, can be thought of as the interface between the physical network and the logical structure of the above layers.

The most common protocol used at this layer is the Ethernet protocol.

### What is the Internet Layer?

The internet layer is the layer between the data-link layer and transport layer in the TCP/IP network model. The internet layer is concerned with the addressing and identification of local networks data is to be sent to. The difference between this layer and the data-link layer is that the internet layer is concerned about the IP addresses across the network, and not worried about MAC addresses that are specific and unique to a certain device.

The internet layer is also responsible for fragmenting data from the transport layer, into smaller packets, if necessary.

### What is HTTP?

HTTP is a stateless protocol used at the application layer, and generally used for web browsing. HTTP is a protocol that establishes a format and standard for data being sent over the internet in context to accessing websites/webpages. HTTP is a request-response cycle between client and server, this involves a client making a request to a server and a server returning a response to the client.

HTTP within the client-server model is used to establish different methods for a server to interact with data sent by a client. This helps a server determine what do to with the given data from a client and what to send back in the HTTP response.

**Common HTTP methods used:**
- GET (used for getting assets or resources from a server)
- POST (used for submitting data to a server to be processed)
- DELETE (used to remove or delete existing data from a server)
- PUT (used to update existing data on a server)

### How is HTTP Used in The Client-Server Model?

HTTP within the client-server model is used to establish different methods for a server to interact with data sent by a client. This helps a server determine what do to with the given data from a client and what to send back in the HTTP response.

------------
------------

# TCP & UDP
- Have a clear understanding of the TCP and UDP protocols, their similarities and differences
- Have a broad understanding of the three-way handshake and its purpose
- Have a broad understanding of flow control and congestion avoidance

### What is TCP?

### What is UDP?

### Similarities and Differences of TCP and UDP?

### What is the TCP Three-way Handshake?

### What Problem Does the TCP Three-way Handshake Solve?

### What is Flow Control?

### What is Flow Congestion Avoidance?

------------
------------

# URLs
- Be able to identify the components of a URL, including query strings
- Be able to construct a valid URL
- Have an understanding of what URL encoding is and when it might be used

### Parts of a URL

### Create a Valid URL

### What is URL Encoding?

### What Problem Does URL Encoding Solve?

### When Would URL Encoding Be Used?

------------
------------

# HTTP and the Request/Response Cycle
- Be able to explain what HTTP requests and responses are, and identify the components of each
- Be able to describe the HTTP request/response cycle
- Be able to explain what status codes are, and provide examples of different status code types
Understand what is meant by 'state' in the context of the web, and be able to explain some techniques that are used to simulate state
- Explain the difference between GET and POST, and know when to choose each
- Have a basic understanding of the asynchronous nature of AJAX, and the kinds of features that it enables for web apps.

### What Are HTTP Requests?

### What Are HTTP Responses?

### How Are HTTP Requests and Responses Used Together?

### What is a Status Code?

### Give Some Examples of Common Status Codes

### What is 'State' in Context to The Web?

### How is State Simulated?

### What is AJAX (ASynchronous JavaScript And XML)?

### What is an HTTP Method?

### What is a `GET` Request?

### What is a `POST` Request?

------------
------------

# Security
- Have an understanding of various security risks that can affect HTTP, and be able to outline measures that can be used to mitigate against these risks
- Be aware of the different services that TLS can provide, and have a broad understanding of each of those services

### What Are Security Risks Associated with HTTP?

### What is TLS (Transport Layer Security)?

### What is Symetric Encryption?

### What is Asymetric Encryption?

### What is HTTPS?

### What is Encryption?

### What is Authentication?

### What is Integrity?

### What Services Does TLS Provide?

