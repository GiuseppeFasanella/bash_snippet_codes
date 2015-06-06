##Not sure this works

###My  script
##At some point exit(2)
trap 'rm -f $FILE; ' EXIT 
# trap works like this: if it finds and exit statement, it removes that file
#so exit is trapped
