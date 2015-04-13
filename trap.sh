#! /bin/bash

# This thing does not work properly 

echo "pid is $$" #$$ is the process ID of the script
# To kill a process kill -9 -pid
# To terminate a process kill -15 -pid

#FILE= $(basename $0).pid #basename is just the name of the script, without the full path
exit 2
FILE="./bash.pid"

#trap 'rm -f $FILE; ' EXIT # trap works like this: if it finds and exit statement, it removes that file
#so exit is trapped

#echo $FILE

if [-e $FILE] # check if FILE exits already
then
    echo "$FILE exists"
    #exit 2
fi

echo $$ > $FILE
# Sending the process ID ($$) into a file. basename gives the name of the file, not the full path)
# now you can kill -9 -$(cat /tmp/trap.sh.pid)
#exit 0

#To see the exit code: echo $?