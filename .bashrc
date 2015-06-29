# .bashrc                                                                                                                                                                        

# Source global definitions                                                                                                                                                      
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

#You are saying "if a directory called $HOME/bin exixts, then add it to the PATH variable                                                                                        
if [ -d "$HOME/bin" ] ; then
    export PATH=$PATH:"$HOME/bin"
fi

#Same thing, in order to handle boost options                                                                                                                                    
if [ -d "/afs/cern.ch/cms/slc5_amd64_gcc434/external/boost/1.47.0/lib" ] ; then
    export LD_LIBRARY_PATH=$LD_LIBRARY_PATH":/afs/cern.ch/cms/slc5_amd64_gcc434/external/boost/1.47.0/lib"
fi

# User specific aliases and functions                                                                                                                                            
alias emacs='emacs -nw'
alias pwd='pwd -P'
alias eos.select='eos'
alias root='root -l ~/rootlogon.C'
alias cmsenv='eval `scramv1 runtime -sh`'
alias remotedesktop='rdesktop -a 16 -u gfasanel -d CERN -g 1500x750 cerntscms.cern.ch'
alias lq='fs lq -human'
alias proxy='voms-proxy-init --voms cms'
alias proxy_info='voms-proxy-info --all'
alias tdr_init='eval `./notes/tdr runtime -sh`'
