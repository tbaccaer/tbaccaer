" Plugin containing stylistic preferences.

" Display relative line numbers, but also display the actual number on the
" current line.
set number
set relativenumber

" Highlight the current line number.
set cursorline

" Always show the status line.
set laststatus=2

" Set the color scheme
if has('termguicolors')
    set termguicolors
endif

set background=dark
let g:challenger_deep_termcolors=16
colorscheme challenger_deep

" increase spacing between line numbers and text
hi LineNr guibg=None

" Display hidden characters.
set list
set listchars=tab:→\ ,extends:›,precedes:‹,nbsp:·,trail:·

" Show the title in the terminal.
set title

" Hide command information at the bottom of the prompt.
set noshowcmd

" Set the scrolling offset.
set scrolloff=3

" Disable some of the prose the editor outputs for basic tasks.
set shortmess+=AIOTWaotc

" Disable the bell.
set belloff+=ctrlg

" add a line for max column length
set colorcolumn=100
