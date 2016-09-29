call plug#begin()

Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'pbrisbin/vim-mkdir'
Plug 'digitaltoad/vim-pug'
Plug 'elixir-lang/vim-elixir'
Plug 'leafgarland/typescript-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
Plug 'lambdatoast/elm.vim'

call plug#end()

syntax enable
set background=dark
colorscheme solarized
let g:airline_theme='solarized'
let g:airline_powerline_fonts=1

set relativenumber
set nowrap
set incsearch
set hlsearch
set laststatus=2
set expandtab

" Treat dashed words as whole words in stylesheets
autocmd Filetype css,scss,sass setlocal iskeyword+=-
autocmd FileType html setlocal shiftwidth=2 tabstop=2

inoremap jj <Esc>
nnoremap <Leader>n :NERDTreeToggle<CR>

