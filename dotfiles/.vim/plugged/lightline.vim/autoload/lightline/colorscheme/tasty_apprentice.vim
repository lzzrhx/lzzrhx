" Made for use with the combination:
" monokai-tasty as vim theme              | https://github.com/patstockwell/vim-monokai-tasty/tree/master
" Apprentice as the system/terminal theme | https://github.com/romainl/Apprentice

" Monokai-tasty colors
let s:off_white    = [ '#cccccc', 251 ]
let s:light_green  = [ '#a4e400', 148 ]
let s:orange       = [ '#ff9700', 208 ]
let s:red          = [ '#fc1a70', 197 ]

" Apprentice colors
let s:white        = [ '#ffffff', 250 ]
let s:lighter_grey = [ '#bcbcbc', 250 ] "fg
let s:light_grey   = [ '#6c6c6c', 242 ]
let s:medium_grey  = [ '#585858', 240 ]
let s:grey         = [ '#444444', 238 ]
let s:dark_grey    = [ '#303030', 236 ]
let s:darker_grey  = [ '#262626', 235 ] "bg
let s:almost_black = [ '#1c1c1c', 234 ]

" Lightline default colors
let s:darkestblue  = [ '#005f87', 24 ]
let s:darkblue     = [ '#0087af', 31 ]
let s:mediumcyan   = [ '#87dfff', 117 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

" Normal
let s:p.normal.left     = [ [ s:darker_grey, s:light_green ], [ s:lighter_grey, s:medium_grey ] ]
let s:p.normal.middle   = [ [ s:lighter_grey, s:dark_grey ] ]
let s:p.normal.right    = [ [ s:dark_grey, s:lighter_grey ], [ s:lighter_grey, s:medium_grey ] ]
let s:p.normal.warning  = [ [ s:darker_grey, s:orange ] ]
let s:p.normal.error    = [ [ s:darker_grey, s:red ] ]

" Insert
let s:p.insert.left     = [ [ s:darkestblue, s:white ], [ s:white, s:darkblue ] ]
let s:p.insert.middle   = [ [ s:white, s:darkestblue ] ]
let s:p.insert.right    = [ [ s:darkestblue, s:mediumcyan ], [ s:white, s:darkblue ] ]

" Visual
let s:p.visual.left     = [ [ s:darker_grey, s:orange ], [ s:lighter_grey, s:medium_grey ] ]
let s:p.visual.middle   = [ [ s:lighter_grey, s:dark_grey ] ]
let s:p.visual.right    = [ [ s:dark_grey, s:lighter_grey ], [ s:lighter_grey, s:medium_grey ] ]

" Replace
let s:p.replace.left    = [ [ s:white, s:red ], [ s:lighter_grey, s:medium_grey ] ]
let s:p.replace.middle  = [ [ s:lighter_grey, s:dark_grey ] ]
let s:p.replace.right   = [ [ s:dark_grey, s:lighter_grey ], [ s:lighter_grey, s:medium_grey ] ]

" Inactive
let s:p.inactive.left   = [ [ s:darker_grey, s:medium_grey ] ]
let s:p.inactive.middle = [ [ s:medium_grey, s:darker_grey ] ]
let s:p.inactive.right  = [ [ s:darker_grey, s:medium_grey ] ]

" Tabline
let s:p.tabline.tabsel  = [ [ s:dark_grey, s:lighter_grey ] ]
let s:p.tabline.left    = [ [ s:light_grey, s:grey ] ]
let s:p.tabline.middle  = [ [ s:lighter_grey, s:darker_grey ] ]
let s:p.tabline.right   = [ [ s:lighter_grey, s:darker_grey ] ]

let g:lightline#colorscheme#tasty_apprentice#palette = lightline#colorscheme#flatten(s:p)

