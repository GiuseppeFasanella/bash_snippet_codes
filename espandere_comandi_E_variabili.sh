#Per espandere un comando usa la parentesi tonda $(head bla bla)
#Per espandere una variabile o $file_to_play o meglio la parentesi graffa ${file_to_play}

###NOTA BENE: quando assegni file_to_play NON lasciare spazio tra =$ perche' altrimenti non funziona!!
###Madonna che sintassi pesante bash!

file_to_play=$(head -1 list.dat);
echo "file to play is" ${file_to_play};
