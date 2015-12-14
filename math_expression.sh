#bash supporta solo operazioni con numeri interi!!!!!
n1=10
n2=3
$(( n1+n2 ))
$(( n1/n2 ))
$(( n1-n2 ))

#se vuoi operare con floating point, devi ridirezionarlo a un programma capace che 
echo "2.5+3.75" | bc -l
# -l e' la libreria matematica
Per limitare la precisione di echo, puoi fare cosi':
printf "%.3f\n" $variable
