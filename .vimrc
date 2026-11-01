call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': 'fzf#install()' }
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'preservim/NERDTree'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'dart-lang/dart-vim-plugin'
Plug 'kshenoy/vim-signature'
Plug 'jlcrochet/vim-razor'
Plug 'luochen1990/rainbow'
call plug#end()

"General settings
let mapleader = "\<Space>"

set number relativenumber
set autoindent expandtab tabstop=2 shiftwidth=2
set mouse=
set ttymouse=
set cursorline
set clipboard=unnamedplus

"Open a new empty buffer
nmap <leader>T :enew<CR> 
"Move to the next buffer
nmap <leader>l :bnext<CR> 
"Move to the previous buffer
nmap <leader>h :bprevious<CR> 
"Close the current buffer and move to the previous one
nmap <leader>bq :bp <BAR> bd #<CR>
"Show all open buffers and their status
nmap <leader>bl :ls<CR>
nmap <leader>b :Buffers<CR>

"+clipboard
vnoremap <leader>y "+y
nnoremap <leader>y "+yy
nnoremap <leader>p "+p

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

set timeoutlen=1000
set ttimeoutlen=5

"gruvbox
let g:gruvbox_contrast_dark = 'hard'
set bg=dark
colorscheme gruvbox

"vim-airline
let g:airline#extensions#tabline#enabled = 1 "Enable the list of buffers
let g:airline#extensions#tabline#fnamemod = ':t' "Show just the filename

"NERDTree
nmap <leader>n :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1

"fzf
map ; :Files<CR>

"dart-vim-plugin
let g:dart_html_in_string = v:true
let g:dart_style_guide = 2

let g:airline_theme='solarized_flood'

let g:rainbow_active = 1 " Enable rainbow parentheses
