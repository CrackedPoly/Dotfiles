"Vundle required
set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
filetype off
"call vundle#begin('~/some/path/here')
call vundle#begin()
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-surround'
Plugin 'justinmk/vim-sneak'
Plugin 'jiangmiao/auto-pairs'
Plugin 'itchyny/lightline.vim'
Plugin 'frazrepo/vim-rainbow'
Plugin 'preservim/nerdtree'
Plugin 'mg979/vim-visual-multi', {'branch': 'master'} 
Plugin 'Yggdroot/indentLine'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}, {'do': 'yarn install --frozen-lockfile'}
"Plugin 'voldikss/vim-floaterm'
call vundle#end()

"vim basic
set number
set hlsearch
set ruler
set showcmd
set clipboard+=unnamed
set noerrorbells
set autoread
syntax on
autocmd BufReadPost * normal! g`"
filetype on
filetype indent on
filetype plugin indent on
inoremap jk <ESC>
nnoremap H ^
nnoremap L $
nnoremap U <C-r>
:tnoremap <Esc> <C-\><C-n>

"colorscheme
colorscheme molokai
let g:rehash256 = 1
let g:molokai_original = 1

"vim-rainbow
let g:rainbow_active = 1

"vim-easymotion
"nmap z <Plug>(easymotion-bd-w)

"vim-s;eak
map s <Plug>Sneak_s
map S <Plug>Sneak_S
map f <Plug>Sneak_f
map F <Plug>Sneak_F

"auto-pairs
let g:AutoPairs = {'(':')', '[':']', '{':'}', "'":"'", '"':'"', '<':'>'}

"nerdtree
"au VimEnter * NERDTree | wincmd p "open nerdtree on opening
au bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif "auto close when nerdtree is the last tag
let NERDTreeWinPos="left"
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

"vim-floaterm
"let g:floaterm_wintype = 'split'
"let g:floaterm_position = 'rightbelow'
"let g:floaterm_height = 0.3

"indentLine
let g:indent_guides_guide_size = 1 
let g:indent_guides_start_level = 2

"coc-vim
let g:python3_host_prog = '/usr/bin/python3'

nmap <leader>wq :wq<CR>

