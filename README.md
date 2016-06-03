# my vim configuration 

## 安装说明

* 使用 install_basic_vimrc.sh  安装得到配置 == basic.vim



* 使用 install_awesome_vimrc.sh  安装得到配置如下：

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
        endtry

## 注意：

* 使用basic配置，不需要安装任何插件，直接拷贝到~/.vimrc 就可生效。

* 使用awesome配置，需要首先安装 VundleVim 进行vim插件管理，安装方式如下：

        git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

* 关于vim的管理管理，按照https://github.com/VundleVim/Vundle.vim 进行操作。

    > 关于VundleVim 的自身配置调用文件，在 vundle.vim 文件中
    > 真正的plugin管理，以及相应的插件配置，在 plugin.vim 文件中
