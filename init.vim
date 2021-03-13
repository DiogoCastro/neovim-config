let g:python3_host_prog = '/usr/bin/python3'

set encoding=utf-8
set number relativenumber
syntax enable
set noswapfile
set scrolloff=7
set backspace=indent,eol,start

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix
set mouse=a

set cursorline

let mapleader = ' '

call plug#begin('~/.vim/plugged')

    "Plug 'morhetz/gruvbox'
    Plug 'jiangmiao/auto-pairs'
    Plug 'scrooloose/nerdtree'
    Plug 'ryanoasis/vim-devicons'
    Plug 'preservim/nerdcommenter'
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " autocompletion framework
    Plug 'zchee/deoplete-jedi' " autocompletion source
    Plug 'w0rp/ale' " using flake8
    Plug 'ludovicchabant/vim-gutentags' " create, maintain tags (using universal-ctags)
    Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
    Plug 'NLKNguyen/papercolor-theme'
    Plug 'a-vrma/black-nvim', {'do': ':UpdateRemotePlugins'}

call plug#end()

imap <C-Del> X<Esc>ce
"imap <C-BS> X<Esc>db
imap <C-BS> <C-W>db
inoremap <C-w> <C-\><C-o>dB
inoremap <C-BS> <C-\><C-o>db
" just for the further description


let g:airline_theme='deus'

if (has("termguicolors"))
    set termguicolors
endif

lua require 'colorizer'.setup()

" NERDCommenter
nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv

" NERDTree
let NERDTreeQuitOnOpen=1
let NERDTreeMinimalUI=1
nmap <F2> :NERDTreeToggle<CR>

" Tabs
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemode=':t'
nmap 1 :bp<CR>
nmap 2 :bn<CR>
nmap <C-w> :bd<CR>


" Plugin settings

" deoplete.nvim, deoplete-jedi
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#jedi#show_docstring = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#custom#option = 1

" ale, flake8 settings
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 1

" tagbar
let g:tagbar_autofocus = 1
nnoremap <silent> <F4> :TagbarToggle<CR>

" papercolor-theme
set background=dark
colorscheme PaperColor

