" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

"Plug 'Valloric/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'

Plug 'kien/ctrlp.vim'
Plug 'rking/ag.vim'
Plug 'easymotion/vim-easymotion'

Plug 'scrooloose/syntastic'

" GIT
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Colorschemes
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'



call plug#end()

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'


let g:mapleader=','
let g:gruvbox_contrast_light = 'hard'
"let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_italic=1

let g:solarized_termcolors=256
"mappings

map <C-n> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)


set number
set expandtab
set tabstop=4
set shiftwidth=4
set smarttab
set smartindent
set tw=80
set ai

set hlsearch
set incsearch

"--- syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs=1
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
"---

"set termguicolors
set t_Co=256

syntax on
syntax enable

set background=dark
colorscheme gruvbox
"colorscheme solarized


"set cin


