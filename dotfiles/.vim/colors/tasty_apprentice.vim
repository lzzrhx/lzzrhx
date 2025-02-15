" tasty-apprentice (heavily based on monokai-tasty and apprentice)
" monokai-tasty | https://github.com/patstockwell/vim-monokai-tasty
" apprentice    | https://github.com/romainl/Apprentice

"hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'tasty_apprentice'

" Highlight function helper
function! Highlight(group, colour)
  let l:foreground = exists('a:colour.fg')
        \ ? ' ctermfg=' . a:colour.fg.cterm . ' guifg=' . a:colour.fg.gui
        \ : ''
  let l:background = exists('a:colour.bg')
        \ ? ' ctermbg=' . a:colour.bg.cterm . ' guibg=' . a:colour.bg.gui
        \ : ''
  let l:style = exists('a:colour.style')
        \ ? ' cterm=' . a:colour.style.cterm . ' gui=' . a:colour.style.gui
        \ : ''
  let l:highlight_command = 'hi '
        \ . a:group . l:foreground . l:background . l:style
  exec l:highlight_command
endfunction

" Config, Theme mix level
" let g:tasty_apprentice_mix_level
if !exists('g:tasty_apprentice_mix_level') || count([0,1,2,3,4,5], g:tasty_apprentice_mix_level) == 0
    let g:tasty_apprentice_mix_level = 2
endif

" Set colors, [monokai-tasty]
if g:tasty_apprentice_mix_level == 0
    let s:dark_green     = { 'cterm':  22, 'gui': '#0f3315' } " dark_green
    let s:purple         = { 'cterm': 141, 'gui': '#af87ff' } " purple
    let s:green          = { 'cterm': 148, 'gui': '#a4e400' } " light_green
    let s:blue           = { 'cterm':  81, 'gui': '#62d8f1' } " light_blue
    let s:magenta        = { 'cterm': 197, 'gui': '#fc1a70' } " magenta
    let s:yellow         = { 'cterm': 228, 'gui': '#ffff87' } " yellow
    let s:orange         = { 'cterm': 208, 'gui': '#ff9700' } " orange
    let s:red            = { 'cterm': 197, 'gui': '#ff005f' } " danger
    let s:darker_blue    = { 'cterm':  24, 'gui': '#005f87' } " [lightline] darkestblue
    let s:dark_blue      = { 'cterm':  31, 'gui': '#0087af' } " [lightline] darkblue
    let s:light_blue     = { 'cterm': 117, 'gui': '#87dfff' } " [lightline] mediumcyan
endif

" Set colors, [monokai-tasty / apprentice] mix (80% / 20%)
if g:tasty_apprentice_mix_level == 1
    let s:dark_green     = { 'cterm':  22, 'gui': '#1f4323' } " dark_green / dark_green
    let s:purple         = { 'cterm': 141, 'gui': '#a787ef' } " purple / light_purple
    let s:green          = { 'cterm': 148, 'gui': '#a0d938' } " light_green / light_green
    let s:blue           = { 'cterm':  81, 'gui': '#6cd0ec' } " light_blue / light_blue
    let s:magenta        = { 'cterm': 197, 'gui': '#e9467c' } " magenta / light_purple
    let s:yellow         = { 'cterm': 228, 'gui': '#ffff8f' } " yellow / yellow
    let s:orange         = { 'cterm': 208, 'gui': '#ff9400' } " orange / orange
    let s:red            = { 'cterm': 197, 'gui': '#ef2f5f' } " danger / red
    let s:darker_blue    = { 'cterm':  24, 'gui': '#17648c' }
    let s:dark_blue      = { 'cterm':  31, 'gui': '#2887af' }
    let s:light_blue     = { 'cterm': 117, 'gui': '#87d9fa' }
endif

" Set colors, [monokai-tasty / apprentice] mix (60% / 40%)
if g:tasty_apprentice_mix_level == 2
    let s:dark_green     = { 'cterm':  22, 'gui': '#3e6440' } " dark_green / dark_green
    let s:purple         = { 'cterm': 141, 'gui': '#a088df' } " purple / light_purple
    let s:green          = { 'cterm': 148, 'gui': '#9bce52' } " light_green / light_green
    let s:blue           = { 'cterm':  81, 'gui': '#74c8e7' } " light_blue / light_blue
    let s:magenta        = { 'cterm': 197, 'gui': '#d55d88' } " magenta / light_purple
    let s:yellow         = { 'cterm': 228, 'gui': '#ffff97' } " yellow / yellow
    let s:orange         = { 'cterm': 208, 'gui': '#ff9100' } " orange / orange
    let s:red            = { 'cterm': 197, 'gui': '#e0425f' } " danger / red
    let s:darker_blue    = { 'cterm':  24, 'gui': '#256991' }
    let s:dark_blue      = { 'cterm':  31, 'gui': '#3a87af' }
    let s:light_blue     = { 'cterm': 117, 'gui': '#88d3f5' }
endif

" Set colors, [monokai-tasty / apprentice] mix (40% / 60%)
if g:tasty_apprentice_mix_level == 3
    let s:dark_green     = { 'cterm':  22, 'gui': '#3e6440' } " dark_green / dark_green
    let s:purple         = { 'cterm': 141, 'gui': '#9888cf' } " purple / light_purple
    let s:green          = { 'cterm': 148, 'gui': '#95c466' } " light_green / light_green
    let s:blue           = { 'cterm':  81, 'gui': '#7cbfe1' } " light_blue / light_blue
    let s:magenta        = { 'cterm': 197, 'gui': '#b38b95' } " magenta / cyan
    let s:yellow         = { 'cterm': 228, 'gui': '#ffff9f' } " yellow / yellow
    let s:orange         = { 'cterm': 208, 'gui': '#ff8d00' } " orange / orange
    let s:red            = { 'cterm': 197, 'gui': '#d04e5f' } " danger / red
    let s:darker_blue    = { 'cterm':  24, 'gui': '#306d95' }
    let s:dark_blue      = { 'cterm':  31, 'gui': '#4887af' }
    let s:light_blue     = { 'cterm': 117, 'gui': '#88cef1' }
endif

" Set colors, [monokai-tasty / apprentice] mix (20% / 80%)
if g:tasty_apprentice_mix_level == 4
    let s:dark_green     = { 'cterm':  22, 'gui': '#4e754f' } " dark_green / dark_green
    let s:purple         = { 'cterm': 141, 'gui': '#8f87bf' } " purple / light_purple
    let s:green          = { 'cterm': 148, 'gui': '#8fb977' } " light_green / light_green
    let s:blue           = { 'cterm':  81, 'gui': '#82b7dc' } " light_blue / light_blue
    let s:magenta        = { 'cterm': 197, 'gui': '#919ea2' } " magenta / cyan
    let s:yellow         = { 'cterm': 228, 'gui': '#ffffa7' } " yellow / yellow
    let s:orange         = { 'cterm': 208, 'gui': '#ff8a00' } " orange / orange
    let s:red            = { 'cterm': 197, 'gui': '#bf585f' } " danger / red
    let s:darker_blue    = { 'cterm':  24, 'gui': '#3a729a' }
    let s:dark_blue      = { 'cterm':  31, 'gui': '#5487af' }
    let s:light_blue     = { 'cterm': 117, 'gui': '#88c8ec' }
endif

" Set colors, [apprentice]
if g:tasty_apprentice_mix_level == 5
    let s:dark_green     = { 'cterm':  65, 'gui': '#5f875f' } " green
    let s:purple         = { 'cterm': 103, 'gui': '#8787af' } " light_purple
    let s:green          = { 'cterm': 108, 'gui': '#87af87' } " light_green
    let s:blue           = { 'cterm': 110, 'gui': '#87afd7' } " light_blue
    let s:magenta        = { 'cterm':  73, 'gui': '#5fafaf' } " cyan
    let s:yellow         = { 'cterm': 228, 'gui': '#ffffaf' } " yellow
    let s:orange         = { 'cterm': 208, 'gui': '#ff8700' } " orange
    let s:red            = { 'cterm': 131, 'gui': '#af5f5f' } " red
    let s:darker_blue    = { 'cterm':  24, 'gui': '#43779f' }
    let s:dark_blue      = { 'cterm':  31, 'gui': '#5f87af' }
    let s:light_blue     = { 'cterm': 117, 'gui': '#88c2e7' }
endif

" Set colors, [monokai-tasty / apprentice] common
let s:white          = { 'cterm': 250, 'gui': '#ffffff' } " white / white
let s:lightest_grey  = { 'cterm': 250, 'gui': '#bcbcbc' } " light_grey / lighter_grey (terminal foreground)
let s:dark_grey      = { 'cterm': 238, 'gui': '#444444' } " darker_grey / grey
let s:darkest_grey   = { 'cterm': 235, 'gui': '#262626' } " charcoal / darker_grey (terminal background)

" Set colors, [apprentice]
let s:black          = { 'cterm': 234, 'gui': '#1c1c1c' } " almost_black
let s:grey           = { 'cterm': 240, 'gui': '#585858' } " medium_grey
let s:darker_grey    = { 'cterm': 236, 'gui': '#303030' } " dark_grey
let s:light_grey     = { 'cterm': 242, 'gui': '#6c6c6c' } " light_grey
let s:diff_text      = { 'cterm': 145, 'gui': '#afafaf' } " dark_grey

" Set colors, [monokai-tasty]
let s:off_white      = { 'cterm': 251, 'gui': '#cccccc' } " off_white
let s:lighter_grey   = { 'cterm': 245, 'gui': '#8a8a8a' } " grey
let s:dark_highlight = { 'cterm':   0, 'gui': '#0b0e10' } " dark highlight
let s:diff_delete_fg = { 'cterm':   1, 'gui': '#5f0000' } " diff_delete_fg
let s:diff_delete_bg = { 'cterm':  52, 'gui': '#3b0e10' } " diff_delete_bg

" Set text styles
let s:none           = { 'cterm': 'NONE', 'gui': 'NONE' }
let s:bold           = { 'cterm': 'bold', 'gui': 'bold' }
let s:underline      = { 'cterm': 'underline', 'gui': 'underline' }
let s:bold_underline = { 'cterm': 'bold,underline', 'gui': 'bold,underline' }

" Config, Italic text
" let g:tasty_apprentice_italic
if !exists('g:tasty_apprentice_italic')
    let g:tasty_apprentice_italic = 1
endif

if g:tasty_apprentice_italic
    let s:italic = { 'cterm': 'italic', 'gui': 'italic' }
else
    let s:italic = { 'cterm': 'NONE', 'gui': 'NONE' }
endif

" Config, Window highlight
" let g:tasty_apprentice_highlight_active_window
if !exists('g:tasty_apprentice_highlight_active_window')
    let g:tasty_apprentice_highlight_active_window = 0
endif
if g:tasty_apprentice_highlight_active_window == 1
    call Highlight('NormalNC', { 'fg': s:off_white, 'bg': s:darker_grey, 'style': s:none })
endif

" Config, Selection colored
" let g:tasty_apprentice_selection_colored
if !exists('g:tasty_apprentice_selection_colored')
    let g:tasty_apprentice_selection_colored = 1
endif
if g:tasty_apprentice_selection_colored == 0
    call Highlight('WildMenu', { 'fg': s:darker_grey, 'bg': s:lightest_grey, 'style': s:none })
    call Highlight('PmenuSel', { 'fg': s:darker_grey, 'bg': s:lightest_grey, 'style': s:none })
elseif g:tasty_apprentice_selection_colored == 1
    call Highlight('WildMenu', { 'fg': s:darker_grey, 'bg': s:orange, 'style': s:none })
    call Highlight('PmenuSel', { 'fg': s:orange, 'bg': s:grey, 'style': s:none })
endif

" Highlights, General
call Highlight('CurSearch',         { 'fg': s:white, 'bg': s:blue, 'style': s:bold })
call Highlight('IncSearch',         { 'fg': s:white, 'bg': s:blue, 'style': s:bold })
call Highlight('Search',            { 'fg': s:white, 'bg': s:dark_blue, 'style': s:none })
call Highlight('Pmenu',             { 'fg': s:lightest_grey, 'bg': s:dark_grey, 'style': s:none })
call Highlight('StatusLine',        { 'fg': s:lightest_grey, 'bg': s:darker_grey, 'style': s:none })
call Highlight('CursorLine',        { 'bg': s:darker_grey, 'style': s:none })
call Highlight('CursorLineNR',      { 'fg': s:lightest_grey, 'style': s:none })

" Highlights, Plugins
call Highlight('illuminatedWord',   { 'fg': s:none, 'bg': s:none, 'style': s:underline })
call Highlight('YcmWarningSign',    { 'fg': s:black, 'bg': s:orange, 'style': s:none })
call Highlight('YcmWarningSection', { 'fg': s:black, 'bg': s:orange, 'style': s:none })
call Highlight('YcmErrorSign',      { 'fg': s:white, 'bg': s:red, 'style': s:none })
call Highlight('YcmErrorSection',   { 'fg': s:white, 'bg': s:red, 'style': s:none })

" Highlights, Syntax highlighting
call Highlight('Type', { 'fg': s:blue, 'bg': s:none, 'style': s:italic })
call Highlight('PreCondit', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('Function', { 'fg': s:green, 'bg': s:none, 'style': s:none })
call Highlight('StorageClass', { 'fg': s:blue, 'bg': s:none, 'style': s:none })
call Highlight('Statement', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('Constant', { 'fg': s:purple, 'bg': s:none, 'style': s:none })

" Highlights, Syntax highlighting, Unmodified (from monokai-tasty)
call Highlight('Boolean', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
call Highlight('Character', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
call Highlight('Comment', { 'fg': s:lighter_grey, 'bg': s:none, 'style': s:none })
call Highlight('Conditional', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('Define', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('Error', { 'fg': s:white, 'bg': s:red, 'style': s:none })
call Highlight('Float', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
call Highlight('Identifier', { 'fg': s:blue, 'bg': s:none, 'style': s:none })
call Highlight('Keyword', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('Label', { 'fg': s:yellow, 'bg': s:none, 'style': s:none })
call Highlight('Number', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
call Highlight('Operator', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('PreProc', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('Repeat', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('Special', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
call Highlight('SpecialKey', { 'fg': s:grey, 'bg': s:none, 'style': s:none })
call Highlight('SpellBad', { 'fg': s:white, 'bg': s:red, 'style': s:none })
call Highlight('SpellRare', { 'fg': s:white, 'bg': s:red, 'style': s:none })
call Highlight('SpellCap', { 'fg': s:darkest_grey, 'bg': s:orange, 'style': s:italic })
call Highlight('SpellLocal', { 'fg': s:darkest_grey, 'bg': s:orange, 'style': s:italic })
call Highlight('String', { 'fg': s:yellow, 'bg': s:none, 'style': s:none })
call Highlight('Structure', { 'fg': s:blue, 'bg': s:none, 'style': s:none })
call Highlight('Tag', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
call Highlight('Todo', { 'fg': s:yellow, 'bg': s:grey, 'style': s:bold })

" Highlights, General, Unmodified (from monokai-tasty)
call Highlight('ColorColumn', { 'fg': s:none, 'bg': s:darker_grey, 'style': s:none })
call Highlight('Cursor', { 'fg': s:darkest_grey, 'bg': s:blue, 'style': s:none })
call Highlight('CursorColumn', { 'fg': s:none, 'bg': s:darker_grey, 'style': s:none })
call Highlight('DiffAdd', { 'fg': s:none, 'bg': s:dark_green, 'style': s:none })
call Highlight('DiffChange', { 'fg': s:none, 'bg': s:light_grey, 'style': s:none })
call Highlight('DiffDelete', { 'fg': s:diff_delete_fg, 'bg': s:diff_delete_bg, 'style': s:none })
call Highlight('DiffText', { 'fg': s:none, 'bg': s:diff_text, 'style': s:bold })
call Highlight('Directory', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
call Highlight('ErrorMsg', { 'fg': s:white, 'bg': s:red, 'style': s:none })
call Highlight('FoldColumn', { 'fg': s:lighter_grey, 'bg': s:none, 'style': s:none })
call Highlight('Folded', { 'fg': s:lighter_grey, 'bg': s:none, 'style': s:none })
call Highlight('LineNr', { 'fg': s:grey, 'bg': s:none, 'style': s:none })
call Highlight('MatchParen', { 'fg': s:magenta, 'bg': s:none, 'style': s:bold_underline })
call Highlight('MoreMsg', { 'fg': s:green, 'bg': s:none, 'style': s:none })
call Highlight('NonText', { 'fg': s:dark_grey, 'bg': s:none, 'style': s:none })
call Highlight('Normal', { 'fg': s:white, 'bg': s:darkest_grey, 'style': s:none })
call Highlight('Question', { 'fg': s:blue, 'bg': s:none, 'style': s:none })
call Highlight('SignColumn', { 'fg': s:none, 'bg': s:none, 'style': s:none })
call Highlight('StatusLineNC', { 'fg': s:lighter_grey, 'bg': s:dark_grey, 'style': s:none })
call Highlight('Title', { 'fg': s:white, 'bg': s:none, 'style': s:bold })
call Highlight('Underlined', { 'fg': s:none, 'bg': s:none, 'style': s:underline })
call Highlight('VertSplit', { 'fg': s:dark_grey, 'bg': s:darkest_grey, 'style': s:none })
call Highlight('Visual', { 'fg': s:none, 'bg': s:grey, 'style': s:none })
call Highlight('WarningMsg', { 'fg': s:white, 'bg': s:red, 'style': s:none })
call Highlight('Conceal', { 'fg': s:none, 'bg': s:none, 'style': s:none })
call Highlight('CursorIM', { 'fg': s:darkest_grey, 'bg': s:blue, 'style': s:none })
call Highlight('Debug', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('Delimiter', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('diffAdded', { 'fg': s:green, 'bg': s:none, 'style': s:none })
call Highlight('diffRemoved', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('diffFile', { 'fg': s:white, 'bg': s:none, 'style': s:bold })
call Highlight('diffLine', { 'fg': s:purple, 'bg': s:none, 'style': s:bold })
call Highlight('diffIndexLine', { 'fg': s:purple, 'bg': s:none, 'style': s:bold })
call Highlight('diffSubname', { 'fg': s:yellow, 'bg': s:none, 'style': s:none })
call Highlight('EndOfBuffer', { 'fg': s:dark_grey, 'bg': s:none, 'style': s:none })
call Highlight('Exception', { 'fg': s:magenta, 'bg': s:none, 'style': s:bold })
call Highlight('gitcommitHeader', { 'fg': s:blue, 'bg': s:none, 'style': s:none })
call Highlight('gitcommitSelectedFile', { 'fg': s:orange, 'bg': s:none, 'style': s:none })
call Highlight('gitcommitSummary', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('gitcommitOverflow', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('Include', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('lCursor', { 'fg': s:darkest_grey, 'bg': s:blue, 'style': s:none })
call Highlight('LineNrBe', { 'fg': s:green, 'style': s:none })
call Highlight('Macro', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('ModeMsg', { 'fg': s:white, 'bg': s:none, 'style': s:bold })
call Highlight('PmenuSbar', { 'fg': s:none, 'bg': s:lighter_grey, 'style': s:none })
call Highlight('PmenuThumb', { 'fg': s:grey, 'bg': s:white, 'style': s:none })
call Highlight('Substitute', { 'fg': s:black, 'bg': s:green, 'style': s:none })
call Highlight('TabLine', { 'fg': s:lightest_grey, 'bg': s:grey, 'style': s:underline })
call Highlight('TabLineSel', { 'fg': s:none, 'bg': s:darkest_grey, 'style': s:bold })
call Highlight('TabLineFill', { 'fg': s:none, 'bg': s:dark_grey, 'style': s:none })
call Highlight('TermCursor', { 'fg': s:darkest_grey, 'bg': s:blue, 'style': s:none })
call Highlight('TermCursorNC', { 'fg': s:darkest_grey, 'bg': s:blue, 'style': s:none })
call Highlight('Typedef', { 'fg': s:blue, 'bg': s:none, 'style': s:none })
call Highlight('WinSeparator', { 'fg': s:dark_grey, 'bg': s:none, 'style': s:none })
call Highlight('Whitespace', { 'fg': s:grey, 'bg': s:none, 'style': s:none })

" Custom Status line
call Highlight('StatusLineBase', { 'fg': s:white, 'bg': s:dark_grey, 'style': s:none })
call Highlight('StatusLineGitBranch', { 'fg': s:white, 'bg': s:grey, 'style': s:italic })
call Highlight('StatusLineModifiedFile', { 'fg': s:orange, 'bg': s:dark_grey, 'style': s:none })
call Highlight('StatusLineReadOnlyFile', { 'fg': s:lighter_grey, 'bg': s:dark_grey, 'style': s:none })
call Highlight('StatusLineSeparatorGitBranch', { 'fg': s:grey, 'bg': s:dark_grey, 'style': s:none })
" Normal mode
call Highlight('StatusLineSeparatorNormalDark', { 'fg': s:green, 'bg': s:grey, 'style': s:none })
call Highlight('StatusLineSeparatorNormal', { 'fg': s:green, 'bg': s:dark_grey, 'style': s:none })
call Highlight('StatusLineNormalMode', { 'fg': s:darkest_grey, 'bg': s:green })
call Highlight('StatusLineNormalModeBold', { 'fg': s:darkest_grey, 'bg': s:green, 'style': s:bold })
"Visual mode
call Highlight('StatusLineSeparatorVisualDark', { 'fg': s:purple, 'bg': s:grey, 'style': s:none })
call Highlight('StatusLineSeparatorVisual', { 'fg': s:purple, 'bg': s:dark_grey, 'style': s:none })
call Highlight('StatusLineVisualMode', { 'fg': s:darkest_grey, 'bg': s:purple })
call Highlight('StatusLineVisualModeBold', { 'fg': s:darkest_grey, 'bg': s:purple, 'style': s:bold })
" Insert mode
call Highlight('StatusLineSeparatorInsertDark', { 'fg': s:yellow, 'bg': s:grey, 'style': s:none })
call Highlight('StatusLineSeparatorInsert', { 'fg': s:yellow, 'bg': s:dark_grey, 'style': s:none })
call Highlight('StatusLineInsertMode', { 'fg': s:darkest_grey, 'bg': s:yellow })
call Highlight('StatusLineInsertModeBold', { 'fg': s:darkest_grey, 'bg': s:yellow, 'style': s:bold })
" Command mode
call Highlight('StatusLineSeparatorCommandDark', { 'fg': s:blue, 'bg': s:grey, 'style': s:none })
call Highlight('StatusLineSeparatorCommand', { 'fg': s:blue, 'bg': s:dark_grey, 'style': s:none })
call Highlight('StatusLineCommandMode', { 'fg': s:darkest_grey, 'bg': s:blue })
call Highlight('StatusLineCommandModeBold', { 'fg': s:darkest_grey, 'bg': s:blue, 'style': s:bold })

" Quickfix window
call Highlight('qfFileName', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
call Highlight('qfLineNr', { 'fg': s:blue, 'bg': s:none, 'style': s:none })
call Highlight('qfSeparator', { 'fg': s:lightest_grey, 'bg': s:none, 'style': s:none })
call Highlight('QuickFixLine', { 'fg': s:green, 'bg': s:darker_grey, 'style': s:bold })

" Javascript
call Highlight('Noise', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('jsParensIfElse', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('jsParensRepeat', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('jsParensSwitch', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('jsParensCatch', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('jsArrowFunction', { 'fg': s:blue, 'bg': s:none, 'style': s:none })
call Highlight('jsArrowFuncArgs', { 'fg': s:orange, 'bg': s:none, 'style': s:italic })
call Highlight('jsBrackets', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('jsBraces', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('jsFuncBraces', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('jsClassBraces', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('jsIfElseBraces', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('jsTryCatchBraces', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('jsModuleBraces', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('jsObjectBraces', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('jsFinallyBraces', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('jsRepeatBraces', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('jsSwitchBraces', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('jsTemplateBraces', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
call Highlight('jsDestructuringBraces', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('jsFuncName', { 'fg': s:green, 'bg': s:none, 'style': s:none })
call Highlight('jsFuncCall', { 'fg': s:blue, 'bg': s:none, 'style': s:none })
call Highlight('jsClassFuncName', { 'fg': s:green, 'bg': s:none, 'style': s:none })
call Highlight('jsArguments', { 'fg': s:orange, 'bg': s:none, 'style': s:italic })
call Highlight('jsFuncArgs', { 'fg': s:orange, 'bg': s:none, 'style': s:italic })
call Highlight('jsClassKeyword', { 'fg': s:blue, 'bg': s:none, 'style': s:italic })
call Highlight('jsThis', { 'fg': s:orange, 'bg': s:none, 'style': s:italic })
call Highlight('jsUndefined', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
call Highlight('jsNull', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
call Highlight('jsParens', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('jsFuncParens', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('jsGlobalObjects', { 'fg': s:blue, 'bg': s:none, 'style': s:none })
call Highlight('jsFunction', { 'fg': s:blue, 'bg': s:none, 'style': s:italic })
call Highlight('jsClassMethodType', { 'fg': s:blue, 'bg': s:none, 'style': s:italic })
call Highlight('jsObjectKey', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('jsBlockLabel', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('jsObjectColon', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('jsObjectSeparator', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
call Highlight('jsNoise', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('jsGlobalNodeObjects', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('jsFutureKeys', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
call Highlight('EcmaScriptTemplateStrings', { 'fg': s:yellow, 'bg': s:none, 'style': s:italic })

" Highlights, Links
hi default link cConstant Normal
hi default link cppConstant Normal
hi default link cUserFunction Normal
hi default link cppUserFunction Normal

" Highlights, Links, Unmodified (from monokai-tasty)
highlight default link jsComment              Comment
highlight default link jsEnvComment           Comment
highlight default link jsCommentTodo          Todo
highlight default link jsString               String
highlight default link jsObjectKeyString      String
highlight default link jsTemplateString       String
highlight default link jsObjectStringKey      String
highlight default link jsClassStringKey       String
highlight default link jsStorageClass         StorageClass
highlight default link jsNumber               Number
highlight default link jsImport               Include
highlight default link jsExport               Include
highlight default link jsModuleComma          Operator
highlight default link jsTaggedTemplate       StorageClass
highlight default link jsTernaryIfOperator    Operator
highlight default link jsRegexpString         String
highlight default link jsRegexpBoundary       SpecialChar
highlight default link jsRegexpQuantifier     SpecialChar
highlight default link jsRegexpOr             Conditional
highlight default link jsRegexpMod            SpecialChar
highlight default link jsRegexpBackRef        SpecialChar
highlight default link jsRegexpGroup          String
highlight default link jsRegexpCharClass      Character
highlight default link jsCharacter            Character
highlight default link jsPrototype            Special
highlight default link jsConditional          Conditional
highlight default link jsBranch               Conditional
highlight default link jsLabel                Label
highlight default link jsReturn               Statement
highlight default link jsRepeat               Repeat
highlight default link jsDo                   Repeat
highlight default link jsStatement            Statement
highlight default link jsException            Exception
highlight default link jsTry                  Exception
highlight default link jsFinally              Exception
highlight default link jsCatch                Exception
highlight default link jsAsyncKeyword         Keyword
highlight default link jsForAwait             Keyword
highlight default link jsObjectFuncName       Function
highlight default link jsError                Error
highlight default link jsParensError          Error
highlight default link jsOperatorKeyword      jsOperator
highlight default link jsOperator             Operator
highlight default link jsOf                   Operator
highlight default link jsExtendsKeyword       Keyword
highlight default link jsSuper                Constant
highlight default link jsNan                  Number
highlight default link jsFloat                Float
highlight default link jsBooleanTrue          Boolean
highlight default link jsBooleanFalse         Boolean
highlight default link jsDot                  Noise
highlight default link jsClassNoise           Noise
highlight default link jsGenerator            jsFunction
highlight default link jsSpecial              Special
highlight default link jsExceptions           Constant
highlight default link jsBuiltins             Constant
highlight default link jsExportDefault        StorageClass
highlight default link jsExportDefaultGroup   jsExportDefault
highlight default link jsModuleAs             Include
highlight default link jsModuleAsterisk       Noise
highlight default link jsFrom                 Include
highlight default link jsDecorator            Special
highlight default link jsDecoratorFunction    Function
highlight default link jsParensDecorator      jsParens
highlight default link jsFuncArgOperator      jsFuncArgs
highlight default link jsClassProperty        jsObjectKey
highlight default link jsObjectShorthandProp  jsObjectKey
highlight default link jsSpreadOperator       Operator
highlight default link jsRestOperator         Operator
highlight default link jsRestExpression       jsFuncArgs
highlight default link jsSwitchColon          Noise
highlight default link jsObjectMethodType     Type
highlight default link jsClassDefinition      jsFuncName
highlight default link jsBlockLabel           Identifier
highlight default link jsBlockLabelKey        jsBlockLabel
highlight default link jsDestructuringProperty   jsFuncArgs
highlight default link jsDestructuringAssignment jsObjectKey
highlight default link jsDestructuringNoise      Noise
highlight default link jsCommentFunction      jsComment
highlight default link jsCommentClass         jsComment
highlight default link jsCommentIfElse        jsComment
highlight default link jsCommentRepeat        jsComment
highlight default link jsDomErrNo             Constant
highlight default link jsDomNodeConsts        Constant
highlight default link jsDomElemAttrs         Label
highlight default link jsDomElemFuncs         PreProc
highlight default link jsHtmlEvents           Special
highlight default link jsHtmlElemAttrs        Label
highlight default link jsHtmlElemFuncs        PreProc
highlight default link jsCssStyles            Label

" HTML
call Highlight('htmlTag', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('htmlTagN', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('htmlEndTag', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('htmlArg', { 'fg': s:green, 'bg': s:none, 'style': s:none })

" JSX
call Highlight('jsxTagName', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
call Highlight('jsxComponentName', { 'fg': s:blue, 'bg': s:none, 'style': s:none })
call Highlight('jsxEqual', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('jsxPunct', { 'fg': s:lighter_grey, 'bg': s:none, 'style': s:none })
call Highlight('jsxCloseString', { 'fg': s:lighter_grey, 'bg': s:none, 'style': s:none })
call Highlight('jsxAttrib', { 'fg': s:white, 'bg': s:none, 'style': s:italic })

" Typescript
call Highlight('typescriptCastKeyword', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('typescriptImport', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('typescriptExport', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('typescriptCall', { 'fg': s:white, 'bg': s:none, 'style': s:italic })
call Highlight('typescriptClassName', { 'fg': s:green })
call Highlight('typescriptClassHeritage', { 'fg': s:green })
call Highlight('typescriptArrowFuncArg', { 'fg': s:orange, 'bg': s:none, 'style': s:italic })
call Highlight('typescriptAliasDeclaration', { 'fg': s:green, 'bg': s:none, 'style': s:none })
call Highlight('typescriptAliasKeyword', { 'fg': s:blue, 'bg': s:none, 'style': s:italic })
call Highlight('typescriptInterfaceKeyword', { 'fg': s:blue, 'bg': s:none, 'style': s:italic })
call Highlight('typescriptTypeReference', { 'fg': s:green, 'bg': s:none, 'style': s:none })
call Highlight('typescriptPredefinedType', { 'fg': s:blue, 'bg': s:none, 'style': s:italic })
call Highlight('typescriptMember', { 'fg': s:white, 'bg': s:none, 'style': s:italic })
call Highlight('typescriptObjectColon', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('typescriptTypeAnnotation', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('typescriptTernaryOp', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('typescriptDestructureVariable', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('typescriptObjectLabel', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('typescriptTypeBrackets', { 'fg': s:blue, 'bg': s:none, 'style': s:none })
call Highlight('typescriptVariable', { 'fg': s:blue, 'bg': s:none, 'style': s:italic })
call Highlight('typescriptArrowFunc', { 'fg': s:blue, 'bg': s:none, 'style': s:none })
call Highlight('typescriptFuncType', { 'fg': s:orange, 'bg': s:none, 'style': s:italic })
call Highlight('typescriptMemberOptionality', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('typescriptFuncTypeArrow', { 'fg': s:blue, 'bg': s:none, 'style': s:none })
call Highlight('typescriptMathStaticMethod', { 'fg': s:blue, 'bg': s:none, 'style': s:none })
call Highlight('typescriptJSONStaticMethod', { 'fg': s:blue, 'bg': s:none, 'style': s:none })
call Highlight('typescriptDOMStorageMethod', { 'fg': s:blue, 'bg': s:none, 'style': s:none })
call Highlight('typescriptDateMethod', { 'fg': s:blue, 'bg': s:none, 'style': s:none })
call Highlight('typescriptRegExpMethod', { 'fg': s:blue, 'bg': s:none, 'style': s:none })
call Highlight('typescriptArrayMethod', { 'fg': s:blue, 'bg': s:none, 'style': s:none })
call Highlight('typescriptHeadersMethod', { 'fg': s:blue, 'bg': s:none, 'style': s:none })
call Highlight('typescriptHeadersMethod', { 'fg': s:blue, 'bg': s:none, 'style': s:none })
call Highlight('typescriptURLUtilsProp', { 'fg': s:blue, 'bg': s:none, 'style': s:none })
call Highlight('typescriptBOMHistoryProp', { 'fg': s:blue, 'bg': s:none, 'style': s:none })
call Highlight('typescriptOperator', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('typescriptGlobalMathDot', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('typescriptDotNotation', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('typescriptGlobalJSONDot', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('typescriptBinaryOp', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('typescriptUnaryOp', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('typescriptAssign', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('typescriptOptionalMark', { 'fg': s:purple, 'bg': s:none, 'style': s:italic })
call Highlight('typescriptTemplateSB', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
call Highlight('typescriptTestGlobal', { 'fg': s:blue, 'bg': s:none, 'style': s:none })
call Highlight('typescriptPaymentShippingOptionProp', { 'fg': s:none, 'bg': s:none, 'style': s:none })
call Highlight('typescriptNull', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
call Highlight('typescriptType', { 'fg': s:blue, 'bg': s:none, 'style': s:italic })
call Highlight('typescriptEndColons', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('typescriptLabel', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('typescriptLogicSymbols', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('typescriptParens', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('typescriptBraces', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('typescriptDotNotation', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('typescriptInterpolationDelimiter', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
call Highlight('typescriptExceptions', { 'fg': s:magenta, 'bg': s:none, 'style': s:bold })
call Highlight('typescriptFuncKeyword', { 'fg': s:blue, 'bg': s:none, 'style': s:italic })
call Highlight('typescriptGlobalNodeObjects', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('typescriptGlobalObjects', { 'fg': s:blue, 'bg': s:none, 'style': s:none })
call Highlight('typescriptArrowFunction', { 'fg': s:blue, 'bg': s:none, 'style': s:none })
call Highlight('typescriptFuncCall', { 'fg': s:blue, 'bg': s:none, 'style': s:none })

" TypeScript Treesitter
call Highlight('typescriptTSBoolean', { 'fg': s:orange, 'bg': s:none, 'style': s:none })
call Highlight('typescriptTSVariable', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('typescriptTSConstructor', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('typescriptTSPunctDelimiter', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('typescriptTSPunctBracket', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('typescriptTSConstant', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('typescriptTSTypeBuiltin', { 'fg': s:blue, 'bg': s:none, 'style': s:italic })
call Highlight('typescriptTSType', { 'fg': s:green, 'bg': s:none, 'style': s:none })
call Highlight('typescriptTSKeyword', { 'fg': s:blue, 'bg': s:none, 'style': s:italic })
call Highlight('typescriptTSProperty', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('typescriptTSParameter', { 'fg': s:orange, 'bg': s:none, 'style': s:italic })

" Scala
call Highlight('scalaExternal', { 'fg': s:blue, 'style': s:italic })
call Highlight('scalaKeyword', { 'fg': s:magenta, 'style': s:italic })
call Highlight('scalaTypeDeclaration', { 'fg': s:blue, 'style': s:italic })
call Highlight('scalaCapitalWord', { 'fg': s:blue })
call Highlight('scalaInstanceDeclaration', { 'fg': s:green })
call Highlight('scalaSpecial', { 'fg': s:purple })
call Highlight('scalaBoolean', { 'fg': s:purple })
call Highlight('scalaRepeat', { 'fg': s:orange })
call Highlight('scalaConditional', { 'fg': s:magenta })
call Highlight('scalaExceptionn', { 'fg': s:magenta, 'style': s:bold })
call Highlight('scalaPackage', { 'fg': s:blue, 'style': s:italic })
call Highlight('scalaPackageDeclaration', { 'fg': s:green })
call Highlight('scalaAssignment', { 'fg': s:magenta })
call Highlight('scalaTodo', { 'fg': s:yellow, 'bg': s:dark_grey, 'style': s:bold_underline })
call Highlight('scalaUnimplemented', { 'fg': s:magenta, 'bg': s:none, 'style': s:italic })

" GraphQL
call Highlight('graphqlStructure', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('graphqlBraces', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('graphqlConstant', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('graphqlType', { 'fg': s:purple, 'bg': s:none, 'style': s:none })

" Vim
call Highlight('vimParenSep', { 'fg': s:white, 'bg': s:none, 'style': s:bold })
call Highlight('vimOperParen', { 'fg': s:blue, 'bg': s:none, 'style': s:italic })
call Highlight('vimUserFunc', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
call Highlight('vimFunction', { 'fg': s:orange, 'bg': s:none, 'style': s:none })

" XML
highlight default link xmlTodo   Todo
call Highlight('xmlTag', { 'fg': s:blue, 'bg': s:none, 'style': s:none })
call Highlight('xmlTagName', { 'fg': s:blue, 'bg': s:none, 'style': s:none })
call Highlight('xmlEndTag', { 'fg': s:blue, 'bg': s:none, 'style': s:none })
call Highlight('xmlEqual', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })

" JSON
call Highlight('jsonKeyword', { 'fg': s:blue, 'bg': s:none, 'style': s:none })
call Highlight('jsonString', { 'fg': s:yellow, 'bg': s:none, 'style': s:none })

" Clojure
call Highlight('clojureParen', { 'fg': s:white, 'bg': s:none, 'style': s:none })
call Highlight('clojureDefine', { 'fg': s:blue, 'bg': s:none, 'style': s:italic })
call Highlight('clojureMacro', { 'fg': s:blue, 'bg': s:none, 'style': s:none })

" R language
call Highlight('rFunction', { 'fg': s:blue, 'bg': s:none, 'style': s:none })

" C/C++
call Highlight('cType', { 'fg': s:blue, 'bg': s:none, 'style': s:italic })

" NERDTree
call Highlight('NERDTreeClosable', { 'fg': s:yellow, 'bg': s:none, 'style': s:none })
call Highlight('NERDTreeOpenable', { 'fg': s:yellow, 'bg': s:none, 'style': s:none })
call Highlight('NERDTreeDirSlash', { 'fg': s:blue, 'bg': s:none, 'style': s:none })
call Highlight('NERDTreeFile', { 'fg': s:none, 'bg': s:none, 'style': s:none })

" Ruby
call Highlight('rubyStringDelimiter', { 'fg': s:yellow, 'bg': s:none, 'style': s:none })

" Calendar
call Highlight('CalNavi', { 'fg': s:blue, 'bg': s:none, 'style': s:bold_underline })
call Highlight('CalToday', { 'fg': s:magenta, 'bg': s:none, 'style': s:bold })
call Highlight('CalSaturday', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
call Highlight('CalSunday', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
call Highlight('CalHeader', { 'fg': s:green, 'bg': s:none, 'style': s:none })
call Highlight('CalRuler', { 'fg': s:lighter_grey, 'bg': s:dark_grey, 'style': s:bold })


" Markdown
highlight default link markdownTODO Todo

call Highlight('markdownCode', { 'fg': s:purple, 'bg': s:none, 'style': s:bold })
call Highlight('markdownCodeBlock', { 'fg': s:blue, 'bg': s:none, 'style': s:none })
call Highlight('markdownCodeDelimiter', { 'fg': s:green })
call Highlight('markdownLinkTextDelimiter', { 'fg': s:blue })
call Highlight('markdownLinkDelimiter', { 'fg': s:blue })
call Highlight('markdownUrl', { 'fg': s:orange, 'bg': s:none, 'style': s:none })
call Highlight('markdownListMarker', { 'fg': s:blue })

" Markdown https://github.com/plasticboy/vim-markdown
call Highlight('mkdHeading', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('mkdURL', { 'fg': s:orange, 'bg': s:none, 'style': s:none })
call Highlight('mkdCode', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
call Highlight('mkdCodeStart', { 'fg': s:green, 'bg': s:none, 'style': s:none })
call Highlight('mkdCodeEnd', { 'fg': s:green, 'bg': s:none, 'style': s:none })
call Highlight('mkdDelimiter', { 'fg': s:blue })
call Highlight('mkdListItemCheckbox', { 'fg': s:blue })
call Highlight('mkdCodeDelimiter', { 'fg': s:purple })

" Vimwiki
call Highlight('VimwikiDelText', { 'fg': s:lighter_grey, 'bg': s:none, 'style': s:none })
call Highlight('VimwikiHeaderChar', { 'fg': s:magenta, 'bg': s:none, 'style': s:bold })
call Highlight('VimwikiHeader1', { 'fg': s:white, 'bg': s:none, 'style': s:bold })
call Highlight('VimwikiHeader2', { 'fg': s:white, 'bg': s:none, 'style': s:bold })
call Highlight('VimwikiHeader3', { 'fg': s:white, 'bg': s:none, 'style': s:bold })
call Highlight('VimwikiHeader4', { 'fg': s:white, 'bg': s:none, 'style': s:bold })
call Highlight('VimwikiHeader5', { 'fg': s:white, 'bg': s:none, 'style': s:bold })
call Highlight('VimwikiHeader6', { 'fg': s:white, 'bg': s:none, 'style': s:bold })
call Highlight('VimwikiPre', { 'fg': s:green, 'bg': s:none, 'style': s:bold })
call Highlight('VimwikiCode', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
call Highlight('VimwikiCodeChar', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
call Highlight('VimwikiBoldChar', { 'fg': s:lighter_grey })
call Highlight('VimwikiItalicChar', { 'fg': s:lighter_grey })

" GitGutter
call Highlight('GitGutterAdd', { 'fg': s:green, 'bg': s:none, 'style': s:none })
call Highlight('GitGutterChange', { 'fg': s:blue, 'bg': s:none, 'style': s:none })
call Highlight('GitGutterDelete', { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('GitGutterChangeDelete', { 'fg': s:orange, 'bg': s:none, 'style': s:none })

" Dirvish
call Highlight('DirvishPathTail', { 'fg': s:blue, 'bg': s:none, 'style': s:none })

" Python
call Highlight('pythonBuiltin', { 'fg': s:blue, 'bg': s:none, 'style': s:none })
call Highlight('pythonBuiltinFunc', { 'fg': s:blue, 'bg': s:none, 'style': s:none })
call Highlight('pythonFunction', { 'fg': s:green, 'bg': s:none, 'style': s:none })
call Highlight('pythonClass', { 'fg': s:green, 'bg': s:none, 'style': s:none })
call Highlight('pythonFunctionCall', { 'fg': s:blue, 'bg': s:none, 'style': s:none })
call Highlight('pythonClassVar', { 'fg': s:orange, 'bg': s:none, 'style': s:italic })
call Highlight('pythonExClass', { 'fg': s:blue, 'bg': s:none, 'style': s:italic })
hi link pythonTripleQuotes Comment
hi link pythonDoctest Comment
hi link pythonDoctest2 Comment

" netrw
call Highlight('netrwExe', { 'fg': s:yellow, 'bg': s:none, 'style': s:none })
call Highlight('netrwDir', { 'fg': s:blue, 'bg': s:none, 'style': s:none })
call Highlight('netrwClassify', { 'fg': s:purple, 'bg': s:none, 'style': s:none })

" Nvim LSP
call Highlight('DiagnosticError', { 'fg': { 'cterm': 197, 'gui': '#fd2c40' }})
hi link LspDiagnosticsDefaultError DiagnosticError
call Highlight('DiagnosticWarn', { 'fg': s:orange, 'bg': s:none, 'style': s:none })
hi link LspDiagnosticsDefaultWarning DiagnosticWarn
call Highlight('DiagnosticInfo', { 'fg': s:lightest_grey, 'bg': s:none, 'style': s:none })
hi link LspDiagnosticsDefaultInfo DiagnosticInfo
call Highlight('DiagnosticHint', { 'fg': s:lightest_grey, 'bg': s:none, 'style': s:none })
hi link LspDiagnosticsDefaultHint DiagnosticHint
call Highlight('DiagnosticUnderlineError', { 'fg': s:none, 'bg': s:none, 'style': s:underline })
hi link LspDiagnosticsUnderlineError DiagnosticUnderlineError
call Highlight('DiagnosticUnderlineWarn', { 'fg': s:none, 'bg': s:none, 'style': s:underline })
hi link LspDiagnosticsUnderlineWarning DiagnosticUnderlineWarn
call Highlight('DiagnosticUnderlineInfo', { 'fg': s:none, 'bg': s:none, 'style': s:underline })
hi link LspDiagnosticsUnderlineInformation DiagnosticUnderlineInfo
call Highlight('DiagnosticUnderlineHint', { 'fg': s:none, 'bg': s:none, 'style': s:underline })
hi link LspDiagnosticsUnderlineHint DiagnosticUnderlineHint


if (has('nvim-0.8'))
    " Neovim specific Treesitter highlights

    " Python
    call Highlight('@constructor.python', { 'fg': s:blue, 'bg': s:none, 'style': s:italic })
    call Highlight('@field.python', { 'fg': s:white, 'bg': s:none, 'style': s:none })
    call Highlight('@function.builtin.python', { 'fg': s:green, 'bg': s:none, 'style': s:none })
    call Highlight('@keyword.function.python', { 'fg': s:blue, 'bg': s:none, 'style': s:italic })
    call Highlight('@parameter.python', { 'fg': s:orange, 'bg': s:none, 'style': s:italic })
    call Highlight('@preproc.python', { 'fg': s:lighter_grey, 'bg': s:none, 'style': s:italic })
    call Highlight('@punctuation.delimiter.python', { 'fg': s:lightest_grey, 'bg': s:none, 'style': s:none })
    call Highlight('@string.documentation.python', { 'fg': s:lighter_grey, 'bg': s:none, 'style': s:italic })
    call Highlight('@type.python', { 'fg': s:blue, 'bg': s:none, 'style': s:none })
    call Highlight('@type.builtin.python', { 'fg': s:blue, 'bg': s:none, 'style': s:italic })
    call Highlight('@variable.builtin.python', { 'fg': s:lightest_grey, 'bg': s:none, 'style': s:italic })
    call Highlight('@variable.python', { 'fg': s:white, 'bg': s:none, 'style': s:none })

    " Kotlin
    call Highlight('@function.call.kotlin', { 'fg': s:blue, 'bg': s:none, 'style': s:none })
    call Highlight('@function.builtin.kotlin', { 'fg': s:white, 'bg': s:none, 'style': s:italic })
    call Highlight('@punctuation.bracket.kotlin', { 'fg': s:none, 'bg': s:none, 'style': s:none })
    call Highlight('@punctuation.delimiter.kotlin', { 'fg': s:lightest_grey, 'bg': s:none, 'style': s:none })
    call Highlight('@keyword.modifier.kotlin', { 'fg': s:white, 'bg': s:none, 'style': s:bold })
    call Highlight('@keyword.kotlin', { 'fg': s:magenta, 'bg': s:none, 'style': s:italic })
    call Highlight('@variable.kotlin', { 'fg': s:none, 'bg': s:none, 'style': s:none })
    call Highlight('@lsp.type.variable.kotlin', { 'fg': s:none, 'bg': s:none, 'style': s:none })
    call Highlight('@lsp.type.property.kotlin', { 'fg': s:none, 'bg': s:none, 'style': s:none })
    call Highlight('@lsp.type.class.kotlin', { 'fg': s:blue, 'bg': s:none, 'style': s:italic })
    call Highlight('@lsp.type.function.kotlin', { 'fg': s:none, 'bg': s:none, 'style': s:none })
    call Highlight('@lsp.type.parameter.kotlin', { 'fg': s:orange, 'bg': s:none, 'style': s:none })

    " Scala
    call Highlight('@parameter.scala', { 'fg': s:orange, 'bg': s:none, 'style': s:italic })
    call Highlight('@type.scala', { 'fg': s:blue, 'bg': s:none, 'style': s:none })
    call Highlight('@variable.scala', { 'fg': s:none, 'bg': s:none, 'style': s:none })
    call Highlight('@type.qualifier.scala', { 'fg': s:blue, 'bg': s:none, 'style': s:italic })
    call Highlight('@method.scala', { 'fg': s:green, 'bg': s:none, 'style': s:none })
    call Highlight('@function.scala', { 'fg': s:green, 'bg': s:none, 'style': s:none })
    call Highlight('@method.call.scala', { 'fg': s:none, 'bg': s:none, 'style': s:none })
    call Highlight('@function.call.scala', { 'fg': s:none, 'bg': s:none, 'style': s:none })
    call Highlight('@property.scala', { 'fg': s:none, 'bg': s:none, 'style': s:none })
    call Highlight('@punctuation.bracket.scala', { 'fg': s:none, 'bg': s:none, 'style': s:none })
    call Highlight('@namespace.scala', { 'fg': s:none, 'bg': s:none, 'style': s:none })
    call Highlight('@conditional.scala', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
    call Highlight('@variable.builtin.scala', { 'fg': s:blue, 'bg': s:none, 'style': s:italic })
    " LSP semantic highlights
    call Highlight('@lsp.type.parameter.scala', { 'fg': s:none, 'bg': s:none, 'style': s:none })
    call Highlight('@lsp.type.namespace.scala', { 'fg': s:none, 'bg': s:none, 'style': s:none })
    call Highlight('@lsp.type.method.scala', { 'fg': s:none, 'bg': s:none, 'style': s:none })
    call Highlight('@lsp.type.variable.scala', { 'fg': s:none, 'bg': s:none, 'style': s:none })
    call Highlight('@lsp.type.class.scala', { 'fg': s:none, 'bg': s:none, 'style': s:none })

    " TypeScript
    call Highlight('@lsp.type.parameter.typescript', { 'fg': s:orange, 'bg': s:none, 'style': s:none })
    call Highlight('@lsp.type.variable.typescript', { 'fg': s:none, 'bg': s:none, 'style': s:none })
    call Highlight('@lsp.type.property.typescript', { 'fg': s:none, 'bg': s:none, 'style': s:none })
    call Highlight('@lsp.type.namespace.typescript', { 'fg': s:none, 'bg': s:none, 'style': s:none })

    " TypeScript React (TSX)
    call Highlight('@lsp.type.parameter.typescript.tsx', { 'fg': s:none, 'bg': s:none, 'style': s:none })
    call Highlight('@lsp.type.variable.typescript.tsx', { 'fg': s:none, 'bg': s:none, 'style': s:none })
    call Highlight('@lsp.type.property.typescript.tsx', { 'fg': s:none, 'bg': s:none, 'style': s:none })
    call Highlight('@lsp.type.namespace.typescript.tsx', { 'fg': s:none, 'bg': s:none, 'style': s:none })

    " JavaScript
    call Highlight('@lsp.type.parameter.javascript', { 'fg': s:none, 'bg': s:none, 'style': s:none })
    call Highlight('@lsp.type.variable.javascript', { 'fg': s:none, 'bg': s:none, 'style': s:none })
    call Highlight('@lsp.type.property.javascript', { 'fg': s:none, 'bg': s:none, 'style': s:none })
    call Highlight('@lsp.type.namespace.javascript', { 'fg': s:none, 'bg': s:none, 'style': s:none })
endif

" Must be at the end, because of ctermbg=234 bug.
" https://groups.google.com/forum/#!msg/vim_dev/afPqwAFNdrU/nqh6tOM87QUJ
set background=dark
