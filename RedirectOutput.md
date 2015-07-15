./script/my_script.sh > debug.txt

./script/my_script.sh >> debug.txt (append mode)

./script/my_script.sh &> debug.txt (la & ridirige anche i messaggi d'errore)

> scrive solo sul file, puoi usare tee se vuoi scrivere sul file e a schermo

ls | tee file

ls | tee –a file (append mode)
