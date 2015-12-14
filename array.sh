#il pushback si fa cosi'
ARRAY=()
ARRAY+=('foo')
ARRAY+=('bar')

for i in "${arrayName[@]}"
do
   :
   # do whatever on $i
done

# qui $i e' un elemento di arrayName

##Se vuoi loopare sopra l'indice si fa cosi':
for i in "${!foo[@]}"; do 
  printf "%s\t%s\n" "$i" "${foo[$i]}"
done



