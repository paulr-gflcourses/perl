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


let g:mapleader=','

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

syntax on
colorscheme gruvbox
set background=dark


set ai
set cin


