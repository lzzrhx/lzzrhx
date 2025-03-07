set nocompatible
filetype off

call plug#begin()

Plug 'farmergreg/vim-lastplace'
Plug 'ycm-core/YouCompleteMe'
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
Plug 'andymass/vim-matchup'
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
"colorscheme minimalist
"colorscheme apprentice
"colorscheme habamax
"colorscheme mountaineer-grey
colorscheme tasty_apprentice

" Set line number and ruler
set number
set ruler

" Configure syntax highlight files
syntax enable

" Set no wrap
set nowrap

" Set autoindent on
set autoindent
set smartindent

" Set tab size to 4 spaces
set tabstop=4
set softtabstop=0
set shiftwidth=0
set expandtab

" Enable backspace options
set backspace=indent,eol,start

" Disable backup files
set nobackup
set nowritebackup

" Incremental search
set incsearch

" Highlight search
set hlsearch

" Persistent undo
set undofile

" Hide display of current mode since it's already in already in the statusbar
set noshowmode

" Remove delay when exiting insert mode
set ttimeoutlen=50
set updatetime=300

" Statusline, tabline & sign column always visible
set laststatus=2
set showtabline=2
set signcolumn=yes

" Set swap file directory
set directory=$HOME/.vim/swapfiles//

" Set print options for hardprint
set printoptions=header:0,number:y

" Set cursor shape
let &t_SI = "\e[5 q"
let &t_EI = "\e[1 q"

" Misc settings
set autoread
set history=1000
set tabpagemax=50
set scrolloff=4
set sidescrolloff=2
set formatoptions+=j
set diffopt+=iwhiteall
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
set fillchars=eob:\ 
set completeopt-=preview
set cursorline
set nofoldenable


" Disable comment on new line
autocmd BufNewFile,BufRead * setlocal formatoptions-=ro

" Set default split behaviour
set splitbelow
set splitright

" Filetype specific settings
autocmd FileType c setlocal commentstring=//\ %s
autocmd FileType h setlocal commentstring=//\ %s
autocmd FileType cpp setlocal commentstring=//\ %s
autocmd FileType hpp setlocal commentstring=//\ %s
autocmd FileType cs setlocal commentstring=//\ %s
"autocmd FileType tex setlocal textwidth=0 wrapmargin=0 wrap linebreak columns=80

" Set keybinds
nnoremap <C-u> <C-u>zz
nnoremap <C-d> <C-d>zz

" Set leader key
let mapleader = " "

" IndentLine settings
let g:indentLine_char = '·'
let g:indentLine_leadingSpaceChar='·'
let g:indentLine_leadingSpaceEnabled=1
let g:indentLine_fileTypeExclude = ['text']

" YouCompleteMe settings
let g:ycm_warning_symbol = '››'
let g:ycm_error_symbol = '!›'
let g:ycm_auto_hover=''
let g:ycm_confirm_extra_conf=0

" Vimtex settings
let g:tex_flavor='latex'
let g:vimtex_quickfix_mode=0
let g:vimtex_syntax_conceal_disable=1
"let g:vimtex_view_method='zathura'

" Match-up settings
let g:matchup_motion_enabled = 0
let g:matchup_text_obj_enabled = 0
let g:matchup_matchparen_deferred = 1
let g:matchup_matchparen_hi_surround_always = 1

" Lightline settings
let g:lightline = {
    \ 'colorscheme': 'tasty_apprentice',
    \ 'active': {
    \ 'left': [ [ 'mode', 'paste' ],
    \           [ 'readonly', 'absolutepath', 'modified' ] ],
    \ 'right': [ [ 'lineinfo' ],
    \            [ 'percent' ],
    \            [ 'fileformat', 'fileencoding', 'filetype' ] ]
    \ },
    \ 'inactive': {
    \ 'left': [ [ 'filename' ] ],
    \ 'right': [ [ 'lineinfo' ],
    \            [ 'percent' ] ]
    \ },
    \ 'tabline': {
    \ 'left': [ [ 'tabs' ] ],
    \ 'right': [ ] 
    \ },
    \ 'tab': {
    \ 'active': [ 'tabnum', 'filename', 'modified' ],
    \ 'inactive': [ 'tabnum', 'filename', 'modified' ]
    \ },
    \ 'component': {
    \ 'hiname': "%{synIDattr(synIDtrans(synID(line('.'),col('.'),1)),'name')}"
    \ },
    \ 'mode_map' : {
    \ 'n'     : ' NORMAL ',
    \ 'i'     : ' INSERT ',
    \ 'R'     : ' REPLACE',
    \ 'v'     : ' VISUAL ',
    \ 'V'     : ' V-LINE ',
    \ "\<C-v>": ' V-BLOCK',
    \ 'c'     : ' COMMAND',
    \ 's'     : ' SELECT ',
    \ 'S'     : ' S-LINE ',
    \ "\<C-s>": ' S-BLOCK',
    \ 't'     : 'TERMINAL',
    \ }
    \ }

