" Plugin containing settings related to the lightline plugin.

function! LightlineReadonly()
    return &readonly ? '' : ''
endfunction

function! LightlineFugitive()
    if exists('*fugitive#head')
        let branch = fugitive#head()
        return branch !=# '' ? ' '.branch : ''
    endif
    return ''
endfunction

let g:lightline = {
    \   'colorscheme': 'challenger_deep',
    \   'active': {
    \       'left': [ ['mode', 'paste'],
    \                 ['fugitive', 'readonly', 'filename', 'modified' ] ]
    \   },
    \   'component': {
    \       'lineinfo': ' %3l:%-2v',
    \   },
    \   'component_function': {
    \       'readonly': 'LightlineReadonly',
    \       'fugitive': 'LightlineFugitive'
    \   },
    \   'separator': {
    \       'left': '▒',
    \       'right': '▒'
    \   }
    \ }
