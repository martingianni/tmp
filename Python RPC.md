
# Python RPC

## Server requirements
- Server should use port 38000
- Server will be stopped pressing CTRL+C
- Server will be in a constant loop untl we stop it
- Server functions: print, set, get, query_all_keys (details on txt book)

## Client requirements
- Client must support an optional --server argument (parameter)(default = localhost)
- Client will try to connect from port 38000 to 38010 before give up

## Basic server/client steps
- Check if we have python on the server where we are going to work (type python on your linux box to verify). If you dont have it then install it using yum/apt, etc.
- Create a server.py file and add the basic code for RPC server (Example: https://docs.python.org/2/library/simplexmlrpcserver.html)
- Create a client.py file and add the code for the client (same link that server, read careful)
- Give it a try, execute your server and then your client

> Now we have the basic server/client funcionality and we are ready to add some complexty

## Adding our requirements
- Change the server.py to use the 38000 port and test if stops using CTRL+C
- Add the requires functions to the server file (if you see in the file there are a function defined like def div(self,x, y)). In order to add your functions you just need to define them

> Comment: add each function one by one, DO NOT add the 4 functions at once, go one by one

- In order to show everything on the server "side" we will need to enable logging or debug as true
- Now is time to work on your client, you need too add the two requirements to it, the --server argument that is a "must" is where you will use the argparce (https://docs.python.org/3/library/argparse.html) that we talk last days. Remember default parameter is default, but the user can use the --server parameter to use a different one

> Comment: do not forget the "connection" loop between ports 38000-38010

## Last review
* Review all teh requirements one more time from the textbook and perform a quick test of everything
* Hope this helps you

