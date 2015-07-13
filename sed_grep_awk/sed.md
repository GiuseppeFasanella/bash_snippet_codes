# Sed sui file

Noto subito che l'apicetto deve essere dritto: cioe' `'` e NON \`, mentre il forward slash `/` puo' essere anche sostituito con `|` .
Su questo punto, va anche detto che se dentro l'espressione di sed c'e' una variabile di bash da espandere, vanno usati gli apici doppi `"`

    file_to_play=$(head -1 list.dat)
    echo "file to play is " ${file_to_play}
    sed -i "/${file_to_play}/d" list.dat

Con l'apice singolo NON FUNZIONA IL MALEDETTO!

    sed -i '/${file_to_play}/d' list.dat

**Quindi io direi che e' buona norma usare sempre l'apice doppio `"` e buona notte**

Gli usi fondamentali di sed sono:

**sostituzione di parole/lettere**

sed 's/day/night/' file > file_2

(In questo modo viene sostituita solo la prima occorrenza (per ogni riga) di day con night)

sed 's/day/night/g' file >file_2

(g sta per globally: tutte le occorrenze, nella riga, di day)

sed 's/day/night/' file

stampa a schermo come sarà il file, ma non lo modifica

**rimozione di righe contenenti particolari parole**

sed -i '/day/d' file

rimuove le righe che contengono day

l'opzione -i riscrive sullo stesso file

sed '/day/d' file

stampa a schermo come verrebbe file dopo la rimozione

* Puoi anche eseguire piu' sostituzioni in una singola istruzione aggiungendo un `;` tra una istruzione e la successiva

sed 's/^d/k/;s/^s/d/;'

Sostituisce una d a inizio riga con una k e una s a inizio riga con una d

# Sed sulle stringhe

Sostituisce solo la prima occorrenza

echo "cia_o_" | sed 's/_//'

ciao_

Sostituisce globalmente, tutte le occorrenze

echo "cia_o_" | sed 's/_//g'

ciao


Se vuoi risostituire, fai cosi'

var="ciao__"

var=$(echo $var | sed 's/_//')

echo $var

ciao_

Puoi anche usare basename invece che echo

var=$(basename $var | sed 's/_//')
