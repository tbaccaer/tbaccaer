" Plugin for configuring keybindings.

" Make split navigation easier.
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" Split closing actions.
nnoremap <Leader>q <C-W>c
nnoremap <Leader>o <C-W>o
nnoremap <Leader>z <C-W>z

" Disable arrow keys.
nnoremap <up> <nop>
nnoremap <down> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Buffer switching with arrow keys.
nnoremap <left> :bp<CR>
nnoremap <right> :bn<CR>

" Toggle between current buffer and previously used buffer
nnoremap <Leader><Leader> <c-^>

" Split creation.
nnoremap <Leader>s <C-W>s
nnoremap <Leader>v <C-W>v

" Quickfix & Location Lists
nnoremap <Leader>fo :copen<CR>
nnoremap <Leader>fc :cclose<CR>
nnoremap <Leader>lo :lopen<CR>
nnoremap <Leader>lc :lclose<CR>

" FZF toggle
nnoremap <Leader>t :Files<CR>
nnoremap <Leader>b :Buffers<CR>

" Disable search highlights.
nnoremap <leader>h :nohlsearch<CR>

" Toggle folds.
nnoremap <Tab> za

" Line bubbling.
nnoremap <Leader>k ddkP
nnoremap <Leader>j ddp

" Avoid unintentional switches to different modes.
nnoremap Q <nop>
nnoremap K <nop>

" Leader+d opens up the file tree.
nnoremap <leader>d :Explore<CR>

" Searching with ripgrep (Thanks Jon! https://github.com/jonhoo)
noremap <leader>r :Rg<CR>
