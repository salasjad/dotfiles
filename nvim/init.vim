set rtp+=~/.vim/bundle/Vundle.vim
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
Plugin 'dkprice/vim-easygrep'
Plugin 'tpope/vim-repeat'
Plugin 'SirVer/ultisnips'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'tpope/vim-surround'
Plugin 'ervandew/supertab'
Plugin 'Townk/vim-autoclose'
Plugin 'vim-latex/vim-latex'

call vundle#end()            " required

runtime! debian.vim

set lbr "whitespace linebreak"

"set t_Co=16
"let g:solarized_termcolors=256

set background=dark
colorscheme hybrid
"colorscheme solarized
"colorscheme ego
"colorscheme wombat

set nocompatible
filetype plugin indent on
syntax on

set fileencoding=utf-8  " The encoding written to file.

set updatetime=250 "mostly because gitgutter is so slow

let g:commenter_author = "Salahuddin Asjad"
let g:commenter_license = "MIT"

"easier when working with plain text
nnoremap k gk
nnoremap j gj

"cursor over for bracket highlightning
hi MatchParen cterm=none ctermbg=green ctermfg=darkgreen

set grepprg=grep\ -nH\ $* "for vim-latex
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats='pdf, aux'

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
"set incsearch		" Incremental search

set expandtab
set shiftwidth=3
set softtabstop=3
set number

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
hi SpellBad ctermfg=80 ctermbg=234
hi SpellCap ctermfg=017 ctermbg=234

let g:system_copy#copy_command='xclip -sel clipboard'
let g:system_copy#paste_command='xclip -sel clipboard -o'

set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)

"NERDtree
autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd BufEnter * lcd %:p:h "change path to current file directory

"vim-indent-guides
set ts=2 sw=2 et
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=black
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=darkgrey

"rainbow-()
let g:rbpt_colorpairs = [
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
let g:rbpt_max = 12
let g:rbpt_loadcmd_toggle = 0

"vim-airline
"set encoding=utf-8
"let g:airline_theme='solarized'
let g:airline_theme='dark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_skip_empty_sections = 1

set cursorline "highlight cursor
"set cursorcolumn "highlight column

"vim-whitespace
:highlight ExtraWhitespace ctermbg=darkgray

"Disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"Shift between split windows
:tnoremap <A-h> <C-\><C-n><C-w>h
:tnoremap <A-j> <C-\><C-n><C-w>j
:tnoremap <A-k> <C-\><C-n><C-w>k
:tnoremap <A-l> <C-\><C-n><C-w>l
:nnoremap <A-h> <C-w>h
:nnoremap <A-j> <C-w>j
:nnoremap <A-k> <C-w>k
:nnoremap <A-l> <C-w>l

"insert a new-line after the current line by pressing Enter (Shift-Enter for inserting a line before the "current line):
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>
map <F7> mzgg=G`z

nnoremap H gT
nnoremap L gt
:map <F2> @:

cmap w!! w !sudo tee > /dev/null %
