syntax on:

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

set complete+=kspell
set completeopt=menuone,longest

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'kien/ctrlp.vim'
Plug 'Valloric/YouCompleteMe' 
Plug 'mbbill/undotree'
Plug 'rdnetto/YCM-Generator'
Plug 'vim-scripts/AutoComplPop'
"Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

call plug#end() 

colorscheme gruvbox
set background=dark
set shortmess+=c
if executable('rg')
    let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let mapleader = " "
let g:netrw_browse_split=2
let g:netrw_banner = 0
let g:netrw_winsize = 25

let g:ctrlp_use_caching = 0

"let g:tex_flavor = "latex"
"let g:livepreview_engine = 'mupdf'
nnoremap <leader>w :! pdflatex % <CR><CR>
nnoremap <leader>e :! mupdf $(echo % \| sed 's/tex$/pdf/') & disown <CR><CR>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <Leader>ps :Rg<SPACE>
nnoremap <C-p> :GFiles<CR>
nnoremap <Leader>pf :Files<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
noremap <Leader>py :w <CR> :!python3 %<CR>

nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <Leader>gf :YcmCompleter FixIt<CR>
" YCM generator
nnoremap <leader>yc :!~/.vim/plugged/YCM-Generator/config_gen.py . <CR>y <CR>
"g++ thread execution
nnoremap <leader>m :w<CR> :!g++ -std=c++11 -pthread % <CR>
" go to vimrc
nnoremap <leader>vi :w<CR>:e ~/.vimrc<CR> 


inoremap zz <Esc>
noremap ## <Esc>^i#<Esc> 

filetype plugin indent on
