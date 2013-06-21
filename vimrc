set number
set laststatus=2
syntax enable
set background=dark
"colorscheme solarized
colorscheme desert

set hlsearch
set incsearch
set ignorecase
set smartcase
let mapleader=","
set noswapfile
set autowrite

nmap <leader><cr> :nohlsearch<cr>
nmap <tab> %
vmap <tab> %


inoremap jj <esc>
nnoremap ; :


set expandtab
set ts=4
set sw=4

set wildignore+=*.o,*.obj,.git
augroup filetype
    autocmd! BufRead,BufNewFile BUILD set filetype=blade
augroup end
