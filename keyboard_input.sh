#! /bin/bash
while true
do
    echo -e "What do you want me to take from keyborad?: \c"
    read input
    if [[ $input = q ]]
    then
        #exit #This closes the terminal
	echo "Done"
	break
    fi
done

