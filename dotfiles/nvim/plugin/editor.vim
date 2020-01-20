" Plugin containing settings related to the editing capabilities.

" Default indent spacing on pressing <Tab> is 4.
set tabstop=4
set shiftwidth=4

" Set the encoding to UTF-8
set encoding=utf-8

" Hard wrap lines at 80 columns.
set textwidth=80

" Enable line breaking.
set linebreak

" Enable automatic indentation based on the context.
set autoindent
set smartindent
set smarttab

" Replace a tab with the equivalent number of spaces.
set expandtab

" Indentation by a multiple of shiftwidth when using > or < keys.
set shiftround

" Enable backspacing in insert mode.
set backspace=indent,eol,start

" Enable incremental searching.
set incsearch

" Buffers can exist without being attached to a window.
set hidden

" Set folding settings.
set foldmethod=indent
set foldlevelstart=99

" Filetypes to ignore in the wildmenu.
set wildignore+=*.o,*.obj,.git,*.class,*.jar,*.war,*.log,*.min.js
set wildignore+=daemons,*.sw?,tags,*.min.js,*tmp/cache/*,node_modules
set wildignore+=bower_components,*-webpack-generated*,*/dist/*
set wildignore+=*/build/*,dist,build
set wildignore+=*/target/*

" Don't redraw during macro execution.
set lazyredraw

" Disable swap files.
set noswapfile

" Disable undo files.
set noundofile

" Disable backups.
set nowritebackup

" Set the TEX flavour to LaTeX.
let g:tex_flavor='latex'

" Set spelling settings.
let g:lexical#spelllang = ['en_us']
let g:lexical#thesaurus = ['~/.config/nvim/thesaurus/mthesaur.txt',]
let g:lexical#spellfile = ['~/.config/nvim/spell/en.utf-8.add',]
let g:lexical#dictionary = ['/usr/share/dict/words',]
