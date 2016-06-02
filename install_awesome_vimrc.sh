#!/bin/bash

REAL_PARH=$(cd `dirname $0`; pwd)"/"

if [ ! -d "~/.vim" ]; then
    mkdir ~/.vim 
fi

echo "cp config files to ~/.vim"
# 基本配置
cp $REAL_PARH"basic.vim" ~/.vim/
# 插件配置
cp $REAL_PARH"vundle.vim" ~/.vim/
cp $REAL_PARH"plugin.vim" ~/.vim/
# 扩展插件
echo "install vim vundle, wait .... "
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# 进行vim插件安装
echo "install vim plugin, wait .... "
vim +PluginInstall +qall >> /dev/null

echo '

" 基本配置
source ~/.vim/basic.vim

" 依赖 vundle 管理 ，https://github.com/VundleVim/Vundle.vim
" 如果安装失败，执行下面脚本
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
source ~/.vim/vundle.vim

" 配置的插件信息，如果没有安装插件，在vim页面下可以执行 :PluginInstall 进行插件安装
source ~/.vim/plugin.vim

try
    source ~/.vim/my_configs.vim
catch
endtry' > ~/.vimrc

echo "Installed the Vim configuration successfully! Enjoy :-)"
