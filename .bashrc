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

##my function     
function connect() {
if [[ $1 = "" ]]; then ssh -Y gfasanel@lxplus6.cern.ch; else ssh -Y gfasanel@lxplus$1.cern.ch; fi
}
function copy_php() {
if [[ $1 = "" ]]; then echo "you should specify a directory"; else mkdir $1; cp ./index.php $1; fi
}

# User specific aliases and functions                                                                                                                                           
alias mkdir_www=copy_php
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
alias sshcern=connect
alias sshm6='ssh -Y gfasanel@m6.iihe.ac.be'
alias usrconnect='ssh -D 1080 gfasanel@cmsusr.cern.ch'
alias tunnellxplus='ssh gfasanel@lxplus.cern.ch -L 2224:cmsusr.cern.ch:22'
alias tunnelusr='ssh -p 2224 -D 1080 gfasanel@localhost'
alias remotedesktop='rdesktop -a 16 -u gfasanel -d CERN -g 1500x700 cerntscms.cern.ch'
alias which_ubuntu='lsb_release -a'
alias remote_dir_mount='sshfs gfasanel@m6.iihe.ac.be:/user/gfasanel/HEEP/CMSSW_7_2_0_patch1/src/Mass_resolution/roofit/fit_results Scrivania/remote_dir'
alias remote_dir_umount='sudo umount /home/gfasanel/Scrivania/remote_dir'
alias AN_images_dir='sshfs gfasanel@lxplus.cern.ch:/afs/cern.ch/user/g/gfasanel/CERN_documents/svnrepo/notes/AN-15-058/trunk/Strategy/images Scrivania/remote_dir_AN'
alias AN_images_dir_umount='sudo umount /home/gfasanel/Scrivania/remote_dir_AN'

