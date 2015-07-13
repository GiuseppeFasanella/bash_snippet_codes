#! /bin/bash                                                                                                                                                                                                        

play(){ 
    ##Nota bene: la funzione anche se prende argomenti e' sempre play()
    ##Nota anche che non ci sono ; tra una istruzione e la successiva
    echo "playing file from list.dat"
    file_to_play=$(head -1 list.dat)
    echo "file to play is " ${file_to_play}
}

#Solo quando chiami la funzione gli passi gli argomenti di fianco ! E' un po' strano ma e' cosi'
play $1

