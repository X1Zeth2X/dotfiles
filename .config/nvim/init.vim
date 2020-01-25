" Key binds
map <C-b> :NERDTreeToggle<CR>
map <C-s> :w<CR>
map <C-q> :q<CR>

" NERDTree Config
" Opens NerdTree automatically when no files are specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Pywal
Plug 'dylanaraps/wal.vim'

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.config/fzf', 'do': './install --all' }

" NERDTree
Plug 'scrooloose/nerdtree'

" Initialize plugin system
call plug#end()

colorscheme wal
