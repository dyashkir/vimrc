set nocompatible                " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
set transparency=15

colorscheme torte         " colors for the editor

set guifont=Monaco:h15
set number
set statusline=%t\ %y\ \ %{&ff};\ [%l,%c] "status line at the bottom name type os line column
set wildmode=list:longest       "auto completion showing everything
set visualbell                  "no more beeping
