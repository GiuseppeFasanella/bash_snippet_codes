"$@" represents all arguments

for var in "$@"
do
    echo "$var"
done

##loopa su tutti gli argomenti a partire dal secondo
echo "${@:2}"
