#Per espandere un comando usa la parentesi tonda $(head bla bla)
#Per espandere una variabile o $file_to_play o meglio la parentesi graffa ${file_to_play}

file_to_play=$(head -1 list.dat);
echo "file to play is" ${file_to_play};
