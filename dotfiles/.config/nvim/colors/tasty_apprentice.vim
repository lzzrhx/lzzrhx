" tasty-apprentice (heavily based on monokai-tasty and apprentice)
" monokai-tasty | https://github.com/patstockwell/vim-monokai-tasty
" apprentice    | https://github.com/romainl/Apprentice

hi clear
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
if !exists('g:tasty_apprentice_mix_level') || count([0,1,2,3], g:tasty_apprentice_mix_level) == 0
    let g:tasty_apprentice_mix_level = 2
endif

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

" Set colors, [apprentice]
if g:tasty_apprentice_mix_level == 3
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

" General
call Highlight('WildMenu',          { 'fg': s:darker_grey, 'bg': s:orange, 'style': s:none })
call Highlight('PmenuSel',          { 'fg': s:orange, 'bg': s:grey, 'style': s:none })
call Highlight('CurSearch',         { 'fg': s:white, 'bg': s:blue, 'style': s:bold })
call Highlight('IncSearch',         { 'fg': s:white, 'bg': s:blue, 'style': s:bold })
call Highlight('Search',            { 'fg': s:white, 'bg': s:dark_blue, 'style': s:none })
call Highlight('Pmenu',             { 'fg': s:lightest_grey, 'bg': s:dark_grey, 'style': s:none })
call Highlight('StatusLine',        { 'fg': s:lightest_grey, 'bg': s:darker_grey, 'style': s:none })
call Highlight('CursorLine',        { 'bg': s:none, 'style': s:none })
call Highlight('CursorLineNR',      { 'fg': s:lightest_grey, 'bg': s:dark_grey, 'style': s:none })
call Highlight('MatchParen',        { 'fg': s:white, 'bg': s:none, 'style': s:underline })
call Highlight('Todo',              { 'fg': s:darker_grey, 'bg': s:yellow, 'style': s:none })
call Highlight('LineNr',            { 'fg': s:grey, 'bg': s:none, 'style': s:none })

" Plugins
call Highlight('illuminatedWord',       { 'fg': s:none, 'bg': s:none, 'style': s:underline })
call Highlight('YcmWarningSign',        { 'fg': s:black, 'bg': s:orange, 'style': s:none })
call Highlight('YcmWarningSection',     { 'fg': s:black, 'bg': s:orange, 'style': s:none })
call Highlight('YcmErrorSign',          { 'fg': s:white, 'bg': s:red, 'style': s:none })
call Highlight('YcmErrorSection',       { 'fg': s:white, 'bg': s:red, 'style': s:none })
call Highlight('GitGutterAdd',          { 'fg': s:green, 'bg': s:none, 'style': s:none })
call Highlight('GitGutterChange',       { 'fg': s:blue, 'bg': s:none, 'style': s:none })
call Highlight('GitGutterDelete',       { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('GitGutterChangeDelete', { 'fg': s:orange, 'bg': s:none, 'style': s:none })
call Highlight('WhichKey',              { 'fg': s:lightest_grey, 'bg': s:dark_grey, 'style': s:none })
call Highlight('WhichKeyNormal',              { 'fg': s:lightest_grey, 'bg': s:dark_grey, 'style': s:none })

" Syntax highlighting
call Highlight('Type',              { 'fg': s:green, 'bg': s:none, 'style': s:none })
call Highlight('PreCondit',         { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('Function',          { 'fg': s:green, 'bg': s:none, 'style': s:none })
call Highlight('StorageClass',      { 'fg': s:blue, 'bg': s:none, 'style': s:none })
call Highlight('Statement',         { 'fg': s:magenta, 'bg': s:none, 'style': s:none })
call Highlight('Constant',          { 'fg': s:purple, 'bg': s:none, 'style': s:none })

" General, Unmodified (from monokai-tasty)
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
call Highlight('qfFileName', { 'fg': s:purple, 'bg': s:none, 'style': s:none })
call Highlight('qfLineNr', { 'fg': s:blue, 'bg': s:none, 'style': s:none })
call Highlight('qfSeparator', { 'fg': s:lightest_grey, 'bg': s:none, 'style': s:none })
call Highlight('QuickFixLine', { 'fg': s:green, 'bg': s:darker_grey, 'style': s:bold })

" Syntax highlighting, Unmodified (from monokai-tasty)
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

" StatusLine, Unmodified (from monokai-tasty)
call Highlight('StatusLineBase', { 'fg': s:white, 'bg': s:dark_grey, 'style': s:none })
call Highlight('StatusLineGitBranch', { 'fg': s:white, 'bg': s:grey, 'style': s:italic })
call Highlight('StatusLineModifiedFile', { 'fg': s:orange, 'bg': s:dark_grey, 'style': s:none })
call Highlight('StatusLineReadOnlyFile', { 'fg': s:lighter_grey, 'bg': s:dark_grey, 'style': s:none })
call Highlight('StatusLineSeparatorGitBranch', { 'fg': s:grey, 'bg': s:dark_grey, 'style': s:none })
call Highlight('StatusLineSeparatorNormalDark', { 'fg': s:green, 'bg': s:grey, 'style': s:none })
call Highlight('StatusLineSeparatorNormal', { 'fg': s:green, 'bg': s:dark_grey, 'style': s:none })
call Highlight('StatusLineNormalMode', { 'fg': s:darkest_grey, 'bg': s:green })
call Highlight('StatusLineNormalModeBold', { 'fg': s:darkest_grey, 'bg': s:green, 'style': s:bold })
call Highlight('StatusLineSeparatorVisualDark', { 'fg': s:purple, 'bg': s:grey, 'style': s:none })
call Highlight('StatusLineSeparatorVisual', { 'fg': s:purple, 'bg': s:dark_grey, 'style': s:none })
call Highlight('StatusLineVisualMode', { 'fg': s:darkest_grey, 'bg': s:purple })
call Highlight('StatusLineVisualModeBold', { 'fg': s:darkest_grey, 'bg': s:purple, 'style': s:bold })
call Highlight('StatusLineSeparatorInsertDark', { 'fg': s:yellow, 'bg': s:grey, 'style': s:none })
call Highlight('StatusLineSeparatorInsert', { 'fg': s:yellow, 'bg': s:dark_grey, 'style': s:none })
call Highlight('StatusLineInsertMode', { 'fg': s:darkest_grey, 'bg': s:yellow })
call Highlight('StatusLineInsertModeBold', { 'fg': s:darkest_grey, 'bg': s:yellow, 'style': s:bold })
call Highlight('StatusLineSeparatorCommandDark', { 'fg': s:blue, 'bg': s:grey, 'style': s:none })
call Highlight('StatusLineSeparatorCommand', { 'fg': s:blue, 'bg': s:dark_grey, 'style': s:none })
call Highlight('StatusLineCommandMode', { 'fg': s:darkest_grey, 'bg': s:blue })
call Highlight('StatusLineCommandModeBold', { 'fg': s:darkest_grey, 'bg': s:blue, 'style': s:bold })

" Must be at the end, because of ctermbg=234 bug.
" https://groups.google.com/forum/#!msg/vim_dev/afPqwAFNdrU/nqh6tOM87QUJ
set background=dark
