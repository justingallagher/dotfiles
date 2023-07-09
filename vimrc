" @file vimrc
" @brief Configures vim settings and plugins.
" 	     Derived mostly from bezi/dotfiles.
" @author Justin Gallagher (justingallag@gmail.com)
" @since 2014-11-05

" Vundle and plugins
source ~/.vim_plugins.vim

" color scheme
set background=dark

" 256 terminal colors to be supa pretty
set t_Co=256

" line numbering
set nu

" set spacing to use spaces, not tabs, 4 spaces per indent
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab

" put a line at column 81
set cc=81
highlight ColorColumn ctermbg=darkgray

" syntax highlighting
syntax enable

" set Arduino to use C++ syntax hilighting
autocmd BufNewFile,BufReadPost *.ino set filetype=cpp

" removes modelines (best practices, they're apparently a security exploit)
set modelines=0

" file encoding
set encoding=utf-8

" keeps a buffer above and below line when scrolling
set scrolloff=3

" smarter indenting
set autoindent

" airline tells us what mode we're in
set noshowmode

" show commands while you're typing
set showcmd

" improved command autocompletion
set wildmenu
set wildmode=list:longest

" instead of dinging, flash cursor
set visualbell

" underline cursor line
set cursorline

" smoother performance since we use modern terminals
set ttyfast

" show cursor location in the bottom
set ruler

" make backspace act more sanely with tabs
set backspace=indent,eol,start

" always show file status
set laststatus=2

" make searching more intuitive by turning off special characters (/&ref
" searches for &ref)
noremap / /\v
vnoremap / /\v

" smarter search defaults
set ignorecase
" case insensitive unless there's varied casing, then it's case sensitive
set smartcase

" automatically overwrite all instances on s//.  To get previous behaviour, use
"   s//g
set gdefault

" highlight as you type search
set incsearch
set showmatch
set hlsearch

" clear out highlighting from search
noremap <leader><space> :noh<cr>

" make the bracket move easier to hit (move from opening to closing braces, etc)
noremap <tab> %
vnoremap <tab> %

" text-wrapping
set wrap
set textwidth=80

" see :help fo-table
set formatoptions=qrn1

" make the j and k work better with wrapped text
" if you hit j, it goes down a visual line, not a logical line
noremap j gj
noremap k gk

" save whenever you lose focus
au FocusLost * :wa

" hard rewrap paragraphs on ,q
noremap <leader>q gqip

" remap jj to escape for easier times
inoremap jj <ESC>

" split by default to the right
set splitright

" Turn off extra back up files.  I find them to be annoying and I save enough
" that they're more of a nuisance when recovering from a crash than anything
" else

" don't use swap files
set noswapfile

" don't use backup files (a.c~)
set nobackup

" lets lines wrap with correct preceding indentation
if exists('+breakindent')
    set breakindent
endif

" remap 0 to first non-empty character
map 0 ^

" Spacing exception for SML and JS
au FileType sml setl sw=2 sts=2 et
au FileType javascript setl sw=2 sts=2 et

" Allow mouse scrolling
set mouse=a

" Use ":w!!" to save files using sudo
cmap w!! w !sudo tee > /dev/null %
