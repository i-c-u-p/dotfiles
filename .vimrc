call plug#begin('~/.vim/plugged')
    Plug 'romgrk/doom-one.vim'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-commentary'
call plug#end()

filetype indent plugin on
syntax enable
set mouse=a
set termguicolors
set nocompatible
set hidden
set wildmenu
set wildignorecase 
set fileignorecase
set showcmd
set hlsearch
set incsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set ruler
set confirm
set visualbell
set number relativenumber 
set notimeout ttimeout ttimeoutlen=200
set pastetoggle=<F11>
set shiftwidth=4
set softtabstop=4
set expandtab
set noswapfile
set nowrap
set background=dark
set cursorline
set autochdir

map Y y$
nnoremap <C-L> :nohl<CR><C-L>
nnoremap n nzzzv
nnoremap N Nzzzv
inoremap kj <Esc>
tnoremap kj <C-\><C-n>

inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap [ [<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

let mapleader=" "
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"
colorscheme doom-one
highlight CursorLineNr cterm=bold ctermbg=Black ctermfg=Blue
