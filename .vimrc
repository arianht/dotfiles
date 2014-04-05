set nocompatible
colorscheme jellybeans

imap jj <ESC>

nmap <C-s> :w<CR>
vmap <C-s> <ESC><C-s>gv
imap <C-s> <ESC><C-s>
nmap <Space> :w<CR>

" Remove trailing whitespaces on :w
autocmd BufWritePre * :%s/\s\+$//e

" Vundle related
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 'jiangmiao/auto-pairs'

filetype plugin indent on

" Toggle between relative and non-relative line numbers
function! NumberToggle()
  if (&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_register_as_syntastic_checker=0
let g:EclimCompletionMethod = 'omnifunc'
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = '-std=c++11'

set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

set smartindent

set expandtab
set shiftwidth=2
set softtabstop=2

set textwidth=0
set wrapmargin=0
set colorcolumn=81
set wrap
highlight ColorColumn ctermbg=7

if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

set number
set showmatch

set history=80
set ruler
set relativenumber
set showcmd
set incsearch
set backupdir=~/tmp
set directory=~/tmp
