# Diyar March 2019
# 20202
# Scaning a computer for open ports...
# And a send a message....

#!/bin/bash

# Set the IP address of the destination host
DEST_IP=192.0.2.0

# Scan the IP address for open ports using nmap
OPEN_PORTS=$(nmap -p 1-65535 $DEST_IP | grep "open" | awk '{print $1}' | tr '\n' ' ')

# Set the message to be sent
MESSAGE="Hello, World!"

# Check if any open ports were found
if [ -z "$OPEN_PORTS" ]
then
  # No open ports were found
  echo "No open ports were found on $DEST_IP"
else
  # At least one open port was found
  # Send the message using netcat on the first open port
  echo $MESSAGE | netcat -u $DEST_IP $(echo $OPEN_PORTS | awk '{print $1}')

  echo "Message sent to $DEST_IP on port $(echo $OPEN_PORTS | awk '{print $1}')"
fi
