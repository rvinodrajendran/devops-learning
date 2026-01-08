This file is created to include about the shell scripting

Shell will communicate the command between the user and kernel (linux os) & shell scripting is automating the task that are repetitive in nature and running one command will 
execute the list of things that is done using multiple commands

Examples of shell scripting
1.	Sample of first scipt
First create a file for writing a shell script with a name ending with .sh
Edit the file and start with #! /bin/bash and add the comments like echo “Welcome, this is my shell script” or any other commands like ls
Then change the file permission to chmod 755 or chmod +x filename.sh
2.	File existence check
For file existence check, use the similar way and create a file name, use script below 
#!/bin/bash

read -p "Enter file or directory name: " ITEM

if [ -e "$ITEM" ]; then
  echo "Exists"
else
  echo "Does not exist"
fi
3.	Using and working with variables
In variables, we assign variable some value like NAME=Vinod, here Vinod is a variable, rather than typing vinod everytime, we can use $NAME
#!/bin/bash
NAME="Vinod Kumar Rajendran, Msc"
echo "Welcome $NAME"
Welcome Vinod Kumar Rajendran, Msc
4.	Disk usage monitoring
Disk usage monitoring
To check the disk usage, we use df -h, -h is used for human readable format,
#!/bin/bash
Echo “Disk usage details running in system”
Df -h
Echo “Thanks”
5.	Work with system services.
Working with system services – to check the system process is running or not when this shell script is executed. 
#!/bin/bash

read -p "Enter process name: " PROCESS

if pgrep "$PROCESS" > /dev/null; then
  echo "Process is running"
else
  echo "Process is not running"
fi

