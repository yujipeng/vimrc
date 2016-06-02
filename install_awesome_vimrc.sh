#!/bin/bash

REAL_PARH=$(cd `dirname $0`; pwd)"/"


if [ ! -d "~/.vim" ]; then
    mkdir ~/.vim 
fi


# 基本配置
cp $REAL_PARH"basic.vim" ~/.vim/

# 扩展插件
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp $REAL_PARH"vundle.vim" ~/.vim/
cp $REAL_PARH"plugin.vim" ~/.vim/
vim +PluginInstall +qall


echo '

source ~/.vim/basic.vim
source ~/.vim/vundle.vim
source ~/.vim/plugin.vim

try
source ~/.vim/my_configs.vim
catch
endtry' > ~/.vimrc

echo "Installed the Vim configuration successfully! Enjoy :-)"
