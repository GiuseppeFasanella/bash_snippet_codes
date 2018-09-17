Hai un codice in python che richiede una stringa. Questa stringa ha uno spazio, es --st_date='20180101 00'

Hai un wrapper bash che chiama python

Il bash deve essere cosi'
```
st_date='20180101 00'

### Ora se fai l'espansione senza apici, non capisce un cazzo per via dello spazio bianco --> pensa siano 2 opzioni
##python test.py -M ${st_date}

## La soluzione e': espandere prima (e hai 2 opzioni) e poi farne una stringa con un apice prima e dopo, per avere 1 sola stringa buona,
con lo spazio
python test.py -M "${st_date}"
```
