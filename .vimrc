set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'Ag.vim'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/gem-ctags'
Plugin 'tpope/vim-flagship'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-endwise'
Plugin 'tsaleh/vim-align'
Plugin 'tsaleh/vim-tmux'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'taglist.vim'
Plugin 'chrisbra/Colorizer'
Plugin 'flazz/vim-colorschemes'
Plugin 'christoomey/vim-tmux-navigator'


" " plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
set modelines=0		" CVE-2007-2438
call vundle#end()            " required
filetype plugin indent on    " required

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing
nmap ; :

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

let mapleader = " "

inoremap <Tab> <c-r>=InsertTabWrapper()<cr>
inoremap <S-Tab> <c-n>

" Switch between the last two files
 nnoremap <leader><leader> <c-^>
"
" " Get off my lawn
 nnoremap <Left> :echoe "Use h"<CR>
 nnoremap <Right> :echoe "Use l"<CR>
 nnoremap <Up> :echoe "Use k"<CR>
 nnoremap <Down> :echoe "Use j"<CR>
set splitbelow
set splitright

"" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <F1> :NERDTreeToggle<CR>
nnoremap <F3> :CtrlP<CR>



" When the type of shell script is /bin/sh, assume a POSIX-compatible
" " shell for syntax highlighting purposes.
 let g:is_posix = 1
"
" " Softtabs, 2 spaces
 set tabstop=2
 set shiftwidth=2
 set shiftround
 set expandtab
"
" " Display extra whitespace
 set list listchars=tab:»·,trail:·,nbsp:·
"
" " Use one space, not two, after punctuation.
 set nojoinspaces
 set ruler

 " Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1
 "
" " Numbers
set number
set numberwidth=5
set undofile
set undodir=~/.vim/undodir

let g:solarized_termcolors=256
syntax enable
set background=dark
colorscheme mopkai

let g:colorizer_auto_color=1

set clipboard=unnamed
