#!/bin/bash

mkdir -p ~/.vim/bundle
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle
ln -s ~/.vim/vimfiles/vimrc ./.vimrc
