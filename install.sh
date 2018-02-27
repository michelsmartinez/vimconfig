#!/bin/bash

PATH_INSTALL="${PWD}"

echo "Workdir:"
echo "--> $PATH_INSTALL"

echo -n "This will erease your vimrc and vim folder from your HOME, confirm? y/n    "; read confirm
if [ $confirm == "y" ] ; then
    echo "removing orgins files"
    /bin/rm ~/.vimrc
    /bin/rm ~/.vim
    echo "make a link to news files"
    /bin/ln -s $PATH_INSTALL/.vimrc ~/.vimrc  
    /bin/ln -s $PATH_INSTALL/.vim ~/.vim 
fi
echo "Done, use Vim ;)"
