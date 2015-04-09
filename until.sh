#! /bin/bash

COUNT=1
SZ=$(du -b /tmp/file1 | cut -f1) #disk usage in bytes (only the first field, separated by space)
#until  [ -e /tmp/file1 ] # It checks for the existence of a file
#do
#    echo -e ". \c"
#    sleep 1
#done
#echo "file exists"

until  (( SZ > 100 )) # It checks for the existence of a file
do
    echo -e "$SZ \c"
    echo "Hello" >> /tmp/file1 # Appending, with just > it overwrites
    sleep 1
    (( COUNT ++ ))
    SZ=$(du -b /tmp/file1 | cut -f1)
done
echo "file is greater than 100 bytes"