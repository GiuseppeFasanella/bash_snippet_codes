#! /bin/bash -x

if [[ $1 = "ciao" ]] # This is comparison between string
then 
    echo "ciao anche a te"
    find /etc -maxdepth 1 -type d 
elif (( $1 <2 )) #This is comparison between numbers
then 
    echo "you said 1. I say two"
else 
    echo "The usage is: "$0 "ciao | 1"

fi