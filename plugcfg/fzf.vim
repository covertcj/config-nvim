let g:fzf_command_prefix = 'Fzf'
let g:fzf_layout = { 'window': 'call CjcFloatingFzf()' }
let $FZF_DEFAULT_OPTS='--layout=reverse'

" see: https://github.com/junegunn/fzf.vim/issues/664
function! CjcFloatingFzf()
  let buf = nvim_create_buf(v:false, v:true)

  let height = float2nr(&lines - (&lines * 3 / 10))
  let row = 0
  let width = float2nr(&columns - (&columns * 2 / 10))
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
