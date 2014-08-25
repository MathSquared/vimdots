" Pathogen
execute pathogen#infect()

" Set up syntax highlighting
syntax enable

" Initialize a color scheme appropriate for the environment
if has('gui_running')
    " Set up Solarized if GUI is running
    set background=dark
    colorscheme solarized
else
    " Otherwise, set colorscheme Pablo (works well w/ 16 colors)
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

" Change working directory to home folder on Windows (not system32)
if has('win32')
    cd $HOME
endif
