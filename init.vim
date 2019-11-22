let mapleader = ' '
let g:config_dir = expand('<sfile>:p:h')

function! g:LoadConfig(path)
    exec 'source ' . g:config_dir . '/' . a:path
endfunction

call g:LoadConfig('editor.vim')

call g:LoadConfig('plugins.vim')
call g:LoadConfig('plugcfg/fzf.vim')
call g:LoadConfig('plugcfg/floaterm.vim')

call g:LoadConfig('keybindings.vim')

" colorscheme challenger_deep
set background=dark
colorscheme solarized8

