  #!/bin/bash
  #Diypa571
 # Diyar.parwana@gmail.com
 #script that sets the permissions of all files in the current directory and its subdirectories to 755
 #!/bin/bash

# Set the permissions of all files in the current directory and its subdirectories to 755
 
 

# Set the interval between runs to 10 minutes (600 seconds)
INTERVAL=600

while true
do
  # Set the permissions of all files in the current directory and its subdirectories to 755
  chmod -R 755 *

  echo "Permissions of all files in the current directory and its subdirectories have been set to 755"

  # Sleep for the specified interval before running the command again
  sleep $INTERVAL
done
