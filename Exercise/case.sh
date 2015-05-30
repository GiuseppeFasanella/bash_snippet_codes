#! /bin/bash 

case $1 in 
    "directory")
	find /etc -maxdepth 1 -type d
	;;
    "link")
	find /etc -maxdepth 1 -type l
	;;
     *) # This is like else
	echo "I don't know what to do"
	;;
esac


