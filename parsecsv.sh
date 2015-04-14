#! /bin/bash

#IFS is the current Input File Separator
OLDIFS=$IFS
#In my case the separator is the comma
IFS=","

while read user job uid location
do
    echo -e "\e[1;33m$user \
    ======================\e[0m\n\
    Role :\t $job\n\
    ID : \t $uid\n\
    SITE : \t $location\n"
done < $1
#with $1 I'm reading the first argument

IFS=$OLDIFS
#Just to be safe, I move back to the old IFS, not my own one
