#!/bin/sh

ln -s ~/.vim/vimrc ~/.vimrc

echo "intializing modules"
git submodule init
git submodule update


echo "You need to go and explicity build command-t. Follow installation instructions"
