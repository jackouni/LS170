# Netcat

Netcat is an app that allows us to tinker, modify and customize network connections. Netcat can use either TCP or UDP protocols. Often described as the *"Swiss Army Knife of networking"*, Netcat can:

1. Make connections
2. Connect ports together
3. Listen for incoming messages to a port
4. Send messages from one port to another
5. Transferring files 
6. And more

---

## Using Netcat

Here are the basic of using Netcat for networking...

A command generally will start with `netcat` or `nc`.

Following this you can append different flags after `-`. 

**Here are some common flags for this course:**

### `v`

This flag tells Netcat to enter *verbose mode*, meaning Netcat will be verbose in the output it displays to the terminal. Simply, it will print out more information for you.

### `l`

This flag tells Netcat to enter *listen mode*, meaning it will be listening for incoming messages/connections.

**For example:**

`netcat -vl 2550` will tell Netcat to listen on the local port `2550` for any incoming connections. By default Netcat will be in *client mode* meaning it will be sending out messages to a specified port. The `v` flag is just for entering *verbose mode* so we can see more information outputted to the terminal.

You can expect an output similar to this after running this command: `Listening on [0.0.0.0] (family 0, port 2550)`

### `p`

On MacOS, you may need to append this flag to tell Netcat you're going to be listening/sending on a port.

---

## Sample Connection

To demonstrate a basic use of Netcat, start by opening your terminal and running this command:

`netcat -vl 2335`

This will tell Netcat to listen to any incoming connections on local port `2335`

> If you're on MacOS you may need to run `netcat -vlp 2335` instead. The additional `p` flag is used on MacOS Netcat to specify that we're listening on a port.

You should now see a new line. This new line will display any incoming messages or data.

Now, open a new terminal window and run this command:

`netcat -v localhost 2335`

This command will tell Netcat to connect to the connect to the local port `2335`. `localhost` tells Netcat that the port to be connected to is located on the local machine.

Now if you go back to the listening terminal. You'll see something like this: `Connection from 127.0.0.1:63063` *(IP address and port will may vary)*

As stated, this means that the listener received an incoming connection from the local client port that we connected via the other terminal window.

Now, in the client terminal window write `Hello World!!` and hit ENTER...

If you switch back to the listener terminal window, you'll see the `Hello World!!` was sent. Congratulations, you've set up your first local connection via Netcat!

Even though we've established a "*client* and *server*" connection, you can still send messages back and forth between the two ports. Netcat doesn't really distinguish between client and server once the connection is set up in this example.

#### Ending a Netcat Connection:

When finished, run `Ctrl+C` to end the connection.

---