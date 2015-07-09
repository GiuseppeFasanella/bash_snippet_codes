#! /bin/bash                                                                                                                                                                    
test="test"

cat > file.dat <<EOF                                                                                                                                                            
This is a ${test}                                                                                                                                                               
Second line of my test                                                                                                                                                          
EOF

#in file.dat trovo
#This is a test
#Second line of my test
