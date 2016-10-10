#! /bin/bash
 
for F in $(ls) #for F in the output of ls
do
    echo "The file is $F"
done

oppure anche cosi'
is_scale_cat= `grep scaleEle_HggRunEtaR9_ ${conf_step7}| grep d1`
