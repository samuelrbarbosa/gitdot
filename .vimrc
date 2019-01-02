set nocompatible              
filetype on                
set encoding=utf-8

set path=~/Dropbox/**




" backup to ~/.tmp 
set backup 
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set backupskip=/tmp/*,/private/tmp/* 
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set writebackup

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/goyo.vim'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin '907th/vim-auto-save'
Plugin 'LaTeX-Box-Team/LaTeX-Box'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


"map <leader>f :Goyo 

"pandoc
let g:pandoc#spell#enabled = 0
let g:pandoc#modules#disabled = ["folding"]

"auto-save
"let g:auto_save = 1  " enable AutoSave on Vim startup
"let g:auto_save_silent = 1  " do not display the auto-save notification


syntax on


set number relativenumber
set ruler "1,1 cursor
set hlsearch
set incsearch
set ignorecase "ignore case when searchin
set splitbelow splitright
"set title
"set smartindent
"set expandtab
set wildmenu
set wildmode=list:longest
set scrolloff =5
"set cursorline
set wrap linebreak nolist
"set laststatus =2
"set visualbell"

set mouse=a

set whichwrap+=<,>,h,l,[,]
:imap ;; <Esc>



"set ve=all "permite cursor fora da linha


"colorscheme monokai
"colorscheme solarized
"

"Latex
autocmd VimLeave *.tex !texclear % "cleans aout tex build files whenever I close out of a .tex file
