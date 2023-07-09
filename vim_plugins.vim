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
Plugin 'ctrlpvim/ctrlp.vim'

" Indent highlighting
Plugin 'Yggdroot/indentLine'

" Syntax highlighting
Plugin 'dense-analysis/ale'

" HTML/XML autoclose tags
Plugin 'vim-scripts/HTML-AutoCloseTag'

" Syntax highlighting
Plugin 'pangloss/vim-javascript'
Plugin 'ap/vim-css-color'
Plugin 'tikhomirov/vim-glsl'

" Colors galore
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()
filetype plugin indent on

" Plugin options
" Airline
" use fancy airline font
let g:airline_powerline_fonts = 1
let g:airline_detect_paste=1
let g:airline#extensions#tabline#enabled = 1

" DelimitMate
" activate smarter delimiting
let delimitMate_expand_cr = 1

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
nmap <silent> <leader>. :CtrlPTag<CR>

" Ignore node_modules
let g:ctrlp_custom_ignore = 'node_modules'

" Disable concealment of text
let g:tex_conceal = ""

" ALE syntax highlighting
let g:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace']}
let g:ale_fix_on_save = 1
