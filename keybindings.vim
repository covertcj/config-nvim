""" CoC {{{
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" trigger completion menu with ctrl+space
inoremap <silent><expr> <c-space> coc#refresh()

" use tab to trigger completion
inoremap <silent><expr> <TAB>
    \ pumvisible() ?
    \   "\<C-n>" :
    \   <SID>check_back_space() ? "\<TAB>" : coc#refresh()

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction
""" }}}

""" FZF {{{
nnoremap <silent> <C-p> :FzfFiles<CR>
nnoremap <silent> <Leader>ff :FzfGFiles<CR>
nnoremap <silent> <Leader>fg :FzfGFiles?<CR>

nnoremap <silent> <Leader>fb :FzfBuffers<CR>
nnoremap <silent> <Leader>fl :FzfBLines<CR>
nnoremap <silent> <Leader>fL :FzfLines<CR>

nnoremap <silent> <Leader>fc :FzfBCommits<CR>
nnoremap <silent> <Leader>fC :FzfCommits<CR>
""" }}}

""" Git {{{
nnoremap <silent> <Leader>gs :G<CR>
nnoremap <silent> <Leader>gS :Ge :<CR>
nnoremap <silent> <Leader>ga :Git add %:p<CR>
nnoremap <silent> <Leader>gl :Glog<CR>:bot copen<CR>

nnoremap <silent> <Leader>gps :Dispatch! git push<CR>
nnoremap <silent> <Leader>gpl :Dispatch! git pull<CR>
""" }}}

""" WinMode {{{
let g:submode_always_show_submode = 1
let g:submode_timeoutlen = 5000
call submode#enter_with('window', 'n', '', '<Leader>w')
call submode#map('window', 'n', '', 'h', '<C-w><' )
call submode#map('window', 'n', '', 'H', '<C-w>5<')
call submode#map('window', 'n', '', 'l', '<C-w>>' )
call submode#map('window', 'n', '', 'L', '<C-w>5>')
call submode#map('window', 'n', '', 'j', '<C-w>-' )
call submode#map('window', 'n', '', 'J', '<C-w>5-')
call submode#map('window', 'n', '', 'k', '<C-w>+' )
call submode#map('window', 'n', '', 'K', '<C-w>5+')
call submode#map('window', 'n', '', '=', '<C-w>=')
call submode#map('window', 'n', '', 'q', ':vertical resize 80<CR>')
call submode#map('window', 'n', '', 'w', ':vertical resize 100<CR>')
call submode#map('window', 'n', '', 'e', ':vertical resize 120<CR>')
call submode#map('window', 'n', '', 'r', ':vertical resize 140<CR>')
call submode#leave_with('window', 'n', '', '<Esc>')
""" }}}

""" EasyMotion {{{
map s <Plug>(easymotion-prefix)
""" }}}

""" Terminal Mode {{{
tnoremap <Esc> <C-\><C-N>
tnoremap <C-]> <Esc>
""" }}}

