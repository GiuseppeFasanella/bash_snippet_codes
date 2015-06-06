Supponiamo che alla fine di uno script, o in caso qualcosa accada, viene chiamato exit(2)

* Se fai il source dello script "exit" chiudera' il terminale dal quale lo script e' stato lanciato

* Se invece fai chmod +x script.sh e lo esegui con ./script.sh, lo script verra' eseguito in una subshell (in una
twiki ho trovato **when you execute a script a subshell is spawned** (deporre le uove per anfibi)

In ogni caso per **conoscere l'exit statement** dell'ultimo processo lanciato:

* echo $?
