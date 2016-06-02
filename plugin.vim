"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer: 
"       jeep.yujipeng@gmail.com
"       http://www.wavewell.cn
"
" Version: 
"       1.0 - 01/06/16 19:32
" Sections:
"    -> Git gutter
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim commentary  => tpope/vim-commentary
" => https://github.com/tpope/vim-commentary
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'tpope/vim-commentary'
autocmd FileType vim setlocal commentstring=\"\ %s
autocmd FileType php setlocal commentstring=//\ %s
autocmd FileType nginx setlocal commentstring=#\ %s
autocmd FileType apache setlocal commentstring=#\ %s
autocmd FileType javascript setlocal commentstring=#\ %s



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-airline lean & mean status/tabline for vim that's light as air 
" => https://github.com/vim-airline/vim-airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'



""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""
Plugin 'bufexplorer.zip'
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='name'
map <leader>o :BufExplorer<cr>


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
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'airblade/vim-gitgutter'
let g:gitgutter_enabled=0
nnoremap <silent> <leader>d :GitGutterToggle<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => YouCompleteMe A code-completion engine for Vim 
" => https://github.com/Valloric/YouCompleteMe
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin 'Valloric/YouCompleteMe'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim taglist
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin 'taglist.vim'
"let Tlist_File_Fold_Auto_Close=1
"let Tlist_Inc_Winwidth=0
"let Tlist_Ctags_Cmd="/usr/bin/ctags"
"let Tlist_Show_One_File=1
"map <leader>t :TlistToggle<cr>



""""""""""""""""""""""""""""""
" => ctrlp plugin
""""""""""""""""""""""""""""""
"Plugin 'ctrlp.vim'




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => PDV - PHP Documentor for VIM - 2
" => https://github.com/tobyS/pdv
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin 'tobyS/pdv'
" let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
" nnoremap <buffer> <C-p> :call pdv#DocumentWithSnip()<CR>
" nnoremap <buffer> <C-p> :call pdv#DocumentCurrentLine()<CR>

