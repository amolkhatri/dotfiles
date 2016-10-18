#!/bin/sh
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/.bash_apparix ~/.bash_apparix
echo "intializing modules"
git submodule init
git submodule update


COUNT=$(grep -c "^source ~/.vim/.profile$" ~/.bash_profile)
if [[ $COUNT = "0" ]]; then
    #statements
    echo "adding source to .bash_profile"
    echo "source ~/.vim/.profile" >> ~/.bash_profile
fi



COUNT=$(grep -c "^source ~/.vim/.bash_apparix" ~/.bash_profile)
if [[ $COUNT = "0" ]]; then
    #statements
    echo "adding source to .bash_apparix"
    echo "source ~/.vim/.bash_apparix" >> ~/.bash_profile
fi

if [ -d "/Applications/MacVim.app" ]; then
    echo "adding shortcut for MacVim"
    echo "alias mvim='/Applications/MacVim.app/Contents/MacOS/MacVim'" >> ~/.bash_profile
fi
source ~/.bash_profile

echo "You need to go and explicity build command-t. Follow installation instructions"
