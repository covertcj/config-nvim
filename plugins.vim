call plug#begin(stdpath('data') . '/plugged')

Plug 'editorconfig/editorconfig-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'

Plug 'lifepillar/vim-solarized8'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }

Plug 'junegunn/fzf', {
\ 'dir': stdpath('data') . 'fzf',
\ 'do': './install --bin'
\}
Plug 'junegunn/fzf.vim'

Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-dispatch'
Plug 'kana/vim-submode'
Plug 'easymotion/vim-easymotion'

Plug 'voldikss/vim-floaterm'

call plug#end()
