# bash_snippet_codes

This is a system of snippet codes for bash programming
**********************************************
#Insert the snippet into your working code
If you want to insert a file into another file in Emacs, type:

M-x: insert-file the_file_I_want

**************************************************

#Basic preliminary things:
************************************************************

\#! /bin/bash -x                                                                                                                                        

chmod +x test.sh

Now check with ls -l if the file is executable (it must have a x)

*************************************************************
#Location independent execution
**********************************************************
test.sh is executed via "bash -x" (-x is useful in debugging)                                                      

echo $PATH is the list of directories in which executables file are searched by default

if you want to add another directory (for example you bin directory) 
                                                                  
export PATH=$PATH:~gfasanel/bin                                                                                                                        

This change will last till you close the shell, to make it permanent:

echo 'export PATH=$PATH:~gfasanel/bin'  >> ~/.bash_profile                                                                                              

At this point wherever you type test.sh, it will look inside the PATH directories. If a test.sh is present there, it will execute them

In case of 2 different test.sh => /path/test.sh
**********************************************************

