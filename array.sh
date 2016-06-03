#il pushback si fa cosi'
my_array=()
my_array+=('foo')
my_array+=('bar')

for i in "${my_array[@]}"
do
   :
   # do whatever on $i
done

# qui $i e' un elemento di arrayName

##Se vuoi loopare sopra l'indice si fa cosi':
for i in "${!my_array[@]}"; do 
  printf "%s\t%s\n" "$i" "${my_array[$i]}"
done



