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
set autoindent
filetype plugin indent on
:set guicursor=i:block

" backups and undos
set backup
set backupdir=~/.backup

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
nnoremap <space> <C-w>

" abbreviations
" java
iabbr psvm public static void main(String[] args){<cr><bs><space>
iabbr sout System.out.println("");<esc>2hi
iabbr sop System.out.print("");<esc>2hi
iabbr sfm String s = String.format("");<cr>System.out.println(s);<esc>k$2hi
iabbr tostr @Override<cr>public String toString(){<cr>
" python
iabbr inem if __name__ == "__main__":<cr>main()<cr><esc>

" plugins config
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

" install plugins
function! Cond(cond, ...)
  let opts = get(a:000, 0, {})
  return a:cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction

call plug#begin()
Plug 'flazz/vim-colorschemes', Cond(!exists('g:vscode'))
Plug 'itchyny/lightline.vim', Cond(!exists('g:vscode'))
Plug 'Raimondi/delimitMate', Cond(!exists('g:vscode'))
Plug 'skywind3000/asynctasks.vim', Cond(!exists('g:vscode'))
Plug 'skywind3000/asyncrun.vim', Cond(!exists('g:vscode'))
call plug#end()

" clipboard (neovim)
let g:clipboard = {
                \   'name': 'WslClipboard',
                \   'copy': {
                \      '+': 'clip.exe',
                \      '*': 'clip.exe',
                \    },
                \   'paste': {
                \      '+': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
                \      '*': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
                \   },
                \   'cache_enabled': 0,
                \ }
noremap <leader>y "+y
noremap <leader>p "+p"

