scales=`grep scale test.dat | cut -f 2`
scales=(${scales// / })
#splitta la stringa scales in base agli spazi e la trasforma nell'array scales
echo ${scales[0]}
