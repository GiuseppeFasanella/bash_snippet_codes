Se vuoi vedere i processi che stanno girando

`ps -ef`

Se vuoi i processi dell'utente gfasanel

`pgrep -l -u gfasanel` oppure `ps -ef | grep gfasanel`

Per **killare uno specifico processo**

`kill process_ID` (che hai ricavato al passo prima, con `ps -ef` )

Per **killare tutti i processi di un certo tipo**, ad esempio vuoi killare tutti i processi di firefox aperti

`pkill firefox` oppure `killall firefox` (tra pkill e killall ci sono delle differenze. Da quanto ho capito killall richiede
un match esatto, mentre pkill no. Altre sottili differenze non mi interessano al momento)

Per killare tutti i processi dei quali possiedi i permessi

`kill -15 -1` oppure anche `kill -9 -1` (vedi man kill per i dettagli)
