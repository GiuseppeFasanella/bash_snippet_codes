#! /bin/bash

echo "pid is $$" #$$ is the process ID of the script
echo $$ > /tmp/$(basename $0).pid 
# Sending the process ID ($$) into a file. basename gives the name of the file, not the full path)
COUNT=0
while(( COUNT < 10 ))
do
    echo "COUNT is $COUNT"
    sleep 10
    (( COUNT ++ )) #Remember: this is a numerical operation
done
