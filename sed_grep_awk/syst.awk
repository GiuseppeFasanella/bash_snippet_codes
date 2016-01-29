BEGIN{



}

#NF is number of fields. Le parentesi fanno un "if" statement                                                                                                                                                     
(!/^#/ && NF>5){
    printf("%s\t%s\t%s", $1, $2, $3)

    for(i=5; i<=NF;i+=3){
        v=$i-$2
        if(v<0) v*=-1
        printf("\t%.6f", v)
    }
    printf("\n")
}



END{



}
