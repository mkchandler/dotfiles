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

" Line settings
set relativenumber
set nowrap

" Always show the status line
set laststatus=2

" Search settings
set incsearch
set hlsearch

" Tab settings
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Treat dashed words as whole words in stylesheets
autocmd Filetype css,scss,sass setlocal iskeyword+=-

inoremap jj <Esc>
nnoremap <Leader>n :NERDTreeToggle<CR>

