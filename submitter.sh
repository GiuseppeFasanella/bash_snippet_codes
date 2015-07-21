bsub -q 2nd -oo stdout.log -eo stderr.log -J "nome job" 
"cd /afs/cern.ch/user/g/gfasanel/new_version_ECALELF/CMSSW_7_5_0_pre4/src/Calibration/ZFitter; 
eval \`scramv1 runtime -sh\`; uname -a;  echo \$CMSSW_VERSION; comandone > debug.txt"

#secondo me funziona anche con cd $PWD
#stdout.log contiene il comando che viene processato, cosi' puoi controllare cosa ha fatto

