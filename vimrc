call plug#begin()

Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'pbrisbin/vim-mkdir'
Plug 'digitaltoad/vim-pug'
Plug 'elixir-lang/vim-elixir'

call plug#end()

syntax enable
set background=dark
colorscheme solarized

set relativenumber
set number
set nowrap 
set incsearch
set hlsearch

" Treat dashed words as whole words in stylesheets
autocmd Filetype css,scss,sass setlocal iskeyword+=-

nnoremap <Leader>n :NERDTreeToggle<CR>

