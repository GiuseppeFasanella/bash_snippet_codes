#!/usr/bin/ksh                                                                                                                                                        
echo 'START'
############################################                                                                                                                          
#                                         SETTING                                                       #                                                             
###########################################                                                                                                                           
now="$(date +'%d%m%Y')"
user_name=gfasane
source_path='/home/gfasanella/workspace/WindModelNational/'
program_name='python'
script_name='BDT_Model_predictor.py'
#farms_id='247'                                                                                                                                                       
#farms_id=[247 374 546 606 626 666 667 686 740 741 742 743 744 1044 1045 1147 1186 1187 1226 1252 1254 1359 1360 1361 1362 1363 1364 1365 1366 1367] #from 1255 to 12\
64 removed -->30 farms --> EON FREE PORTFOLIO                                                                                                                         
#farms_id='743 744 1044 1045 1147 1186 1187 1226 1252 1254 1359 1360 1361 1362 1363 1364 1365 1366 1367'                                                              
#farms_id=[247, 374, 546, 606, 626, 666, 667, 686, 740, 741, 742, 743, 744, 1044, 1045, 1147, 1186, 1187, 1226, 1252, 1254, 1359, 1360, 1361, 1362, 1363, 1364, 1365,\
 1366, 1367]                                                                                                                                                          
farms_id='1186 1187 1226 1252 1254 1359 1360 1361 1362 1363 1364 1365 1366 1367'
#farms_id=1186                                                                                                                                                        

start_date='20160109 00' #not used now                                                                                                                                
final_date='20160109 00' #not used now                                                                                                                                
DH=12

max_proc=6
wait_time=10
############################################                                                                                                                          
#          MAIN LOOP                       #                                                                                                                          
###########################################                                                                                                                           

my_date=$start_date
DATE_sec=$(date -d  "${my_date}" +%s)
DATEFIN_sec=$(date -d  "${final_date}" +%s)
while [ $DATE_sec -le $DATEFIN_sec ]
do
    yyyymmdd=`echo $my_date|cut -c 1-8`
    run=`echo $my_date|cut -c 10-14`

    for  farm_id in $farms_id
    do
        n_proc=$(echo `ps -ef |grep ${user_name} |grep ${program_name} | grep ${script_name}| wc -l`)
        echo  'I am currently running => '$n_proc 'process'
        #echo $max_proc                                                                                                                                               
        while [ $n_proc -ge  $max_proc ]
        do
            echo ' ====>>> I HAVE TO WAIT <===='
            sleep $wait_time
            n_proc=$(echo `ps -ef | grep ${user_name} | grep ${program_name} | grep ${script_name} | wc -l`)
            echo  'I am still running => '$n_proc 'process and max # of precesses is '$max_proc
        done
        echo 'Sending now==>' $script_name $farm_id  #$yyyymmdd $run                                                                                                  
        $program_name $source_path$script_name --id=$farm_id &
        sleep 2
    done

    #update the date                                                                                                                                                  
    my_date=$(echo `date -d " ${my_date} + ${DH} hours" +"%Y%m%d %H"`)
    DATE_sec=$(date -d  "${my_date}" +%s)
    #echo $DATE_sec                                                                                                                                                   
done


echo 'All jobs sent'
return
############################################                                                                                                                          
#                                       DONE  
