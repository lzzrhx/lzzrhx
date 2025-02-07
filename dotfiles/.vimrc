set nocompatible
filetype off

call plug#begin()

Plug 'farmergreg/vim-lastplace'
Plug 'ycm-core/YouCompleteMe'
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-commentary'
Plug 'yggdroot/indentline'
Plug 'lervag/vimtex'

call plug#end()

filetype plugin indent on
syntax enable
set encoding=utf-8

" Set color scheme
set termguicolors
"colorscheme arcadia
"colorscheme apprentice
"colorscheme minimalist
colorscheme monokai_tasty

" Set line number foreground and background color
highlight LineNr ctermbg=darkgray ctermfg=white

" Set line number and ruler
set number
set ruler

" Configure syntax highlight files
syntax enable

" Set no wrap
set nowrap

" Set autoindent on
set autoindent

" Set tab size to 4 spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Enable backspace options
set backspace=indent,eol,start

" Disable backup files
set nobackup
set nowritebackup

" Incremental search
set incsearch

" Highlight search
"set hlsearch

" Persistent undo
set undofile

" Hide display of current mode since it's already in already in the statusbar
set noshowmode

" Remove delay when exiting insert mode
set ttimeoutlen=50
set updatetime=300
set signcolumn=yes

" Statusline always visible
set laststatus=2

" Statusline setup
"set statusline=%<%F\ %h%m%r%=%-14.(%l,%c%V%)\ %P

" Set swap file directory
set directory=$HOME/.vim/swapfiles//

" Set print options for hardprint
set printoptions=header:0,number:y

set diffopt+=iwhiteall

" Filetype specific settings
autocmd FileType c setlocal commentstring=//\ %s
autocmd FileType h setlocal commentstring=//\ %s
autocmd FileType cpp setlocal commentstring=//\ %s
autocmd FileType hpp setlocal commentstring=//\ %s
autocmd FileType cs setlocal commentstring=//\ %s
autocmd FileType txt set spell

" Set tab navigation with Ctrl-tab
"nnoremap th :tabfirst<CR>
"nnoremap tk :tabnext<CR>
"nnoremap tj :tabprev<CR>
"nnoremap tl :tablast<CR>

" Press enter to add new line
"map <Enter> o<ESC>
"map <S-Enter> O<ESC>

"set wildmode=list:longest,list:full
"set wildmenu

" IndentLine settings
let g:indentLine_char = '·'
let g:indentLine_leadingSpaceChar='·'
let g:indentLine_leadingSpaceEnabled=1
let g:indentLine_fileTypeExclude = ['text']

" YouCompleteMe settings
let g:ycm_warning_symbol = '››'
let g:ycm_error_symbol = '!›'
hi link YcmWarningSection YcmWarningSign
hi YcmWarningSign ctermfg=bg ctermbg=208
hi link YcmErrorSection YcmErrorSign
hi YcmErrorSign ctermfg=231 ctermbg=197

" Vimtex settings
let g:tex_flavor='latex'
let g:vimtex_quickfix_mode=0
"let g:vimtex_view_method='zathura'
"set conceallevel=1
"let g:tex_conceal='abdmg'

" Lightline settings
"let g:lightline = {
"    \ 'active': {
"    \ 'left': [ [ 'mode', 'paste' ],
"    \           [ 'readonly', 'name', 'modified' ] ],
"    \ 'right': [ [ 'lineinfo' ],
"    \            [ 'percent' ],
"    \            [ 'fileformat', 'fileencoding', 'filetype' ] ]
"    \ },
"    \ 'inactive': {
"    \ 'left': [ [ 'filename' ] ],
"    \ 'right': [ [ 'lineinfo' ],
"    \            [ 'percent' ] ]
"    \ },
"    \ 'tabline': {
"    \ 'left': [ [ 'tabs' ] ],
"    \ 'right': [ [ 'close' ] ] 
"    \ },
"    \ 'component_function': {
"    \   'name': 'LightlineName'
"    \ }
"    \ }
"function! LightlineName()
"  return winwidth(0) > 100 ? expand('%:p') : expand('%:t')
"endfunction


