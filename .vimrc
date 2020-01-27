set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'severin-lemaignan/vim-minimap'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'xolox/vim-colorscheme-switcher'
Plugin 'xolox/vim-misc'
Plugin 'rafi/awesome-vim-colorschemes'

Plugin 'skywind3000/asyncrun.vim'
"Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'yggdroot/indentline'
Plugin 'thaerkh/vim-indentguides'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this lin

"allow copy to clipboard`
map <C-c> "+y  

set mouse=a	"enable mouse
colorscheme solarized8_high	"color theme
set number	"show line numbers
let g:nerdtree_tabs_open_on_console_startup=1	"show side tree navigation bar
let NERDTreeShowHidden=1

set ts=3 "(number of spaces in a tab)
set sw=3 "(indent width in spaces)
set sts=3 "(number of columns for a tab)
"set et    "(convert all tabs to spaces)

inoremap <S-Tab> <C-d>
autocmd FileType python nnoremap <buffer> <F9> :exec 'w !python3' shellescape(@%,1)<cr>
autocmd filetype cpp nnoremap <buffer> <F9>  :exec 'w <bar> !clear && g++ -std=gnu++14 -O2 % -o %:p:h/%:t:r.exe && ./%:r.exe' shellescape(@%,1)<CR>
autocmd filetype c nnoremap <buffer> <F9>  :w <bar> !gcc -std=c99 -lm % -o %:p:h/%:t:r.out && ./%:r.out<CR>
autocmd filetype java nnoremap <buffer> <F9> :w <bar> !javac % && java -enableassertions %:p <CR>
"autocmd filetype python nnoremap <buffer> <F9> :w <bar> !python % <CR>

"Asyncrun stuff
let g:asyncrun_open = 8

let g:indentguides_spacechar = '┆'
let g:indentguides_tabchar = '|'

let g:indentguides_toggleListMode = 0

set cursorcolumn
set cursorline

"set wrap linebreak nolist
