au FileType fzf set nonu nornu

function! s:find_git_root()
    let l:root = split(system('git rev-parse --show-toplevel'), '\n')[0]
    return v:shell_error ? '' : l:root
endfunction

function! fuzzy#floating_fzf()
  let buf = nvim_create_buf(v:false, v:true)
  call setbufvar(buf, '&signcolumn', 'no')

  let height = float2nr(&lines - (&lines * 1.5 / 10))
  let row = float2nr((&lines - height) / 2)
  let width = float2nr(&columns - (&columns * 1 / 10))
  let col = float2nr((&columns - width) / 2)

  let opts = {
        \ 'relative': 'editor',
        \ 'row': row,
        \ 'col': col,
        \ 'width': width,
        \ 'height': height
        \ }

  call nvim_open_win(buf, v:true, opts)
endfunction

let s:fzf_defaults = {
\ 'sink': 'e',
\ 'options': '--reverse',
\ 'window': 'call fuzzy#floating_fzf()'
\}

function s:warn(message)
    echohl WarningMsg
    echom a:message
    echohl None
endfunction

function s:fuzz(opts)
    let l:merged_opts = extend(s:fzf_defaults, a:opts)
    return fzf#run(l:merged_opts)
endfunction

function fuzzy#in_git(opts)
    let l:root = s:find_git_root()
    if empty(l:root)
        return s:warn('Not in a git repo...')
    endif

    let l:merged_opts = extend({ 'dir': l:root }, a:opts)
    return s:fuzz(l:merged_opts)
endfunction

function fuzzy#git_files()
    return fuzzy#in_git({ 'source': 'git ls-files' })
endfunction

function fuzzy#git_altered()
    return fuzzy#in_git({ 'source': 'git status --porcelain | cut -c4-' })
endfunction

function fuzzy#all_files()
    return s:fuzz({})
endfunction

nnoremap <silent> <Leader>ff :call fuzzy#all_files()<CR>
nnoremap <silent> <Leader>fg :call fuzzy#git_files()<CR>
nnoremap <silent> <Leader>fc :call fuzzy#git_altered()<CR>

