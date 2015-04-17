#IFS is the current Input File Separator
OLDIFS=$IFS
#In my case I want the separator to be the comma
IFS=","

while read user job uid location #I know that I have 4 colums in my file, sepated by ","
do

done < $1 #read file $1

IFS=$OLDIFS
#Just to be safe, I move back to the old IFS, possibly different from comma
