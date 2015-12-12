awk serve per selezionare colonne di testo

Supponi di avere un file /tmp/test.dat

`Giuseppe: Fasanella: intellettuale`

`Amilcare: Ponchielli: musicista`

* Seleziona la prima colonna

awk -F":" ' { print $1 } ' /tmp/test.dat

* Seleziona prima e terza colonna

awk -F":" ' { print $1,$3 } ' /tmp/test.dat

* Seleziona la prima colonna e mostra i primi 10 risultati

awk -F":" ' NR==1,NR==10{ print $1 } ' /tmp/test.dat

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
