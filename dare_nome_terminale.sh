In ~/.bashrc ho inserito questa funzione

```
function title_terminal(){
#mistic code to give a name to a GNOME terminal                                                                                                                                 
if [[ $1 = "" ]]; then echo "you should specify a name for your terminal"; else PS1="\[\e]0;${1}\a\]\u@\h:\w$ "; fi
}
```
