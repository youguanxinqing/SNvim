call plug#begin('~/.vim/plugged')

Plug 'https://github.com/tpope/vim-commentary.git'
Plug 'https://github.com/neoclide/coc.nvim.git', {'branch': 'release'}
Plug 'https://github.com/Yggdroot/indentLine.git'
Plug 'https://github.com/lfv89/vim-interestingwords.git'
Plug 'https://github.com/lifepillar/vim-gruvbox8.git'
Plug 'ludovicchabant/vim-gutentags'                                                                                                                                                                               
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'https://github.com/spacewander/openresty-vim.git'

call plug#end()


filetype on
filetype plugin on
set t_Co=256
set nu
set tabstop=4
set shiftwidth=4
set softtabstop=4
set nobackup
set confirm
set expandtab
set ignorecase
set incsearch
set cursorline
set colorcolumn=81
set smartindent
set autoindent
set cindent
set tags=./.tags;,.tags
set nowrap
syntax enable

colorscheme gruvbox8

inoremap jj <Esc>
inoremap <c-n> gt
inoremap <c-m> gT
nnoremap <C-A> :Files<CR> 
nnoremap <C-H> :Rg<CR> 

" last pos
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
