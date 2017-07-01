" Pathogen
execute pathogen#infect()

" Set up syntax highlighting
syntax enable
filetype plugin indent on

" Initialize a color scheme appropriate for the environment
if has('gui_running') || &t_Co == 256
    " Set up Molokai if GUI is running or we have a 256 color terminal
    set background=dark
    colorscheme molokai
elseif has('win32')
    " Otherwise on Windows, set colorscheme Pablo (works well w/ 16 colors)
    " (On Ubuntu, default is OK by me)
    colorscheme pablo
endif

" Set font to 9-point Consolas in gVim on Windows
if has('gui_running') && has('win32')
    set guifont=Consolas:h9:cANSI
endif

" Set indentation settings for using spaces only
set tabstop=4 shiftwidth=4 expandtab

" Show commands as I type them (example: working with counts like 100G)--in BOTTOM RIGHT, not bottom left
set showcmd

" Show line numbers and highlight current line
set nu cul

" Auto-indent like any decent programming editor
set ai

" Turn on search highlighting; turn on incremental search
set hls is

" Only one space when joining lines at sentence boundaries
set nojs

" Wrap visually at word boundaries, not in the middle of a word
set lbr

" Because F1 is annoying
inoremap <F1> <Esc>

" Open all folds http://stackoverflow.com/q/8316139/1979005
au BufWinEnter * normal zR

" Syntastic options
let g:syntastic_check_on_open = 1
let g:syntastic_cpp_compiler_options = "-std=c++11"
let g:syntastic_python_pylint_args = "--disable=line-too-long"

" Change working directory to home folder on Windows (not system32)
if has('win32')
    cd $HOME
endif
