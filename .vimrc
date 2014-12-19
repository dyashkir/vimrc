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

"movement byrow not line"
nmap j gj
nmap k gk

"search defaults"
set incsearch
set ignorecase
set smartcase
set hlsearch
nmap \q :nohlsearch<CR>

"previous buffer with Ctrl - e"
nmap <C-e> :e#<CR>

"previous and next buffer"
nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>

"ignore for ctr-p"
let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py|node_modules'

let ctrlp_max_depth = 3

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
