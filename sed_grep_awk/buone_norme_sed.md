In generale l'apice singolo va bene, ma se dentro l'espressione di sed c'e' una variabile di bash da espandere, vanno usati gli apici doppi `"`
```
sed -i "/${file_to_play}/d" list.dat
```
Ma con l'apice singolo non funzionera' perche' non riesce a gestire il fatto che file_to_play e' una variabile bash da espandere
```
sed -i '/${file_to_play}/d' list.dat
``` 
In generale, anche `/` va bene, ma se ad esempio (e mi e' capitato) vuoi usare sed in combinazione con pwd

```
sed -i "s/${pwd}//" file_list.dat
```

Avrai il problema che pwd spara `/` ovunque e quindi lui si confonde. Di conseguenza e' meglio usare un delimitatore meno comune, ad esempio `|`.


**Quindi io direi che e' buona norma usare sempre l'apice doppio `"` e "|" come delimiter e buona notte**
