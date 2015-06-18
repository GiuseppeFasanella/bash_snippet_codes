usage(){
    echo "`basename $0` [options]"
    echo " -f arg            config file"
    echo " --regionFile arg             "
}

# options may be followed by one colon to indicate they have a required argument                                                                                                
if ! options=$(getopt -u -o hf:s: -l help,regionFile:,runRangesFile:,selection:,invMass_var:,step:,baseDir:,commonCut:,index:,force -- "$@")
then
    # something went wrong, getopt will put out an error message for us                                                                                                         
    exit 1
fi

set -- $options

while [ $# -gt 0 ]
do
    case $1 in
        -h|--help) usage; exit 0;;
    esac
    shift
done


