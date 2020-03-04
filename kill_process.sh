## Simple and clean
pgrep -af "string_to_search_for"
44983 python main.py --model model_da_bel_v1_15.py --oper build --load_start_dt 2016-01-01 --load_end_dt 2019-01-01 --reset_type model
kill -9 44983


## Other less clean versions
###############################################
ps aux | grep "run_alarm.py"
#La seconda colonna e' il process id (pid)
sudo kill -9 pid

###### Piu' rifinito

ps -ef | grep BDT | grep gfasane | grep cross | awk '{print$2}'
kill -9 $(ps -ef | grep BDT | grep gfasane | grep cross | awk '{print$2}')

