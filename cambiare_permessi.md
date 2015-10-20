```
chmod xyz file
```

4= read

6= read and write

7= read write and execute

Questo perche' sono scritti in binario di rwx (read-write-execute), quindi per dire:

```
sola lettura, in rwx si scrive 100, quindi e' 4
```

x sono i permessi dell'utente corrente

y sono i permessi del suo gruppo

z sono i permessi di tutti gli altri

tipicamente io per /var/www assegno permessi

```
chmod 644 file
```
