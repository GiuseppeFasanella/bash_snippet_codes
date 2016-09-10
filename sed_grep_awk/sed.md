# Sed sui file
* Ti consiglio subito di usare l'APICE DRITTO E DOPPIO, cioe' `""` e non `'` e nemmeno \`. L'apice doppio e' utile perche' 
  nel caso hai una variabile di bash che vuoi espandere dentro sed. Con l'apice singolo non funziona, con il doppio si'.

* L'altro mio consiglio e' di utilizzare `|` e non `/`.

Il perche' di queste buone norme e' spiegato qui:
https://github.com/GiuseppeFasanella/bash_snippet_codes/blob/master/sed_grep_awk/buone_norme_sed.md

Gli usi fondamentali di sed sono:

**Sostituzione di parole/lettere**
```
sed "s|day|night|" file > file_2
#(In questo modo viene sostituita solo la prima occorrenza (per ogni riga) di day con night)
```
```
sed "s|day|night|g" file >file_2
#(g sta per globally: tutte le occorrenze, nella riga, di day)
```
```
sed "s|day|night|" file
#stampa a schermo come sarà il file, ma non lo modifica
```

*E' utilissimo, quando scrivi una tabella in latex sostituire i `_` con `\_`.
In sed `\` e' un carattere riservato -> ce ne vogliono 3 
```
sed -i 's/_/\\\_/g' $file
You need 3 backslashes when trying to add 1 \; 4 for 2 etc :)
```
**Rimozione di righe contenenti particolari parole**
```
NON CAPISCO PERCHE' |day|d non funziona --> ho dovuto fare /day/d --> CONTROLLARE!!!
sed -i "|day|d" file
#rimuove le righe che contengono day; l'opzione -i riscrive sullo stesso file
```
```
sed "|day|d" file
#stampa a schermo come verrebbe file dopo la rimozione
```
```
#rimuovere tutte le righe che NON contengono un certo testo
sed '/text\|blah/!d' file
```
* Attento che la rimozione e' greedy, a differenza della sostituzione: TUTTE LE RIGHE che matchano day vengono sostituite, anche quelle che hanno `dayton` per esempio, perche' matchano comunque day (questa cosa mi ha fregato
in passato con la sveglia del raspberry)

* Puoi anche eseguire piu' sostituzioni in una singola istruzione aggiungendo un `;` tra una istruzione e la successiva

**Regular expressions**
```
sed "s|^d|k|;s|^s|d|;"
#Sostituisce una d a inizio riga con una k e una s a inizio riga con una d
sed "s|[0-9]*|k|" 
# * vuol dire 1 o piu' (o 0 o piu'?) occorrenze del carattere precedentemente specificato nelle parentesi quadre
#quindi un numero in questo caso, viene sostituito con k
```
Per le regular expression io ho usato questo e mi sono trovato bene

http://www.tutorialspoint.com/unix/unix-regular-expressions.html

**Sed sulle stringhe**
```
echo "cia_o_" | sed 's|_||'
#Sostituisce solo la prima occorrenza
#Risultato e' ciao_
```
```
echo "cia_o_" | sed 's|_||g'
#Sostituisce globalmente, tutte le occorrenze
ciao
```

Se vuoi modificare la stringa, puoi usare echo o basename
```
var="ciao__"
var=$(echo $var | sed 's|_||')
echo $var
ciao_
#Puoi anche usare basename invece che echo
var=$(basename $var | sed "s|_||")
```

**Script in sed**
```
crea sed/tex.sed
############################
s|[-]bad| $R9 < 0.94$|
############################

echo "-bad" | sed -f sed/tex.sed > test.dat
oppure
sed -f sed/tex.sed nome_file_da_modificare > reindirizzamento.dat
```

Lo script che uso per modificare i miei .tex e' questo:

tex.sed
```
#sed -f tex.sed nome_file_da_modificare > reindirizzamento
s|a'|à|g
s|E'|È|g
s| e' | è |g
s|che'|ché|g
s|ne'|né|g
s|e'|è|g
s|i'|ì|g
s|o'|ò|g
s|u'|ù|g
#Capita che citazioni tipo "Tutto quello che ho" ->"Tutto quello che ò' 
s|à'|a"|g
s|è'|e"|g
s|ì'|i"|g
s|ò'|o"|g
s|ù'|u"|g
```

Interfacciato con cleaner_tex.sh:
```
for f in `ls *.tex`; do
    f=$(echo $f | sed 's|.tex||')
    echo $f
    sed -f tex.sed ${f}.tex > ${f}_temp.tex
    #se sei sicuro:                                                                                   
    #mv ${f}_temp.tex ${f}.tex
done
```
