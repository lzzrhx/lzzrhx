" monokai-yummy (heavily based on monokai-tasty and apprentice)
" monokai-tasty | https://github.com/patstockwell/vim-monokai-tasty
" apprentice    | https://github.com/romainl/Apprentice

" Monokai-tasty colors
let s:green         = [ '#a4e400', 148 ] " light_green
let s:orange        = [ '#ff9700', 208 ] " orange
let s:red           = [ '#fc1a70', 197 ] " red

" Apprentice colors
let s:white         = [ '#ffffff', 250 ] " white
let s:lightest_grey = [ '#bcbcbc', 250 ] " lighter_grey (terminal foreground)
let s:light_grey    = [ '#6c6c6c', 242 ] " light_grey
let s:grey          = [ '#585858', 240 ] " medium_grey
let s:dark_grey     = [ '#444444', 238 ] " grey
let s:darker_grey   = [ '#303030', 236 ] " dark_grey
let s:darkest_grey  = [ '#262626', 235 ] " darker_grey (terminal background)
let s:black         = [ '#1c1c1c', 234 ] " almost_black

" Lightline default colors
let s:darker_blue   = [ '#005f87',  24 ] " darkestblue
let s:dark_blue     = [ '#0087af',  31 ] " darkblue
let s:light_blue    = [ '#87dfff', 117 ] " mediumcyan

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

" Normal
let s:p.normal.left     = [ [ s:darkest_grey, s:green ], [ s:lightest_grey, s:grey ] ]
let s:p.normal.middle   = [ [ s:lightest_grey, s:darker_grey ] ]
let s:p.normal.right    = [ [ s:darker_grey, s:lightest_grey ], [ s:lightest_grey, s:grey ] ]
let s:p.normal.warning  = [ [ s:darkest_grey, s:orange ] ]
let s:p.normal.error    = [ [ s:darkest_grey, s:red ] ]

" Insert
let s:p.insert.left     = [ [ s:darker_blue, s:white ], [ s:white, s:dark_blue ] ]
let s:p.insert.middle   = [ [ s:white, s:darker_blue ] ]
let s:p.insert.right    = [ [ s:darker_blue, s:light_blue ], [ s:white, s:dark_blue ] ]

" Visual
let s:p.visual.left     = [ [ s:darkest_grey, s:orange ], [ s:lightest_grey, s:grey ] ]
let s:p.visual.middle   = [ [ s:lightest_grey, s:darker_grey ] ]
let s:p.visual.right    = [ [ s:darker_grey, s:lightest_grey ], [ s:lightest_grey, s:grey ] ]

" Replace
let s:p.replace.left    = [ [ s:white, s:red ], [ s:lightest_grey, s:grey ] ]
let s:p.replace.middle  = [ [ s:lightest_grey, s:darker_grey ] ]
let s:p.replace.right   = [ [ s:darker_grey, s:lightest_grey ], [ s:lightest_grey, s:grey ] ]

" Inactive
let s:p.inactive.left   = [ [ s:darkest_grey, s:grey ] ]
let s:p.inactive.middle = [ [ s:grey, s:darkest_grey ] ]
let s:p.inactive.right  = [ [ s:darkest_grey, s:grey ] ]

" Tabline
let s:p.tabline.tabsel  = [ [ s:darker_grey, s:lightest_grey ] ]
let s:p.tabline.left    = [ [ s:light_grey, s:dark_grey ] ]
let s:p.tabline.middle  = [ [ s:lightest_grey, s:darkest_grey ] ]
let s:p.tabline.right   = [ [ s:lightest_grey, s:darkest_grey ] ]

let g:lightline#colorscheme#monokai_yummy#palette = lightline#colorscheme#flatten(s:p)

