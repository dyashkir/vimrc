set nocompatible                " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation

"" Whtespace
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Spelling
set nospell

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
set number

set wildmode=list:longest       "auto completion showing everything
set visualbell                  "no more beeping
colorscheme torte         " colors for the editor

"status line
set laststatus=2                "make status line permanent


function! FileSize()
     let bytes = getfsize(expand("%:p"))
     if bytes <= 0
         return ""
     endif
     if bytes < 1024
         return bytes
     else
         return (bytes / 1024) . "K"
     endif
endfunction

set statusline=
set statusline+=%f\  
set statusline+=%y%*\ 
set statusline+=%{&ff}\ 
set statusline+=%{FileSize()}
set statusline+=%=

set statusline+=%#error#%n%*\ 
set statusline+=[%l,%c]

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

"disable arrow keys.."
map <left> <nop>
map <right> <nop>
map <up> <nop>
map <down> <nop>
map! <left> <nop>
map! <right> <nop>
map! <up> <nop>
map! <down> <nop>

"pathogen"
call pathogen#infect()
