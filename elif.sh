## Stai MOLTO attento agli spazi prima e dopo le parentesi quadre, altrimenti NON funziona un cazzo
if [[ $1 = "ciao" ]] #comparison between string
then 

elif (( $1 <2 )) #comparison between numbers
then
 
else
 
fi

## Se invece vuoi scrivere tutto su una riga sola, vanno usati i ;
if [[ $1 = "ciao" ]];then echo "ciao";fi
