```
sudo find / -name '*' -size +500M
```
```
find / -name 'program.c' 2>/dev/null
Note : 2>/dev/null is not related to find tool as such. 2 indicates the error stream in Linux, 
and /dev/null is the device where anything you send simply disappears. So 2>/dev/null 
in this case means that while finding for the files, 
in case any error messages pop up simply send them to /dev/null i.e. simply discard all error messages.
```
```
find / -name 'program.c' 2>errors.txt
```
