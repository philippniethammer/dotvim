" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

call pathogen#infect()

let g:Powerline_symbols = 'unicode'

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has("vms")
  set nobackup          " do not keep a backup file, use versions instead
else
  set backup            " keep a backup file
endif
set history=50          " keep 50 lines of command line history
set ruler               " show the cursor position all the time
set showcmd             " display incomplete commands
set incsearch           " do incremental searching
set autoindent

set number
set numberwidth=4
set cpoptions+=n
set cursorline

set nobackup

" tabs
set expandtab
set tabstop=4
set shiftwidth=4
set smartindent


colorscheme vividchalk

filetype plugin indent on
syntax on
set hlsearch

" set encoding=utf-8 " Necessary to show Unicode glyphs
set laststatus=2
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors


autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag/plugin/closetag.vim
