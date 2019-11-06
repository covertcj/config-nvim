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

""" FZF
nnoremap <silent> <C-p> :FzfFiles<CR>
nnoremap <silent> <Leader>ff :FzfGFiles<CR>
nnoremap <silent> <Leader>fg :FzfGFiles?<CR>

nnoremap <silent> <Leader>fb :FzfBuffers<CR>
nnoremap <silent> <Leader>fl :FzfBLines<CR>
nnoremap <silent> <Leader>fL :FzfLines<CR>

nnoremap <silent> <Leader>fc :FzfBCommits<CR>
nnoremap <silent> <Leader>fC :FzfCommits<CR>

""" Git
nnoremap <silent> <Leader>gs :G<CR>
nnoremap <silent> <Leader>gS :Ge :<CR>
nnoremap <silent> <Leader>ga :Git add %:p<CR>
nnoremap <silent> <Leader>gl :Glog<CR>:bot copen<CR>

nnoremap <silent> <Leader>gps :Dispatch! git push<CR>
nnoremap <silent> <Leader>gpl :Dispatch! git pull<CR>

""" WinMode
nnoremap <Leader>wr :WinModeResizeStart<CR>

