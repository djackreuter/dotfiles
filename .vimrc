inoremap jk <Esc>

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set visualbell
set wildmenu
set showmatch
set wildmode=longest:list,full
set hlsearch
au BufNewFile,BufRead *.tt set filetype=html

call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'mattn/emmet-vim'
Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'
Plug 'lifepillar/vim-solarized8'
Plug 'hzchirs/vim-material'
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'haishanh/night-owl.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'arcticicestudio/nord-vim'
" Plug 'zxqfl/tabnine-vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'blueshirts/darcula'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
call plug#end()

let g:ale_linters = {
\   'javascript': ['eslint'],
\}

" syntax highlighting
set bg=dark
syntax on
" set bg=light
" set termguicolors
colorscheme default
" colorscheme solarized8
" let g:dracula_italic = 0
" colorscheme dracula
" highlight Normal ctermbg=None
" colorscheme darcula
" let g:airline_theme='material'
" let g:airline_theme='onedark'
" let g:airline_theme = 'palenight'
" let g:material_style='oceanic'
" colorscheme night-owl
" colorscheme nord
" colorscheme vim-material
" colorscheme onedark
" colorscheme palenight
" highlight Normal ctermbg=NONE
" highlight nonText ctermbg=NONE

filetype plugin indent on

map ; :Files<CR>

