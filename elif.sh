## Stai MOLTO attento agli spazi prima e dopo le parentesi quadre, come pure lo spazio $1 SPAZIO=SPAZIO"ciao": altrimenti NON funziona un cazzo
if [[ $1 = "ciao" ]] #comparison between string
then 
first instruction #No needs for ; here
second instruction 
elif (( $1 <2 )) #comparison between numbers
then
else
fi

Sempre per le stringhe puoi fare anche cosi':
if [ "$a" = "$b" ]

if [ "$a" != "$b" ]

La pagina di riferimento e' questa:

http://tldp.org/LDP/abs/html/comparison-ops.html

#se vuoi paragonare numeri interi DEVI fare cosi', usando eq
if [ "$1" -eq "2" ] ||  [ "$1" -eq "3" ]
then
    echo "ciao"
fi


## Se invece vuoi scrivere tutto su una riga sola, vanno usati i ;
if [[ $1 = "ciao" ]];then echo "ciao";fi
