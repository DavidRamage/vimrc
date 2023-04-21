call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes
"Airline
Plug 'vim-airline/vim-airline'
"NERDTree
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
"IndentLine
Plug 'https://github.com/Yggdroot/indentLine.git'
" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting
"
map <F2> :NERDTreeToggle<CR>
set nu
colors desert

au BufNewFile,BufRead *.py
    \set tabstop=4
    \set softtabstop=4
    \set shiftwidth=4
    \set textwidth=79
    \set expandtab
    \set autoindent
    \set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \set tabstop=2
    \set softtabstop=2
    \set shiftwidth=2
    \set expandtab
    \set autoindent


au BufNewFile,BufRead *.yaml, *.yml
    \set tabstop=2
    \set softtabstop=2
    \set shiftwidth=2
    \set expandtab
    \set autoindent
    \set textwidth=79

set encoding=utf-8

highlight BadWhitespace ctermbg=red guibg=red
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h,*.yaml,*.yml match BadWhitespace /\s\+$/
