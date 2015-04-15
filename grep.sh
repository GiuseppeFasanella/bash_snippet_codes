#example

parsecsv.sh directory.csv | grep Jill -A3
#The rows containing Jill and the 3 next lines (A stands for After)
parsecsv.sh directory.csv | grep Jill -B1
#Jill and the line before

grep -v "something"
# tutte le righe che NON contengono "something"