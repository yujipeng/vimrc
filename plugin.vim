"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer: 
"       jeep.yujipeng@gmail.com
"       http://www.wavewell.cn
"       base https://github.com/VundleVim/Vundle.vim
" Version: 
"       1.0 - 01/06/16 19:32
" Sections:
"    -> commentary
"    -> vim-airline
"    -> Nerd Tree
"    -> Git gutter
"    -> CtrlP
"    -> taglist
"    -> vim-multiple-cursors
"    以下部分已经屏蔽
"    -> phpcomplete
"    -> PDV 
"    -> syntax-check : syntastic
"    -> vim-javacomplete2
"    -> vim-javascript
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim commentary  => tpope/vim-commentary
" => https://github.com/tpope/vim-commentary
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'tpope/vim-commentary'
autocmd FileType vim setlocal commentstring=\"\ %s
autocmd FileType php setlocal commentstring=//\ %s
autocmd FileType java setlocal commentstring=//\ %s
autocmd FileType nginx setlocal commentstring=#\ %s
autocmd FileType apache setlocal commentstring=#\ %s
autocmd FileType javascript setlocal commentstring=#\ %s

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-airline lean & mean status/tabline for vim that's light as air 
" => https://github.com/vim-airline/vim-airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'scrooloose/nerdtree'
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark
map <leader>nf :NERDTreeFind<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git gutter (Git diff)
" => https://github.com/airblade/vim-gitgutter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'airblade/vim-gitgutter'
let g:gitgutter_enabled=0
nnoremap <silent> <leader>d :GitGutterToggle<cr>

""""""""""""""""""""""""""""""
" => ctrlp plugin
" => https://github.com/ctrlpvim/ctrlp.vim
""""""""""""""""""""""""""""""
Plugin 'ctrlpvim/ctrlp.vim'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
" let g:ctrlp_custom_ignore = {
"   \ 'dir':  '\v[\/]\.(git|hg|svn)$',
"   \ 'file': '\v\.(exe|so|dll)$',
"   \ 'link': 'some_bad_symbolic_links',
"   \ }
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
" let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_map = '<c-m>'
map <leader>m :CtrlP<cr>
let g:ctrlp_cmd = 'CtrlP'
" map <leader>fb :CtrlPBuffer<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim taglist
" => https://github.com/vim-scripts/taglist.vim
" => can use with ctags  http://ctags.sourceforge.net/ 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'vim-scripts/taglist.vim'
let Tlist_File_Fold_Auto_Close=1
let Tlist_Inc_Winwidth=0
let Tlist_Ctags_Cmd="/usr/bin/ctags"
let Tlist_Show_One_File=1
map <leader>t :TlistToggle<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-multiple-cursors
" => https://github.com/terryma/vim-multiple-cursors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'terryma/vim-multiple-cursors'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => shawncplus/phpcomplete.vim
" => https://github.com/shawncplus/phpcomplete.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin 'shawncplus/phpcomplete.vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => scrooloose/syntastic
" => https://github.com/scrooloose/syntastic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin 'scrooloose/syntastic'
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => PDV - PHP Documentor for VIM
" => https://github.com/vim-scripts/PDV--phpDocumentor-for-Vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin 'vim-scripts/PDV--phpDocumentor-for-Vim'
" let g:pdv_cfg_Author = "Jeep YU <jeep.yujipeng@gmail.com>"
" inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i 
" nnoremap <C-P> :call PhpDocSingle()<CR> 
" vnoremap <C-P> :call PhpDocRange()<CR> 

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " => PDV - PHP Documentor for VIM - 2
" " => https://github.com/tobyS/pdv
" " => base :  https://github.com/SirVer/ultisnips
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " Track the engine.
" Plugin 'SirVer/ultisnips'
" " Snippets are separated from the engine. Add this if you want them:
" Plugin 'honza/vim-snippets'
" " Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" " If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"

" Plugin 'tobyS/pdv'
" let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
" nnoremap <buffer> <C-p> :call pdv#DocumentWithSnip()<CR>
" " nnoremap <buffer> <C-p> :call pdv#DocumentCurrentLine()<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => YouCompleteMe A code-completion engine for Vim 
" => https://github.com/Valloric/YouCompleteMe
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin 'Valloric/YouCompleteMe'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim javacomplete2 => artur-shaik/vim-javacomplete2
" => https://github.com/artur-shaik/vim-javacomplete2
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin 'artur-shaik/vim-javacomplete2'
" autocmd FileType java setlocal omnifunc=javacomplete#Complete



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim javascript=> pangloss/vim-javascript 
" => https://github.com/pangloss/vim-javascript
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin 'pangloss/vim-javascript'
" let g:javascript_plugin_jsdoc = 1
" let g:javascript_plugin_ngdoc = 1
" let g:javascript_plugin_flow = 1
" set foldmethod=syntax

