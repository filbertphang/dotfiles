" controls
set mouse+=a
let mapleader=","
nnoremap <tab> %
vnoremap <tab> %
map ; :
noremap ;; ;

" UI settings
set nocompatible
set title
set number relativenumber
set ruler 
set showcmd 
set wildmenu 
set visualbell 
set ttyfast
set wrap
set linebreak
set colorcolumn=88
set list
set listchars=tab:▸\ ,eol:¬

" editing
syntax on
filetype plugin indent on
set autoindent smartindent

" backups and undos
set backup
set backupdir=~/.backup
" set undofile

" tab settings
set shiftwidth=2
set tabstop=2
set expandtab

" searching
set ignorecase smartcase
set gdefault
set incsearch showmatch hlsearch
nnoremap <leader><space> :noh<cr>

" themes
set termguicolors
set background=dark
color Atelier_HeathDark

" other keybinds
nnoremap <leader>a ea

" abbreviations
abbr psvm public static void main(String[] args){<cr><bs>
abbr sout System.out.println("");<esc>2hi
abbr sop System.out.print("");<esc>2hi
abbr sfm String s = String.format("");<cr>System.out.println(s);<esc>k$2hi
abbr tostr @Override<cr>public String toString(){<cr><bs>

"" PLUGINS
" vim-rainbow
" let g:rainbow_active = 1

" lightline
set laststatus=2
let g:lightline = { 'colorscheme': 'jellybeans' }

" delimitmate
let delimitMate_expand_cr = 1
let delimitMate_expand_space = 1

" asyncrun/asynctasks
let g:asyncrun_open = 6
noremap <silent><f5> :AsyncTask file-run<cr>
noremap <silent><f9> :AsyncTask file-build<cr>

" install plug if not found
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" run pluginstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

" plugins
call plug#begin()
Plug 'flazz/vim-colorschemes'
Plug 'itchyny/lightline.vim'
Plug 'Raimondi/delimitMate'
Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'
call plug#end()
