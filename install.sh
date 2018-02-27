#!/bin/bash

PATH="${PWD}"

echo "Workdir:"
echo "--> $PATH"

echo -n "This will erease your vimrc and vim folder from your HOME, confirm? y/n    "; read confirm
if [ $confirm == "y" ] ; then
    echo "removing orgins files"
    /bin/rm ~/.vimrc
    /bin/rm ~/.vim
    echo "make a link to news files"
    /bin/ln -s $PATH/.vimrc ~/.vimrc  
    /bin/ln -s $PATH/.vim ~/.vim 
fi
echo "Done, use Vim ;)"
