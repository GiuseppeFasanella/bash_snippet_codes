awk serve per selezionare colonne di testo ed eventualmente per sostituirle

Supponi di avere un file /tmp/test.dat
```
Giuseppe: Fasanella: intellettuale
Amilcare: Ponchielli: musicista
```

```
#Seleziona la prima colonna, specificando che le colonne sono divise dal Field :
awk -F":" '{print $1}' /tmp/test.dat
#Seleziona prima e terza colonna
awk -F":" ' {print $1,$3} ' /tmp/test.dat
#Seleziona la prima colonna e mostra i primi 10 risultati
awk -F":" ' NR==1,NR==10{ print $1 } ' /tmp/test.dat
#Sostituire a schermo la prima colonna, qualsiasi cosa contenga, con se stessa seguita da _newText
awk '$1=$1"_newText"'
#Sostituire in un file una particolare colonna
Quindi, dovresti fare qualcosa del genere: se la prima colonna e' d1 la seconda colonna viene cancellata
cat file | awk '{ if ($1 == "d1") {$2 = ""}; print }'
awk '{ if ($1 == "d1") {$2 = ""}; print }' infile > outfile
Nota che INFILE e OUTFILE devono essere diversi, se riscrivi sullo stesso file e' un casino

##Match parziale tra stringhe
$6 ~ /mplayer/ 
##Se la sesta colonna contiene "mplayer"

##Passare variabili bash
awk -v min=$1 -v hours=$2 '{ if ($3 == "*" && $6 ~ /mplayer/ ) {$1 = min; $2 = hours; print} else {print} }'

```
### Crea un report con una grafica migliorata

awk -F":" ' { print length($1),length($3) } ' /tmp/test.dat

In base alle length massime (8 e 14 in questo caso)

awk -F":" '{ printf "%-8s %14s\n",$1,$3 } ' /tmp/test.dat

* %- left justified, % right justified
* s string, d integers

### Per avere una tabellina carina a schermo

awk -F":" '

BEGIN {

print "========================================="

printf "%-8s %-14s\n" , "USER","UID"

print "========================================="

}

{ printf "%-8s %14s\n",$1,$3 } ' /tmp/test.dat

## Awk avanzato

**Puo' essere utile inserire tutto cio' che awk fa in un pars.awk** tipo questo:

BEGIN{

}

(NF!=0){

    if ( $1 ~ /runNumber/){
    
      split($1,name,"-runNumber_");
      
      split(name[2],runNumbers,"_")
      
      sub("e",".",name[3]);
      
      sub("e",".",name[4]);
      
      print name[1], "runNumber" , runNumbers[1], runNumbers[2], 1-$7/100., $8/100. #$3, $4, $5, $6                                                                              
    }
    
}

\#Comment

END{

}

e chiamarlo con

* `awk -F t -f pars.awk`
