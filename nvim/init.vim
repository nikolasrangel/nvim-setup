call plug#begin('~/.vim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdTree'
Plug 'itchyny/lightline.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Autoclose things like parentheses, quotes, etc
Plug 'cohama/lexima.vim'

call plug#end()

nmap <C-n> :NERDTreeToggle<CR>
let g:deoplete#enable_at_startup = 1
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

set number
set hidden
:set shiftwidth=2
:set autoindent
:set smartindent
set cc=80                   " set an 80 column border for good coding style

" Enable syntax highlighting
syntax on

" Complete files like a shell
set wildmode=list:longest

" Increase command line history
set history=50

" Enable mouse in all modes
set mouse=a

" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

" Search case-insensitive
set ignorecase

" Search case-sensitive if expression contains a capital letter
set smartcase

" Syntax highlighting items specify folds
set foldmethod=syntax

" Defines 1 col at window left, to indicate folding
set foldcolumn=1

" Activate folding by JS syntax
let javaScript_fold=1

" Start file with all folds opened
set foldlevelstart=99

" Copy to system clipboard
set clipboard+=unnamedplus
