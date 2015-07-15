while (( COUNT >0 ))
do
    (( COUNT -- ))
done

## Infinite loops => dopo il while e prima dei : c'e' lo SPAZIO, mi raccomando !!
while :
do
	echo "infinite loops [ hit CTRL+C to stop]"
done
##

###Example 2
##Open 4 terminals
i="0"
while [ $i -lt 4 ]
do
xterm &
i=$[$i+1]
done
