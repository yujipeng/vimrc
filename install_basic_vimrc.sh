#!/bin/bash


REAL_PARH=$(cd `dirname $0`; pwd)"/"

# 基本配置
cp $REAL_PARH"basic.vim" ~/.vimrc

echo "Installed the Vim configuration successfully! Enjoy :-)"
