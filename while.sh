#! /bin/bash

COUNT=10
while (( COUNT > 0 ))
do
    echo -e "$COUNT \c" #This is telling "all in one line"
    #sleep 1
    (( COUNT -- ))
done
echo -e "\n\nFIRE!!"