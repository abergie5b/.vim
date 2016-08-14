#!/bin/bash
sudo apt-get install vim
sudo apt-get install curl
mkdir $HOME/src
mkdir $HOME/src/c++
mkdir $HOME/src/python
echo "export PATH=$HOME/src/"
curl -o Anaconda3-4.1.1.sh http://repo.continuum.io/archive/Anaconda3-4.1.1-Linux-x86_64.sh
bash Anaconda3-4.1.1.sh
alias python=$HOME/anaconda3/bin/python3.5
alias mv="mv --backup=numbered"
alias rm="mv --backup=numbered --target-directory=C:/users/andrew/.trash"
