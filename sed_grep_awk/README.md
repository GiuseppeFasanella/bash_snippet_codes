**sed** serve per manipolare le parole all'interno dei file

Usa sed [cosi'] (https://github.com/GiuseppeFasanella/bash_snippet_codes/blob/master/sed_grep_awk/sed.md)

**grep** serve per selezionare specifiche righe che matchiano dei criteri di ricerca

Usa grep [cosi'] (https://github.com/GiuseppeFasanella/bash_snippet_codes/blob/master/sed_grep_awk/grep.md)

**cut** si usa per selezionare colonne di testo, tipicamente in associazione con grep.

Supponi di avere un file con campi separati da virgole:

es, `test.dat`:

ciao, amico, Roma

da terminale:


#### grep "ciao" test.dat | cut -f1 -d ',' 

Nello specificare il delimiter (ad esempio uno spazio vuoto) puoi usare l'**apicetto SINGOLO** `-d ' '` o anche l'apicetto doppio `-d " "`

Mi pare si possa usare anche \ ma perche' poi?

*grep "ciao" test.dat | cut -f1 -d\,*

(cioe' vuoi prendere solo le righe che contengono "ciao" e tagliare la colonna 1 (field 1) identificata dal separatore "," (d sta per delimiter). Se non specificato il delimiter e' lo spazio vuoto)

* grep "ciao" test.dat | cut -f1,3 -d\, 

(Vuoi i campi 1 e 3)


**awk** serve per selezionare specifiche colonne di testo (puo' essere fatto anche con `cut -f x` cioe' seleziona la colonna x). Usa awk [cosi'] (https://github.com/GiuseppeFasanella/bash_snippet_codes/blob/master/sed_grep_awk/awk.md)

