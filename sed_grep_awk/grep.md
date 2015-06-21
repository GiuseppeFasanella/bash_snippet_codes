**Mostra a schermo le righe che matchano** un certo pattern
* grep -ri "pattern" ./

Cioe' cerco in tutti i file (opzione ricorsiva) presenti nella cartella ./ il "pattern". 

(La ricerca e' case insensitive se passi l'opzione -i)

**Ignora particolari righe** (le righe con uno #)
* grep -v "#" file | grep "pattern"

-v inverte i criteri di ricerca e manda in pipe file emandato da tutte le righe che contengono #

