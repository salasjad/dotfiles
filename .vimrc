call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'preservim/NERDTree'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
call plug#end()

"General settings
let mapleader = " "
set number relativenumber
set autoindent expandtab tabstop=2 shiftwidth=2

nmap <leader>T :enew<cr> "Open a new empty buffer
nmap <leader>l :bnext<CR> "Move to the next buffer
nmap <leader>h :bprevious<CR> "Move to the previous buffer
nmap <leader>bq :bp <BAR> bd #<CR> "Close the current buffer and move to the previous one
nmap <leader>bl :ls<CR> "Show all open buffers and their status

"gruvbox
let g:gruvbox_contrast_dark = 'hard'
set bg=dark
colorscheme gruvbox

"vim-airline
let g:airline#extensions#tabline#enabled = 1 "Enable the list of buffers
let g:airline#extensions#tabline#fnamemod = ':t' "Show just the filename

"NERDTree
map <leader>n :NERDTreeToggle<CR>

"fzf
map ; :Files<CR>
