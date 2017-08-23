set nocompatible                " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation

au FileType python setl sw=4 sts=4 et
set pastetoggle=<F10>

"" Whtespace
set tabstop=4 shiftwidth=4      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Spelling
set nospell

set wildmode=list:longest       "auto completion showing everything
set visualbell                  "no more beeping
colorscheme torte         " colors for the editor

"status line
set laststatus=2                "make status line permanent

"syntastic"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


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

"relative line numbers"
set relativenumber

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

map <c-f> :call JsBeautify()

:au BufWrite <buffer> :call JsBeautify()

"pathogen"
call pathogen#infect()
