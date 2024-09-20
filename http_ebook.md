# HTTP Book *([From Launch School](https://launchschool.com/books/http))*

## What is HTTP?

**HTTTP** is a protocol at the *application layer* 

## DNS

Is a server that houses the IP addresses tied to a web URL. Because we don't want to have to memorize IP addresses when we want to access a webpage, we can instead memorize a more readable URL name and type that into the URL bar to access a website.

DNS servers are placed in multiple places throughout the world in a hierarchical pattern. If one DNS server in the hierarchy chain doesn't find the respective URL in its' database then the URL is passed onto the next DNS in the hierarchy chain, and so on...

## "Clients" & "Servers"

A client is the application issuing an HTTP request to a computer (server), while a server is giving a response back to the issuing application.

An example of a client you would commonly use is your web browers like Firefox, Safari, Brave, Chrome, etc. The browser makes an HTTP request to the server in question and the server sends an HTTP response back to the browser for it to render.

---

## Parts of a Server

In the most simple diagram when explaining a server we tend to think of an image of a client computer and a server computer, with lines drawn between them illustrating the HTTP request and response.

It's not as simple though. There are multiple other layers and applications in a server, and sometimes there are even multiple requests a server may make to other servers and so on...

Under the hood, a server is a lot more complicated. Here are the 3 main parts nested within a server:

### Web Server

The web server, generally speaking, is a part of a server that holds static assets like HTML, CSS and JS files. These are files that can often be sent back in an HTTP response for a client to render the files. It can do *some* dynamic content generation too.

### Application Server

The application server is the part of a server that handles business logic and updating information. Often an application server is more associated with creating dynamic changes on the client's end as well as heping to create a sense of *"state"* on the client's end. 

### Data Store

This is where persistent data is kept. Often an application server will be writing or reading from a data store for specific information pertaining to the request that was made. Often times this is where information relative to a specific user of a web app would be stored.

---

## "Resources"

Resources often refers to assets in the creation of a rendering of a webpage. Some examples of resources would be: 
- HTML file
- JS file
- CSS file
- Images
- Video

## HTTP is a Stateless Protocol

HTTP is a *stateless* protocol, meaning, the protocol itself is not keeping track of the state of the web application in use. Each individual HTTP request and response is separate from the next or the one before. In other words, there isn't a persistent state being tracked between each request and response.

*State* can be simulated using dynamically generated content, but HTTP itself is not inherently dynamic or *"stateful"*.

HTTP was purposefully designed to be stateless to give the protocol itself simplicity and scalability. If HTTP had state built into it, it would be a much more complex and less adaptable and scalable protocol. By making developers and serverswork around HTTP's stateless-ness, the protocol itself stays intact and less complex to understand.

## Simulating *State* With HTTP

Given the desire for having *state* and more dynamic user experiences with web applications, developers have found ways to simulate state when using HTTP.

### Cookies

A **cookie** is used to store data for a specific domain or website. Cookies are stored on the client side in the user's browser. The data stored in a cookie is usually associated with the state of the domain or website in some way. 

#### Flow of Cookies...

When visiting a website or domain, a cookie can be sent back in the HTTP response from the server for the client browser.

The cookie can be sent in an HTTP request and used by the server to recognize a user and simulate a more stateful experience.

The data stored in a cookie must be less than 4KB in size and text data only - mostly key-value pairs. 

**What's stored in a cookie?:** 
- Session ID
- Authentication tokens
- A user's preferences
- Analytics and/or tracking data
- Text data

**What's NOT stored in a cookie?:** 
- Binary data
- JS, HTML or CSS files
- Images, videos, audio

As stated previously, cookies don't directly make dynamic changes but allow for the server and/or client to read their data to make dynamic changes.

### Session ID

This a value stored in a cookie. The session ID is a unique identifier for the current session a user is having on a site/domain. 

**Here's how a session ID generally works:**

1. Upon logging into a website/domain, the server sends back a unique session ID in the HTTP response (generally stored in a cookie)
2. Each subsequent HTTP request by the client browser sends the session ID in the request.
3. The server identifies that the session ID matches the unique session ID it made previously and continues to send a dynamic *"session reponse"*.
4. If the session ID does not match or is not present, the server will usually respond with the login page, essentially loggin a user out of their current session on that site.

Session IDs are crucial for creating a persistent, stateful experience in the stateless HTTP protocol. They allow websites to:
- Keep users logged in across multiple page loads
- Maintain user-specific data (like shopping cart contents)
- Provide personalized experiences without requiring login for every action

**A way to see this in action:**
1. Open up the dev inspector tools in your browser
2. Go to a website that you use
3. Open up the cookies window
4. Login to that website
5. Notice that a session id is now present in the cookie
6. Continue to use the site normally.
7. Now manually remove the session id from the cookie
8. Notice that you now automatically sign out of your current session on the website.

### AJAX *(Asynchronous JavaScript And XML)*

Is a technique used to create a more dynamic experience using asynchonous JavaScript.

---

## What is a URL (Uniform Resource Locator)

Is a string of text used to:
1. Identify the location of a server.
2. How a server should respond

### Components of a URL

Here is a breakdown of each of the different parts of a URL:

#### Scheme

This is the first part of a URL that is used to specify what protocol to use.

**Example:**

`https://example.com:400/path/to/resource?query1=value&query2=another+value`

`https` is the scheme - Specifies to use the secure HTTP protocol.

#### Host

The host is the next part of a URL and specifies the domain to be looked up and accessed.

**Example:**

`https://example.com:400/path/to/resource?query1=value&query2=another+value`

`example.com` is the host - Specifies what domain to send request to.

#### Port

The port is used to specify what port on the server is to be accessed. Generally the port is not included and by default the port is `80`. The port (when included) comes after a semicolon following the domain name.

**Example:**

`https://example.com:400/path/to/resource?query1=value&query2=another+value`

`:400` is the port

#### Path

The path is the Unix-styled file path to a resource on the domain server.

**Example:**

`https://example.com:400/path/to/resource?query1=value&query2=another+value`

`/path/to/resource`  Indicates the location of the resource on the server.

#### Query Parameters

Query parameters provide additional information for the server to look-up or find data or resources on the server-side. Query parameters are specified by a `?` following the path.

**Example:**

`https://example.com:400/path/to/resource?query1=value&query2=another+value`

`?query1=value&query2=another+value` is the query parameter

#### Query Parameter Values

These are the values associated with the query, these are the values following the `=` sign.

**Example:**

`https://example.com:400/path/to/resource?query=value&query2=another+value`

`=value` and `=another+value` are examples of query values.

`=value` being the value for `query1`.
`=another+value` being the value for `query2`.

#### Query Separators

To include multiple queries, a user can separate query parameters with `&`. 

**Additional info:** To include spaces in the query you can use `+` or `%`.

## Security

### HTTPS 

### Same-origin Policy

### Session Hijacking 

### Cross-site Scripting.

