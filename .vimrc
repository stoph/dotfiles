set nocompatible

" ================ General Config ====================

set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set cursorline                  "Highlight current line
set autoread                    "Reload files changed outside vim
set ttyfast                     "Optimize for fast terminal connections
set gdefault                    "Add the g flag to search/replace by default
set encoding=utf-8 nobomb       "Use UTF-8 without BOM
set hidden

syntax on                       "turn on syntax highlighting

set incsearch                   "Find the next match as we type the search
set hlsearch                    "Hilight searches by default
set viminfo='100,f1             "Save up to 100 marks, enable capital marks
set ignorecase                  " Ignore case of searches

set binary
set noeol                       " Don’t add empty newlines at the end of files

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
    set undodir=~/.vim/undo
endif

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4

set list listchars=tab:\ \ ,trail:·     " Display tabs and trailing spaces visually

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

set laststatus=2
set statusline=\ %{HasPaste()}%<%-15.25(%f%)%m%r%h\ %w\ \
set statusline+=\ \ \ [%{&ff}/%Y]
set statusline+=\ \ \ %<%20.30(%{hostname()}:%{CurDir()}%)\
set statusline+=%=%-10.(%l,%c%V%)\ %p%%/%L

function! CurDir()
    let curdir = substitute(getcwd(), $HOME, "~", "")
    return curdir
endfunction

function! HasPaste()
    if &paste
        return '[PASTE]'
    else
        return ''
    endif
endfunction
