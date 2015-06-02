#Run a script
ssh root@MachineB 'bash -s' < local_script.sh


ssh user@host <<EOF
'ENDSSH'
#commands to run on remote host
ENDSSH
EOF