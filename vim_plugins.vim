" @file vim_plugins.vim
" @brief Vundle plugin configuration.
"        Heavily derived from bezi/dotfiles.
" @author Justin Gallagher (justingallag@gmail.com)
" @since 5 November 2014

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#begin()

" Vundle
Plugin 'gmarik/Vundle.vim'

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
Plugin 'plasticboy/vim-markdown'

" CTags
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'

" Syntastic
Plugin 'scrooloose/syntastic'

" HTML/XML autoclose tags
Plugin 'vim-scripts/HTML-AutoCloseTag'

" Syntax highlighting
Plugin 'pangloss/vim-javascript'
Plugin 'ap/vim-css-color'

" Colors galore
Plugin 'tomasr/molokai'

" OpenGL Shading Language
Plugin 'tikhomirov/vim-glsl'

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

" EasyTags
let g:easytags_events = ['BufReadPost', 'BufWritePost']

" Syntastic
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '!'

" Ignore node_modules
let g:ctrlp_custom_ignore = 'node_modules'

" Disable concealment of text
let g:tex_concael = ""
