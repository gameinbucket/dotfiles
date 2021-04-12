scriptencoding utf-8

hi clear
if exists("syntax_on")
  syntax reset
endif

set t_Co=256
let g:colors_name='gruvbox'

let s:gb = {}

let s:gb.dark0_hard = ['#1d2021', 234]
let s:gb.dark0 = ['#282828', 235]
let s:gb.dark0_soft = ['#32302f', 236]
let s:gb.dark1 = ['#3c3836', 237]
let s:gb.dark2 = ['#504945', 239]
let s:gb.dark3 = ['#665c54', 241]
let s:gb.dark4 = ['#7c6f64', 243]
let s:gb.dark4_256 = ['#7c6f64', 243]

let s:gb.gray_245 = ['#928374', 245]
let s:gb.gray_244 = ['#928374', 244]

let s:gb.light0_hard = ['#f9f5d7', 230]
let s:gb.light0 = ['#fbf1c7', 229]
let s:gb.light0_soft = ['#f2e5bc', 228]
let s:gb.light1 = ['#ebdbb2', 223]
let s:gb.light2 = ['#d5c4a1', 250]
let s:gb.light3 = ['#bdae93', 248]
let s:gb.light4 = ['#a89984', 246]
let s:gb.light4_256 = ['#a89984', 246]

let s:gb.bright_red = ['#fb4934', 167]
let s:gb.bright_green = ['#b8bb26', 142]
let s:gb.bright_yellow = ['#fabd2f', 214]
let s:gb.bright_blue = ['#83a598', 109]
let s:gb.bright_purple = ['#d3869b', 175]
let s:gb.bright_aqua = ['#8ec07c', 108]
let s:gb.bright_orange = ['#fe8019', 208]

let s:gb.neutral_red = ['#cc241d', 124]
let s:gb.neutral_green = ['#98971a', 106]
let s:gb.neutral_yellow = ['#d79921', 172]
let s:gb.neutral_blue = ['#458588', 66]
let s:gb.neutral_purple = ['#b16286', 132]
let s:gb.neutral_aqua = ['#689d6a', 72]
let s:gb.neutral_orange = ['#d65d0e', 166]

let s:gb.faded_red = ['#9d0006', 88]
let s:gb.faded_green = ['#79740e', 100]
let s:gb.faded_yellow = ['#b57614', 136]
let s:gb.faded_blue = ['#076678', 24]
let s:gb.faded_purple = ['#8f3f71', 96]
let s:gb.faded_aqua = ['#427b58', 66]
let s:gb.faded_orange = ['#af3a03', 130]

let s:bold = 'bold,'
let s:italic = 'italic,'
let s:underline = 'underline,'
let s:undercurl = 'undercurl,'
let s:inverse = 'inverse,'

let s:vim_bg = ['bg', 'bg']
let s:vim_fg = ['fg', 'fg']
let s:none = ['NONE', 'NONE']

let s:bg0 = s:gb.dark0

let s:bg1 = s:gb.dark1
let s:bg2 = s:gb.dark2
let s:bg3 = s:gb.dark3
let s:bg4 = s:gb.dark4

let s:gray = s:gb.gray_245

let s:fg0 = s:gb.light0
let s:fg1 = s:gb.light1
let s:fg2 = s:gb.light2
let s:fg3 = s:gb.light3
let s:fg4 = s:gb.light4

let s:fg4_256 = s:gb.light4_256

let s:red = s:gb.bright_red
let s:green = s:gb.bright_green
let s:yellow = s:gb.bright_yellow
let s:blue = s:gb.bright_blue
let s:purple = s:gb.bright_purple
let s:aqua = s:gb.bright_aqua
let s:orange = s:gb.bright_orange

let s:gb.bg0 = s:bg0
let s:gb.bg1 = s:bg1
let s:gb.bg2 = s:bg2
let s:gb.bg3 = s:bg3
let s:gb.bg4 = s:bg4

let s:gb.gray = s:gray

let s:gb.fg0 = s:fg0
let s:gb.fg1 = s:fg1
let s:gb.fg2 = s:fg2
let s:gb.fg3 = s:fg3
let s:gb.fg4 = s:fg4

let s:gb.fg4_256 = s:fg4_256

let s:gb.red = s:red
let s:gb.green = s:green
let s:gb.yellow = s:yellow
let s:gb.blue = s:blue
let s:gb.purple = s:purple
let s:gb.aqua = s:aqua
let s:gb.orange = s:orange

let s:hls_cursor = s:orange
let s:number_column = s:none
let s:sign_column = s:bg1
let s:color_column = s:bg1
let s:vert_split = s:bg0
let s:invert_signs = ''
let s:invert_selection = s:inverse
let s:invert_tabline = ''
let s:italicize_comments = s:italic
let s:italicize_strings = ''

function! s:h(group, fg, ...)

  let fg = a:fg

  if a:0 >= 1
    let bg = a:1
  else
    let bg = s:none
  endif

  if a:0 >= 2 && strlen(a:2)
    let emstr = a:2
  else
    let emstr = 'NONE,'
  endif

  let histring = [ 'hi', a:group,
        \ 'guifg=' . fg[0], 'ctermfg=' . fg[1],
        \ 'guibg=' . bg[0], 'ctermbg=' . bg[1],
        \ 'gui=' . emstr[:-2], 'cterm=' . emstr[:-2]
        \ ]

  if a:0 >= 3
    call add(histring, 'guisp=' . a:3[0])
  endif

  execute join(histring, ' ')
endfunction

call s:h('GruvboxFg0', s:fg0)
call s:h('GruvboxFg1', s:fg1)
call s:h('GruvboxFg2', s:fg2)
call s:h('GruvboxFg3', s:fg3)
call s:h('GruvboxFg4', s:fg4)
call s:h('GruvboxGray', s:gray)
call s:h('GruvboxBg0', s:bg0)
call s:h('GruvboxBg1', s:bg1)
call s:h('GruvboxBg2', s:bg2)
call s:h('GruvboxBg3', s:bg3)
call s:h('GruvboxBg4', s:bg4)

call s:h('GruvboxRed', s:red)
call s:h('GruvboxRedBold', s:red, s:none, s:bold)
call s:h('GruvboxGreen', s:green)
call s:h('GruvboxGreenBold', s:green, s:none, s:bold)
call s:h('GruvboxYellow', s:yellow)
call s:h('GruvboxYellowBold', s:yellow, s:none, s:bold)
call s:h('GruvboxBlue', s:blue)
call s:h('GruvboxBlueBold', s:blue, s:none, s:bold)
call s:h('GruvboxPurple', s:purple)
call s:h('GruvboxPurpleBold', s:purple, s:none, s:bold)
call s:h('GruvboxAqua', s:aqua)
call s:h('GruvboxAquaBold', s:aqua, s:none, s:bold)
call s:h('GruvboxOrange', s:orange)
call s:h('GruvboxOrangeBold', s:orange, s:none, s:bold)

call s:h('GruvboxRedSign', s:red, s:sign_column, s:invert_signs)
call s:h('GruvboxGreenSign', s:green, s:sign_column, s:invert_signs)
call s:h('GruvboxYellowSign', s:yellow, s:sign_column, s:invert_signs)
call s:h('GruvboxBlueSign', s:blue, s:sign_column, s:invert_signs)
call s:h('GruvboxPurpleSign', s:purple, s:sign_column, s:invert_signs)
call s:h('GruvboxAquaSign', s:aqua, s:sign_column, s:invert_signs)
call s:h('GruvboxOrangeSign', s:orange, s:sign_column, s:invert_signs)

call s:h('Normal', s:fg1, s:bg0)

set background=dark

call s:h('CursorLine', s:none, s:bg1)
hi! link CursorColumn CursorLine

call s:h('TabLineFill', s:bg4, s:bg1, s:invert_tabline)
call s:h('TabLineSel', s:green, s:bg1, s:invert_tabline)
hi! link TabLine TabLineFill

call s:h('MatchParen', s:none, s:bg3, s:bold)

call s:h('ColorColumn', s:none, s:color_column)
call s:h('Conceal', s:blue, s:none)
call s:h('CursorLineNr', s:yellow, s:bg1)

hi! link NonText GruvboxBg2
hi! link SpecialKey GruvboxBg2

call s:h('Visual', s:none, s:bg3, s:invert_selection)
hi! link VisualNOS Visual

call s:h('Search', s:yellow, s:bg0, s:inverse)
call s:h('IncSearch', s:hls_cursor, s:bg0, s:inverse)

call s:h('Underlined', s:blue, s:none, s:underline)

call s:h('StatusLine', s:bg2, s:fg1, s:inverse)
call s:h('StatusLineNC', s:bg1, s:fg4, s:inverse)

call s:h('VertSplit', s:bg3, s:vert_split)
call s:h('WildMenu', s:blue, s:bg2, s:bold)
hi! link Directory GruvboxGreenBold
hi! link Title GruvboxGreenBold
call s:h('ErrorMsg', s:bg0, s:red, s:bold)
hi! link MoreMsg GruvboxYellowBold
hi! link ModeMsg GruvboxYellowBold
hi! link Question GruvboxOrangeBold
hi! link WarningMsg GruvboxRedBold

call s:h('LineNr', s:bg4, s:number_column)
call s:h('SignColumn', s:none, s:sign_column)
call s:h('Folded', s:gray, s:bg1, s:italic)
call s:h('FoldColumn', s:gray, s:bg1)

call s:h('Cursor', s:none, s:none, s:inverse)
hi! link vCursor Cursor
hi! link iCursor Cursor
hi! link lCursor Cursor

hi! link Special GruvboxOrange

call s:h('Comment', s:gray, s:none, s:italicize_comments)
call s:h('Todo', s:vim_fg, s:vim_bg, s:bold . s:italic)
call s:h('Error', s:red, s:vim_bg, s:bold . s:inverse)

hi! link Statement GruvboxRed
hi! link Conditional GruvboxRed
hi! link Repeat GruvboxRed
hi! link Label GruvboxRed
hi! link Exception GruvboxRed
hi! link Operator Normal
hi! link Keyword GruvboxRed

hi! link Identifier GruvboxBlue
hi! link Function GruvboxGreenBold

hi! link PreProc GruvboxAqua
hi! link Include GruvboxAqua
hi! link Define GruvboxAqua
hi! link Macro GruvboxAqua
hi! link PreCondit GruvboxAqua

hi! link Constant GruvboxPurple
hi! link Character GruvboxPurple
call s:h('String', s:green, s:none, s:italicize_strings)
hi! link Boolean GruvboxPurple
hi! link Number GruvboxPurple
hi! link Float GruvboxPurple

hi! link Type GruvboxYellow
hi! link StorageClass GruvboxOrange
hi! link Structure GruvboxAqua
hi! link Typedef GruvboxYellow

call s:h('Pmenu', s:fg1, s:bg2)
call s:h('PmenuSel', s:bg2, s:blue, s:bold)
call s:h('PmenuSbar', s:none, s:bg2)
call s:h('PmenuThumb', s:none, s:bg4)

call s:h('DiffDelete', s:red, s:bg0, s:inverse)
call s:h('DiffAdd', s:green, s:bg0, s:inverse)

call s:h('DiffChange', s:aqua, s:bg0, s:inverse)
call s:h('DiffText', s:yellow, s:bg0, s:inverse)

if has("spell")
  call s:h('SpellCap', s:green, s:none, s:bold . s:italic)
  call s:h('SpellBad', s:none, s:none, s:undercurl, s:blue)
  call s:h('SpellLocal', s:none, s:none, s:undercurl, s:aqua)
  call s:h('SpellRare', s:none, s:none, s:undercurl, s:purple)
endif

hi! link netrwDir GruvboxAqua
hi! link netrwClassify GruvboxAqua
hi! link netrwLink GruvboxGray
hi! link netrwSymLink GruvboxFg1
hi! link netrwExe GruvboxYellow
hi! link netrwComment GruvboxGray
hi! link netrwList GruvboxBlue
hi! link netrwHelpCmd GruvboxAqua
hi! link netrwCmdSep GruvboxFg3
hi! link netrwVersion GruvboxGreen
