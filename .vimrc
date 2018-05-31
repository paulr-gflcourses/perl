" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'Valloric/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'

Plug 'kien/ctrlp.vim'

Plug 'easymotion/vim-easymotion'

" GIT
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Colorschemes
Plug 'morhetz/gruvbox'

call plug#end()

"set termguicolors
"let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"



let g:mapleader=','
let g:gruvbox_contrast_light = 'hard'
"let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_italic=1
"mappings

map <C-n> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)


set number
set expandtab
set tabstop=4
set shiftwidth=4
set smarttab

set hlsearch
set incsearch

"set termguicolors

syntax on
colorscheme gruvbox
set background=dark


set ai
set cin


