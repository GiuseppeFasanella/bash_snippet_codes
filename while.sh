while (( COUNT >0 ))
do
    (( COUNT -- ))
done

###Example 2
##Open 4 terminals
i="0"
while [ $i -lt 4 ]
do
xterm &
i=$[$i+1]
done
