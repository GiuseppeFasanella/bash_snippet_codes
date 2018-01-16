ps aux | grep "run_alarm.py"
#La seconda colonna e' il process id (pid)
sudo kill -9 pid

###### Piu' rifinito

ps -ef | grep BDT | grep gfasane | grep cross | awk '{print$2}'
kill -9 $(ps -ef | grep BDT | grep gfasane | grep cross | awk '{print$2}')

