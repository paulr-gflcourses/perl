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

Plug 'scrooloose/nerdcommenter'
Plug 'jlanzarotta/bufexplorer'


    Plug 'MarcWeber/vim-addon-mw-utils'
    Plug 'tomtom/tlib_vim'
    Plug 'garbas/vim-snipmate'

        " Optional:
    Plug 'honza/vim-snippets'

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

"---bufexplorer
nmap <C-F5> <Esc>:BufExplorer<cr>
vmap <C-F5> <esc>:BufExplorer<cr>
imap <C-F5> <esc>:BufExplorer<cr>
" F6 - предыдущий буфер
 nmap <C-F6> :bp<cr>
 vmap <C-F6> <esc>:bp<cr>i
 imap <C-F6> <esc>:bp<cr>i
 " F7 - следующий буфер
 nmap <C-F7> :bn<cr>
 vmap <C-F7> <esc>:bn<cr>i
 imap <C-F7> <esc>:bn<cr>i
"---


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


