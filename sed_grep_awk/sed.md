# Sed sui file

sed 's/day/night/' file > file_2

(In questo modo viene sostituita solo la prima occorrenza (per ogni riga) di day con night)

sed 's/day/night/g' file >file_2

(g sta per globally: tutte le occorrenze, nella riga, di day)

sed 's/day/night/' file

stampa a schermo come sarà il file, ma non lo modifica

sed -i '/day/d' file

rimuove le righe che contengono day

l'opzione -i riscrive sullo stesso file

sed '/day/d' file

stampa a schermo come verrebbe file dopo la rimozione

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