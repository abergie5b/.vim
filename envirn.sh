#!/bin/bash
sudo apt-get install vim
ln -s ~/.vim/.vimrc ~/.vimrc
sudo apt-get install curl
sudo apt-get install exuberant-ctags
mkdir $HOME/src
mkdir $HOME/src/c++
mkdir $HOME/src/python
mkdir $HOME/tmp
mkdir $HOME/docs
echo "export PATH=$PATH:/$HOME/src/" >> $HOME/.bashrc
echo "alias python=$HOME/anaconda3/bin/python3.5" >> $HOME/.bashrc
echo "alias mv="mv --backup=numbered"" >> $HOME/.bashrc
echo "alias rm="mv --backup=numbered--target-directory=C:/users/andrew/.trash"" >> $HOME/.bashrc
