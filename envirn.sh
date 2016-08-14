#!/bin/bash
sudo apt-get install vim
ln -s ~/.vim/.vimrc ~/.vimrc
sudo apt-get install curl
mkdir $HOME/src
mkdir $HOME/src/c++
mkdir $HOME/src/python
mkdir $HOME/tmp
mkdir $HOME/docs
echo "export PATH=$HOME/src/"
alias python=$HOME/anaconda3/bin/python3.5
alias mv="mv --backup=numbered"
alias rm="mv --backup=numbered --target-directory=C:/users/andrew/.trash"
