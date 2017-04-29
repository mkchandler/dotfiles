call plug#begin()

" Theme and layout setup
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'

" File browsing/searching
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'

" Language/framework plugins
Plug 'elixir-lang/vim-elixir'
Plug 'lambdatoast/elm.vim'
Plug 'leafgarland/typescript-vim'

call plug#end()

syntax enable

" Set the theme to solarized dark
set background=dark
colorscheme solarized
let g:airline_theme='solarized'
let g:airline_powerline_fonts=1

set nocompatible
set modelines=0
set encoding=utf8
set scrolloff=5
set autoindent

" Line settings
set relativenumber
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

" Always show the status line
set laststatus=2

" Search settings
set incsearch
set hlsearch
set showmatch
set ignorecase
set smartcase

" Tab settings
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Backups
set backup
set noswapfile

set undodir=~/.vim/tmp/undo//
set backupdir=~/.vim/tmp/backup//
set directory=~/.vim/tmp/swap//

" Make those folders automatically if they don't already exist.
if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), "p")
endif
if !isdirectory(expand(&backupdir))
    call mkdir(expand(&backupdir), "p")
endif
if !isdirectory(expand(&directory))
    call mkdir(expand(&directory), "p")
endif

" Treat dashed words as whole words in stylesheets
autocmd Filetype css,scss,sass setlocal iskeyword+=-

inoremap jj <Esc>
nnoremap <Leader>n :NERDTreeToggle<CR>

