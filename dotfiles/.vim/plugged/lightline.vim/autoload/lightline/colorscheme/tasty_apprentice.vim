" tasty-apprentice (heavily based on monokai-tasty and apprentice)
" monokai-tasty | https://github.com/patstockwell/vim-monokai-tasty
" apprentice    | https://github.com/romainl/Apprentice

" Config, Theme mix level
" let g:tasty_apprentice_mix_level
if !exists('g:tasty_apprentice_mix_level') || count([0,1,2,3,4,5], g:tasty_apprentice_mix_level) == 0
    let g:tasty_apprentice_mix_level = 2
endif

" Set colors, [monokai-tasty]
if g:tasty_apprentice_mix_level == 0
    let s:green         = [ '#a4e400', 148 ] " light_green
    let s:orange        = [ '#ff9700', 208 ] " orange
    let s:red           = [ '#fc1a70', 197 ] " red
    let s:darker_blue   = [ '#005f87',  24 ] " [lightline] darkestblue
    let s:dark_blue     = [ '#0087af',  31 ] " [lightline] darkblue
    let s:light_blue    = [ '#87dfff', 117 ] " [lightline] mediumcyan
endif

" Set colors, [monokai-tasty / apprentice] mix (80% / 20%)
if g:tasty_apprentice_mix_level == 1
    let s:green          = [ '#a0d938', 148 ] " light_green / light_green
    let s:orange         = [ '#ff9400', 208 ] " orange / orange
    let s:red            = [ '#ef2f5f', 197 ] " danger / red
    let s:darker_blue    = [ '#17648c',  24 ]
    let s:dark_blue      = [ '#2887af',  31 ]
    let s:light_blue     = [ '#87d9fa', 117 ]
endif

" Set colors, [monokai-tasty / apprentice] mix (60% / 40%)
if g:tasty_apprentice_mix_level == 2
    let s:green          = [ '#9bce52', 148 ] " light_green / light_green
    let s:orange         = [ '#ff9100', 208 ] " orange / orange
    let s:red            = [ '#e0425f', 197 ] " danger / red
    let s:darker_blue    = [ '#256991',  24 ]
    let s:dark_blue      = [ '#3a87af',  31 ]
    let s:light_blue     = [ '#88d3f5', 117 ]
endif

" Set colors, [monokai-tasty / apprentice] mix (40% / 60%)
if g:tasty_apprentice_mix_level == 3
    let s:green          = [ '#95c466', 148 ] " light_green / light_green
    let s:orange         = [ '#ff8d00', 208 ] " orange / orange
    let s:red            = [ '#d04e5f', 197 ] " danger / red
    let s:darker_blue    = [ '#306d95',  24 ]
    let s:dark_blue      = [ '#4887af',  31 ]
    let s:light_blue     = [ '#88cef1', 117 ]
endif

" Set colors, [monokai-tasty / apprentice] mix (20% / 80%)
if g:tasty_apprentice_mix_level == 4
    let s:green          = [ '#8fb977', 148 ] " light_green / light_green
    let s:orange         = [ '#ff8a00', 208 ] " orange / orange
    let s:red            = [ '#bf585f', 197 ] " danger / red
    let s:darker_blue    = [ '#3a729a',  24 ]
    let s:dark_blue      = [ '#5487af',  31 ]
    let s:light_blue     = [ '#88c8ec', 117 ]
endif

" Set colors, [apprentice]
if g:tasty_apprentice_mix_level == 5
    let s:green          = [ '#87af87', 108 ] " light_green
    let s:orange         = [ '#ff8700', 208 ] " orange
    let s:red            = [ '#af5f5f', 131 ] " red
    let s:darker_blue    = [ '#43779f',  24 ]
    let s:dark_blue      = [ '#5f87af',  31 ]
    let s:light_blue     = [ '#88c2e7', 117 ]
endif

" Set colors, [monokai-tasty / apprentice] common
let s:white         = [ '#ffffff', 250 ] " white / white
let s:lightest_grey = [ '#bcbcbc', 250 ] " light_grey / lighter_grey (terminal foreground)
let s:dark_grey     = [ '#444444', 238 ] " darker_grey / grey
let s:darkest_grey  = [ '#262626', 235 ] " charcoal / darker_grey (terminal background)

" Set colors, [apprentice]
let s:light_grey    = [ '#6c6c6c', 242 ] " light_grey
let s:grey          = [ '#585858', 240 ] " medium_grey
let s:darker_grey   = [ '#303030', 236 ] " dark_grey
let s:black         = [ '#1c1c1c', 234 ] " almost_black

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

let g:lightline#colorscheme#tasty_apprentice#palette = lightline#colorscheme#flatten(s:p)

