Probabilmente questa cosa l'ho gia' spiegata da qualche altra parte, 

ma siccome in una struttura "a caselle" come questa, 

e' bene avere una certa ridondanza lo rispiego.

Supponiamo, come e' il mio caso ora, che io ho uno script:

```
sudo shutdown -h now
```

Non funzionera' perche' non hai modo di inserire la password di root, oppure non vuoi farlo

```
sudo visudo

Then edit that file to add to the very end:

username ALL = NOPASSWD: /fullpath/to/command, /fullpath/to/othercommand

eg

john ALL = NOPASSWD: /sbin/poweroff, /sbin/start, /sbin/stop
```
