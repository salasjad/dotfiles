"
"  License: MIT
"
"  File: init.vim
"  Author: Salahuddin Asjad
"  Created: 25-01-2017
"  ---------------------------------------------

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'salasjad/vim-commenter'
Plugin 'christoomey/vim-system-copy'
Plugin 'powerline/powerline'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mkitt/tabline.vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'osyo-manga/vim-marching'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'peterhoeg/vim-qml'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'kshenoy/vim-signature'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'rdnetto/YCM-Generator'
Plugin 'myusuf3/numbers.vim'
Plugin 'vimwiki/vimwiki'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'derekwyatt/vim-scala'
Plugin 'kien/ctrlp.vim'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'dkprice/vim-easygrep'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-repeat'
Plugin 'SirVer/ultisnips'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'tpope/vim-surround'
Plugin 'ervandew/supertab'
Plugin 'Townk/vim-autoclose'
Plugin 'lervag/vimtex'
Plugin 'skammer/vim-css-color'
Plugin 'nhooyr/neoman.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'vim-scripts/cpp.vim'

call vundle#end()

"  ---------------------------------------------

runtime! debian.vim
set background=dark

colorscheme molokai
let g:rehash256 = 1

set nocompatible
filetype plugin indent on
syntax on

set lbr "whitespace linebreak"
set fileencoding=utf-8
set updatetime=250 "mostly because gitgutter is so slow

"Disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"Shift between split windows
:tnoremap <C-h> <C-\><C-n><C-w>h
:tnoremap <C-j> <C-\><C-n><C-w>j
:tnoremap <C-k> <C-\><C-n><C-w>k
:tnoremap <C-l> <C-\><C-n><C-w>l
:nnoremap <C-h> <C-w>h
:nnoremap <C-j> <C-w>j
:nnoremap <C-k> <C-w>k
:nnoremap <C-l> <C-w>l

set hidden
"Open a new empty buffer
nmap <leader>T :enew<cr>
"Move to the next buffer
nmap <leader>l :bnext<CR>
"Close current buffer and go to previous
nmap <leader>bq :bp <BAR> bd #<CR>
"Show all buffers
nmap <leader>bl :ls<CR>


"Shift between tabs
nnoremap H gT
nnoremap L gt

":map <F2> @:

"easier when working with plain text
nnoremap k gk
nnoremap j gj

"Insert a new-line after the current line by pressing enter
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

"Fix indentation
map <F7> mzgg=G`z

nnoremap <leader>e :%s/\r//g

"sudo write when I forget to type sudo vim
cmap w!! w !sudo tee > /dev/null %

set cursorline "highlight cursor
"set cursorcolumn "highlight column

"cursor color for bracket highlightning
"hi MatchParen cterm=none ctermbg=green ctermfg=darkgreen

"Remember the position from last time
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

set switchbuf=useopen,usetab
set showcmd		    " Show (partial) command in status line.
set showmatch		  " Show matching brackets.
set ignorecase    " Do case insensitive matching
set smartcase	    " Do smart case matching
"set incsearch    " Incremental search

"set colorcolumn=80
"highlight ColorColumn ctermbg=black
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set number

let g:system_copy#copy_command='xclip -sel clipboard'
let g:system_copy#paste_command='xclip -sel clipboard -o'

set autowrite		" Automatically save before commands like :next and :make
set mouse=a		" Enable mouse usage (all modes)


"################### PLUGIN CONFIG ####################

"  ---------------------------------------------
"
"airblade/vim-gitgutter
let g:gitgutter_max_signs = 1000

"  ---------------------------------------------

"salasjad/vim-commenter
let g:commenter_author = "Salahuddin Asjad"
let g:commenter_license = "MIT"

"  ---------------------------------------------


"vim-latex/vim-latex
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats='pdf, aux'
let &makeprg = 'if [ -f Makefile ]; then make; else make -C ..; fi'

"  ---------------------------------------------

""Valloric/YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_min_num_of_chars_for_completion=1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0
let g:ycm_goto_buffer_command = 'horizontal-split'
map <C-g> :YcmCompleter GoTo<CR>
"nnoremap d<CR> :YcmCompleter GoToDefinition
"nnoremap j<CR> :YcmCompleter GoToDefinitionElseDeclaration
"nnoremap g<CR> :YcmCompleter GoToDeclaration
"nnoremap k<CR> :YcmCompleter GoToInclude

"  ---------------------------------------------

"scrooloose/syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_include_dirs = ["/usr/include/qt/QtWidgets/"]
hi SpellBad ctermfg=80 ctermbg=234
hi SpellCap ctermfg=017 ctermbg=234

"  ---------------------------------------------

"NERDtree
autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd BufEnter * lcd %:p:h "change path to current file directory

"  ---------------------------------------------

"vim-indent-guides
set ts=2 sw=2 et
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=black
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=darkgrey

"  ---------------------------------------------

"rainbow-()
let g:rbpt_colorpairs = [
    \ ['darkblue',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['lightblue',  'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
    "\ ['Darkblue',    'SeaGreen3'],
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
let g:rbpt_max = 12
let g:rbpt_loadcmd_toggle = 0

"  ---------------------------------------------

"vim-airline
let g:airline_theme='molokai'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_skip_empty_sections = 1
let airline#extensions#tabline#tabs_label = ''
let airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tab_nr = 0

"  ---------------------------------------------

"kien/ctrlp.vim
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}

" Use the closest .git directory as the cwd
let g:ctrlp_working_path_mode = 'r'

" ctrlp < leaderp hehe
nmap <leader>p :CtrlP<cr>

" Navigate to different ctrlp modes
nmap <leader>bb :CtrlPBuffer<cr>
nmap <leader>bm :CtrlPMixed<cr>
nmap <leader>bs :CtrlPMRU<cr>

"  ---------------------------------------------

"jeetsukumaran/vim-buffergator
" Go to the previous opened buffer
nmap <leader>ll :bn<cr>

" Go to the next opened buffer
nmap <leader>hh :bp<cr>

" View open buffers
nmap <leader>bl :BuffergatorOpen<cr>

"  ---------------------------------------------

"vim-whitespace
:highlight ExtraWhitespace ctermbg=darkgray
