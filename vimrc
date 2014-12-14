set encoding=utf-8

set nocompatible
set noswapfile
set ruler
set incsearch " do incremental searching
set laststatus=2 " Always display the status line

set number " Line numbers
set numberwidth=5 "PADDING!

" Display extra whitespace
set list listchars=tab:»·,trail:·

let mapleader = " "

" Switch between last 2 files
nnoremap <leader><leader> <c-^>

function! CleanTrailingWhitespace()
    :silent! %s/\s\+$//
endfunction

autocmd BufWritePre * :call CleanTrailingWhitespace()
au BufEnter *.pp set ts=2 sw=2 et
au BufEnter *.rb set ts=2 sw=2 et

filetype off " Required for vundle

syntax on " COLORS!!

"
"  VUNDLE
"
"
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" MMH BUNDLES
Plugin 'mattn/emmet-vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'Shougo/neocomplete.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'rodjek/vim-puppet'
Plugin 'godlygeek/tabular'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-endwise'
Plugin 'Townk/vim-autoclose'

call vundle#end()            " required
filetype plugin indent on    " required

"
" End Vundle
"
"

"==  Emmet ==
let g:user_emmet_expandabbr_key = '<c-e>'

"== NeoComplete ==
let g:neocomplete#enable_at_startup = 1
" AutoComplPop like behavior.
let g:neocomplete#enable_auto_select = 0
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

colorscheme Tomorrow-Night
"set background=light
"hi Normal ctermbg=NONE
