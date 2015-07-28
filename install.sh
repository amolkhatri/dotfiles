#!/bin/sh

ln -s ~/.vim/vimrc ~/.vimrc

echo "intializing modules"
git submodule init
git submodule update


COUNT=$(grep -c "^source ~/.vim/.profile$" ~/.bash_profile)
if [[ $COUNT = "0" ]]; then
    #statements
    echo "adding source to .bash_profile"
    echo "source ~/.vim/.profile" >> ~/.bash_profile
fi

source ~/.bash_profile

echo "You need to go and explicity build command-t. Follow installation instructions"
