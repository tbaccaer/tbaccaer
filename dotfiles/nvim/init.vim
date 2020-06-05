" Main configuration file for the Vim editor.
" Configuration is modularized in plugins, check out the 'plugin' directory.

" Leader mapping is bound to space.
let mapleader="\<Space>"

" File-type specific leader is \.
let maplocalleader="\\"

" Loading vim configuration files for specific filetypes.
filetype plugin indent on
set hidden

" Even if loading plugins goes wrong, I still want my syntax highlighting.
syntax enable

" Install plugins
call plug#begin('~/.local/share/nvim/plugged')

" Styling
Plug 'challenger-deep-theme/vim'
Plug 'itchyny/lightline.vim'

" Navigation
Plug 'dylanaraps/root.vim'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" Completion
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'

" Completion Sources
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-racer' " Rust

" General Enhancements
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'

" Filetype Specific Stuff
Plug 'pangloss/vim-javascript' "Javascript
Plug 'cespare/vim-toml'        "TOML
Plug 'rust-lang/rust.vim'      "Rust
Plug 'niklasl/vim-rdf'         "RDF
Plug 'soli/prolog-vim'         "Prolog

call plug#end()
