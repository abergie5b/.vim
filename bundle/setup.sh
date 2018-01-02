#!/bin/bash
git clone https://github.com/majutsushi/tagbar
git clone https://github.com/tpope/vim-pathogen
git clone https://github.com/PyCQA/pycodestyle
git clone https://github.com/scrooloose/syntastic
git clone https://github.com/vim-airline/vim-airline
git clone https://github.com/vim-airline/vim-airline-themes
git clone https://github.com/scrooloose/nerdtree
git clone https://github.com/ryanoasis/vim-devicons
git clone https://github.com/ap/vim-css-color
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts
cd nerd-fonts && ./install.sh Hack
cd -
git clone https://github.com/powerline/fonts
cd fonts && ./install
cd -
cp -r vim-pathogen/autoload ../
