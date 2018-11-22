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

" Major settings
set tabstop=4 shiftwidth=4 expandtab
set showcmd
set nu cul
set ai
set hls is
set nojs " One space when joining after period
set lbr " Visually wrap at word boundaries
set ls=2 " Always show the filename at the bottom

" Because F1 is annoying
inoremap <F1> <Esc>

" Open all folds http://stackoverflow.com/q/8316139/1979005
au BufWinEnter * normal zR

" Filetype-specific indent options
au Filetype go,make setl noexpandtab " Golang, Makefile: use tabs, not spaces

" Enable manpage viewing in Vim (:Man command)
ru ftplugin/man.vim

" Syntastic options
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_compiler_options = "-std=c++11"
let g:syntastic_go_checkers = ["go", "gofmt"]
let g:syntastic_python_pylint_args = "--disable=line-too-long,missing-docstring,invalid-name"

" Syntax options
let g:jsx_ext_required = 0

" Change working directory to home folder on Windows (not system32)
if has('win32')
    cd $HOME
endif
