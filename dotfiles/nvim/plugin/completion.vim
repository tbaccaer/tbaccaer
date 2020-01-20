" Plugin for autocompletion related settings.

" Enable NCM2 in all buffers.
autocmd BufEnter * call ncm2#enable_for_buffer()

" Configure the omnicomplete menu behaviour.
set completeopt=noinsert,menuone,noselect

" Keybinds for completion.
noremap <expr><Tab> (pumvisible()?(empty(v:completed_item)?"\<C-n>":"\<C-y>"):"\<Tab>")
inoremap <expr><CR> (pumvisible()?(empty(v:completed_item)?"\<CR>\<CR>":"\<C-y>"):"\<CR>")

