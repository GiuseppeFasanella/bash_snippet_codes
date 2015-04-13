#! /bin/bash

# -e in echo is for escape sequences
# in [ you specify the color you want
# 0 for dark colors, 1 for light colors
# here you echo the text and the you restore the black with [0m
#foreground colors 0;30-37 or 1;40-47
#background colors 0;40-47 or 1;40-47

echo -e "\e[0;31m error \e[0m "
echo -e "\e[0;33m warning \e[0m "
echo -e "\e[0;36m info \e[0m "

# seq generates a sequence from 0 to 7
for i in $(seq 7)
do
    echo -e "\e[1;3"$i"m I can see a raibow \e[0m "
done

# you must execute the script (chmod +x color_echo.sh), because if you source it, any exit statement will close the terminal
# Reason is, when you execute a script a subshell is spawned (deporre per uova di anfibi).
# If you source the script you're running on the very same shell and with exit you're going to close it

exit 0

#The access the statement "echo $?" and you'll know the exit statement of the last process

