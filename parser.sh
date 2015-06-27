#! /bin/bash                                                                                                                                                                     
# ./parser.sh -h (OR) ./parser.sh --help                                                                                                                                         
# ./parser.sh -f my_file (OR) ./parser.sh --File my_file                                                                                                                         
usage(){
    echo "`basename $0` [options]          "
    echo " -f arg (this is the config file)"
    echo " --File arg (config file also)   "
}
# put a colon if you want to pass and argument                                                                                                                                   
if ! options=$(getopt -u -o hf: -l help,File: -- "$@")
# short option h and f ( f requires an argument)                                                                                                                                 
# long options help and File (File requires and argument)                                                                                                                        
# I don't know what -- "$@" means, but I know that without it, the parsing goes wrong                                                                                           

then
    # something went wrong, getopt will put out an error message for us                                                                                                          
    exit 1
fi

set -- $options

while [ $# -gt 0 ]
do
    case $1 in
        -h|--help) usage; exit 0;;
        -f) configFile=$2; echo "[OPTION] configFile = ${configFile}";shift;;
        --File) configFile=$2; echo "[OPTION] configFile = ${configFile}"; shift;;
        (--) shift; break;;
        (-*) usage; echo "$0: error - unrecognized option $1" 1>&2; usage >> /dev/stderr; exit 1;;
        (*) break;;
    esac
    shift
done

echo "You passed $configFile"
