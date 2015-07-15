while (( COUNT >0 ))
do
    (( COUNT -- ))
done

## Infinite loops => lo spazio dopo while e' importante (?)
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
