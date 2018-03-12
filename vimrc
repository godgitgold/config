

set nocompatible

filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'


"-----------------------------------------------------
"    			NERDTree
"-----------------------------------------------------

Bundle 'scrooloose/nerdtree'

map <F2> :NERDTreeToggle<CR>

let NERDTreeShowLineNumbers = 1

let NERDTreeAutoCenter = 1

let NERDTreeShowHidden = 1

let NERDTreeWinSize= 31

let NERDTreeIgnore = [ '\.pyc' , '\~$' , '\.swp' ]

auto bufenter * if(winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary" ) | q | endif


"-----------------------------------------------------
"			Molokai
"-----------------------------------------------------

Bundle 'tomasr/molokai'

let g:molokai_original = 1

let g:rehash256 = 1


"-----------------------------------------------------
"                   	ctrlp
"-----------------------------------------------------

Bundle 'ctrlpvim/ctrlp.vim'

let g:ctrlp_map = '<c-p>'

let g:ctrlp_cmd = 'CtrlP'

let g:ctrlp_working_path_mode = 'ra'

"-----------------------------------------------------
"           jedi-vim
"-----------------------------------------------------
Bundle 'davidhalter/jedi-vim'  
Bundle 'ervandew/supertab'  

let g:SuperTabDefaultCompletionType = "context"  
let g:jedi#popup_on_dot = 0  

"-----------------------------------------------------
"			syntastic
"-----------------------------------------------------

Bundle 'scrooloose/syntastic'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers =['python','pep8','pycodestyle']
"-----------------------------------------------------
"			Vim
"-----------------------------------------------------
set number

set smartindent
set autoindent
set shiftwidth=4
set tabstop=4
set expandtab
set textwidth=79
set scrolloff=5

set hlsearch

set cursorline
highligh CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE

set showmatch

set laststatus=2

set encoding=utf-8

call vundle#end()
filetype plugin indent on
