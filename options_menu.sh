#!/bin/bash
trap '' 2  # ignore control + c: if you type ctrl c (corresponding to signal 2), it sees it like ''
while true
do
  clear # clear screen for each loop of menu
  echo "================="
  echo "Menu ---"
  echo  "================="
  echo "Enter 1 to list users 1:"
  echo "Enter 2 for calendar 2:"
  echo "Enter q to quit q:"
  echo -e "Enter your selection here and hit <return> .. \c"
  read answer  # create variable to retains the answer
  case "$answer" in #"" just to be sure
   1) who
      uptime;;
   2) cal ;;
   q) exit ;;
  esac
  echo -e "Hit the <return> key to continue.. \c"
  read input ##This cause a pause so we can read the output
  #of the selection before the loop clear the screen
done
