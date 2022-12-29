#!/bin/bash

# Set the hostname, port, username, and password for the remote FTP server
HOST=ftp.diypa571.com
PORT=21
USERNAME=username
PASSWORD=password

# Connect to the FTP server and login with the specified username and password
ftp -n -u "ftp://$USERNAME:$PASSWORD@$HOST" $PORT << EOF

# Switch to the public directory
cd public

# List the files in the public directory
ls

# Disconnect from the FTP server
bye
EOF
