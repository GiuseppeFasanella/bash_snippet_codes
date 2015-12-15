# Sed sui file
* Ti consiglio subito di usare l'APICE DRITTO E DOPPIO, cioe' `""` e non `'` e nemmeno \`.

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
sed -i "|day|d" file
#rimuove le righe che contengono day; l'opzione -i riscrive sullo stesso file
```
```
sed "|day|d" file
#stampa a schermo come verrebbe file dopo la rimozione
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

