" @file vim_plugins.vim
" @brief Vundle plugin configuration.
"        Heavily derived from bezi/dotfiles.
" @author Justin Gallagher (justingallag@gmail.com)
" @since 5 November 2014

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle
Plugin 'VundleVim/Vundle.vim'

" Airline
Plugin 'bling/vim-airline'

" Autocommenting
Plugin 'tpope/vim-commentary'

" Parens and brackets galore
Plugin 'Raimondi/delimitMate'

" Git gutter: Shows a gutter with git diff stuff
Plugin 'airblade/vim-gitgutter'

" Open files easily
Plugin 'kien/ctrlp.vim'

" Indent highlighting
Plugin 'Yggdroot/indentLine'

" Highlight trailing whitespace
Plugin 'ntpeters/vim-better-whitespace'

" Improved markdown support
Plugin 'godlygeek/tabular'

" Syntastic
Plugin 'scrooloose/syntastic'

" HTML/XML autoclose tags
Plugin 'vim-scripts/HTML-AutoCloseTag'

" Syntax highlighting
Plugin 'pangloss/vim-javascript'
Plugin 'ap/vim-css-color'
Plugin 'tikhomirov/vim-glsl'

" Colors galore
Plugin 'vim-airline/vim-airline-themes'

" NERDTree
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

" tmux bindings
Plugin 'christoomey/vim-tmux-navigator'

call vundle#end()
filetype plugin indent on

" Plugin options
" Airline
" use fancy airline font
let g:airline_powerline_fonts = 1

" DelimitMate
" activate smarter delimiting
let delimitMate_expand_cr = 1

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
nmap <silent> <leader>. :CtrlPTag<CR>

" Tagbar
nmap <silent> <leader>b :TagbarToggle<CR>

" Syntastic
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '!'

" Ignore node_modules
let g:ctrlp_custom_ignore = 'node_modules'

" Disable concealment of text
let g:tex_conceal = ""

" NERDTree
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_console_startup = 0
