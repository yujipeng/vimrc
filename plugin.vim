"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer: 
"       jeep.yujipeng@gmail.com
"       http://www.wavewell.cn
"
" Version: 
"       1.0 - 01/06/16 19:32
" Sections:
"    -> html use css
"    -> superTab
"    -> phpDocumentor 
"    -> commentary 
"    -> taglist 
"    -> Omni 
"    -> bufExplorer
"    -> MRU
"    -> CTRL-P
"    -> Nerd Tree 
"    -> Vim-go
"    -> Syntastic 
"    -> Git gutter
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 让 Tohtml 产生有 CSS 语法的 html
" syntax/2html.vim，可以用:runtime! syntax/2html.vim
let html_use_css=1

"-----------------------------------------------------------------
" plugin - superTab.vim 自动补全插件
" http://www.vim.org/scripts/script.php?script_id=1643
" https://github.com/ervandew/supertab
" -----------------------------------------------------------------
" let g:SuperTabContextDefaultCompletionType = \"<c-n>\"
let g:SuperTabRetainCompletionType = 2
" let g:SuperTabDefaultCompletionType = \"<C-X><C-O>\"
let g:SuperTabDefaultCompletionType = "<C-N>"

"-----------------------------------------------------------------
" plugin – PDV - phpDocumentor for Vim : 方法 类的注释
" Provides really comfortable generation of phpDocumentor doc blocks for PHP4 & 5.
" http://www.vim.org/scripts/script.php?script_id=1355
" -----------------------------------------------------------------
source ~/.vim_runtime/autoload/php-doc.vim
inoremap <C-P> <ESC>:call PhpDocSingle()<CR>
nnoremap <C-P> :call PhpDocSingle()<CR>
vnoremap <C-P> :call PhpDocRange()<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim commentary
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType apache set commentstring=#\ %s
autocmd FileType php set commentstring=//\ %s

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim taglist
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let Tlist_File_Fold_Auto_Close=1
let Tlist_Inc_Winwidth=0
let Tlist_Ctags_Cmd="/usr/bin/ctags"
let Tlist_Show_One_File=1
map <leader>t :TlistToggle<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Omni complete functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
set completeopt-=preview


""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='name'
map <leader>o :BufExplorer<cr>


""""""""""""""""""""""""""""""
" => MRU plugin
""""""""""""""""""""""""""""""
let MRU_Max_Entries = 400
map <leader>f :MRU<CR>

""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 0

let g:ctrlp_map = '<c-f>'
map <leader>j :CtrlP<cr>
map <c-b> :CtrlPBuffer<cr>

let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark
map <leader>nf :NERDTreeFind<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim-go
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:go_fmt_command = "goimports"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic (syntax checker)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Python
let g:syntastic_python_checkers=['pyflakes']

" php
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']

" Javascript
let g:syntastic_javascript_checkers = ['jshint']

" Go
let g:syntastic_auto_loc_list = 1
let g:syntastic_go_checkers = ['go', 'golint', 'errcheck']


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git gutter (Git diff)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_enabled=0
nnoremap <silent> <leader>d :GitGutterToggle<cr>
