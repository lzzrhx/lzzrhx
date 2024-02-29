set nocompatible
filetype off

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

Plug 'farmergreg/vim-lastplace'
Plug 'itchyny/lightline.vim'
Plug 'ycm-core/YouCompleteMe'

" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting

filetype plugin indent on

set encoding=utf-8

" Set no wrap
set nowrap

" Set tab size to 4 spaces
set tabstop=4

" Set autoindent on
set autoindent

" Set shift width to 4 spaces
set shiftwidth=4

" Convert tabs to spaces
set expandtab

" Enable backspace options
set backspace=indent,eol,start

" Set line number foreground and background color
highlight LineNr ctermbg=darkgray ctermfg=white

" Disable backup files
set nobackup
set nowritebackup

" Set swap file directory
set directory=$HOME/.vim/swapfiles//

" Set line number and ruler
set number
set ruler

" Set tab navigation with Ctrl-tab
"nnoremap th :tabfirst<CR>
"nnoremap tk :tabnext<CR>
"nnoremap tj :tabprev<CR>
"nnoremap tl :tablast<CR>

" Set color scheme
"set termguicolors
colorscheme Benokai

" Configure syntax highlight files
syntax enable

" Press enter to add new line
"map <Enter> o<ESC>
"map <S-Enter> O<ESC>

" Statusline always visible
set laststatus=2

" Statusline setup
"set statusline=%<%F\ %h%m%r%=%-14.(%l,%c%V%)\ %P

" Incremental search
set incsearch

" Persistent undo
set undofile

"set cursorline

" Hide display of current mode since it's already in already in the statusbar
set noshowmode

" Remove delay when exiting insert mode
set ttimeoutlen=50

set updatetime=300

set signcolumn=yes
