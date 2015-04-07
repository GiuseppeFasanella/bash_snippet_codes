#! /bin/bash -x

# Qui sto dicendo che test.sh deve essere eseguito con "bash -x" (l'opzione -x serve per debuggare)
# echo $PATH ti dice la lista di cartelle tra le quali vengono cercati gli eseguibili

# se vuoi aggiungere una cartella alla variabile di ambiente PATH, fai
# export PATH=$PATH:~gfasanel/bin 
# crea la cartella bin (se non c'e' gia')
# Questo nuovo path vale solo finche' la shell e' aperta
# Per aggiungerlo in maniera permanente, devi modificare ~/.bash_profile aggiungendo 
#echo 'export PATH=$PATH:~gfasanel/bin'  >> ~/.bash_profile


# a questo punto, se rendi eseguibile test.sh con "chmod +x test.sh", da QUALUNQUE CARTELLA lancerai il comando test.sh questo sara' eseguito in bash (perche' glielo hai detto alla riga 1). 
## Ovviamente se decidi di non farlo, o devi fare cd della cartella in cui e' lo script e lanciarlo, oppure gli devi dare il path "/path/test.sh"
## Ulteriore nota: puoi rendere eseguibile il file SOLO a te con 
## chmod u+x test.sh
## per vedere i permessi di un file "ls -l"

if [[ $USER="gfasanel" ]] 
    # If you want to compare strings use double SQUARE brakets
    # If you want to compare integers use double ROUND brakets
then
    echo "I am gfasanel"
else
    echo "I am not gfasanel"
fi
