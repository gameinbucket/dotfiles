scriptencoding utf-8

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

set t_Co=256
let g:colors_name="codedark"

function! s:h(group, fg, bg, attr, sp)
  if !empty(a:fg)
    exec "hi " . a:group . " guifg=" . a:fg.gui . " ctermfg=" . a:fg.cterm256
  endif
  if !empty(a:bg)
    exec "hi " . a:group . " guibg=" . a:bg.gui . " ctermbg=" . a:bg.cterm256
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
  if !empty(a:sp)
    exec "hi " . a:group . " guisp=" . a:sp.gui
  endif
endfunction

let s:cterm00 = "00"
let s:cterm03 = "08"
let s:cterm05 = "07"
let s:cterm07 = "15"
let s:cterm08 = "01"
let s:cterm0A = "03"
let s:cterm0B = "02"
let s:cterm0C = "06"
let s:cterm0D = "04"
let s:cterm0E = "05"
let s:cterm01 = "00"
let s:cterm02 = "08"
let s:cterm04 = "07"
let s:cterm06 = "07"
let s:cterm09 = "06"
let s:cterm0F = "03"

let s:cdNone = {'gui': 'NONE', 'cterm': 'NONE', 'cterm256': 'NONE'}
let s:cdFront = {'gui': '#D4D4D4', 'cterm': s:cterm05, 'cterm256': '188'}
let s:cdBack = {'gui': '#1E1E1E', 'cterm': s:cterm00, 'cterm256': '234'}

let s:cdTabCurrent = {'gui': '#1E1E1E', 'cterm': s:cterm00, 'cterm256': '234'}
let s:cdTabOther = {'gui': '#2D2D2D', 'cterm': s:cterm01, 'cterm256': '236'}
let s:cdTabOutside = {'gui': '#252526', 'cterm': s:cterm01, 'cterm256': '235'}

let s:cdLeftDark = {'gui': '#252526', 'cterm': s:cterm01, 'cterm256': '235'}
let s:cdLeftMid = {'gui': '#373737', 'cterm': s:cterm03, 'cterm256': '237'}
let s:cdLeftLight = {'gui': '#3F3F46', 'cterm': s:cterm03, 'cterm256': '238'}

let s:cdPopupFront = {'gui': '#BBBBBB', 'cterm': s:cterm06, 'cterm256': '250'}
let s:cdPopupBack = {'gui': '#2D2D30', 'cterm': s:cterm01, 'cterm256': '236'}
let s:cdPopupHighlightBlue = {'gui': '#073655', 'cterm': s:cterm0D, 'cterm256': '24'}
let s:cdPopupHighlightGray = {'gui': '#3D3D40', 'cterm': s:cterm03, 'cterm256': '237'}

let s:cdSplitLight = {'gui': '#898989', 'cterm': s:cterm04, 'cterm256': '245'}
let s:cdSplitDark = {'gui': '#444444', 'cterm': s:cterm03, 'cterm256': '238'}
let s:cdSplitThumb = {'gui': '#424242', 'cterm': s:cterm04, 'cterm256': '238'}

let s:cdCursorDarkDark = {'gui': '#222222', 'cterm': s:cterm01, 'cterm256': '235'}
let s:cdCursorDark = {'gui': '#51504F', 'cterm': s:cterm03, 'cterm256': '239'}
let s:cdCursorLight = {'gui': '#AEAFAD', 'cterm': s:cterm04, 'cterm256': '145'}
let s:cdSelection = {'gui': '#264F78', 'cterm': s:cterm03, 'cterm256': '24'}
let s:cdLineNumber = {'gui': '#5A5A5A', 'cterm': s:cterm04, 'cterm256': '240'}

let s:cdDiffRedDark = {'gui': '#4B1818', 'cterm': s:cterm08, 'cterm256': '52'}
let s:cdDiffRedLight = {'gui': '#6F1313', 'cterm': s:cterm08, 'cterm256': '52'}
let s:cdDiffRedLightLight = {'gui': '#FB0101', 'cterm': s:cterm08, 'cterm256': '09'}
let s:cdDiffGreenDark = {'gui': '#373D29', 'cterm': s:cterm0B, 'cterm256': '237'}
let s:cdDiffGreenLight = {'gui': '#4B5632', 'cterm': s:cterm09, 'cterm256': '58'}

let s:cdSearchCurrent = {'gui': '#4B5632', 'cterm': s:cterm09, 'cterm256': '58'}
let s:cdSearch = {'gui': '#264F78', 'cterm': s:cterm03, 'cterm256': '24'}

let s:cdGray = {'gui': '#808080', 'cterm': s:cterm04, 'cterm256': '08'}
let s:cdViolet = {'gui': '#646695', 'cterm': s:cterm04, 'cterm256': '60'}
let s:cdBlue = {'gui': '#569CD6', 'cterm': s:cterm0D, 'cterm256': '75'}
let s:cdDarkBlue = {'gui': '#223E55', 'cterm': s:cterm0D, 'cterm256': '73'}
let s:cdLightBlue = {'gui': '#9CDCFE', 'cterm': s:cterm0C, 'cterm256': '117'}
let s:cdGreen = {'gui': '#6A9955', 'cterm': s:cterm0B, 'cterm256': '65'}
let s:cdBlueGreen = {'gui': '#4EC9B0', 'cterm': s:cterm0F, 'cterm256': '43'}
let s:cdLightGreen = {'gui': '#B5CEA8', 'cterm': s:cterm09, 'cterm256': '151'}
let s:cdRed = {'gui': '#F44747', 'cterm': s:cterm08, 'cterm256': '203'}
let s:cdOrange = {'gui': '#CE9178', 'cterm': s:cterm0F, 'cterm256': '173'}
let s:cdLightRed = {'gui': '#D16969', 'cterm': s:cterm08, 'cterm256': '167'}
let s:cdYellowOrange = {'gui': '#D7BA7D', 'cterm': s:cterm0A, 'cterm256': '179'}
let s:cdYellow = {'gui': '#DCDCAA', 'cterm': s:cterm0A, 'cterm256': '187'}
let s:cdPink = {'gui': '#C586C0', 'cterm': s:cterm0E, 'cterm256': '176'}

call s:h('Normal', s:cdFront, s:cdBack, 'none', {})
call s:h('ColorColumn', {}, s:cdCursorDarkDark, 'none', {})
call s:h('Cursor', s:cdCursorDark, s:cdCursorLight, 'none', {})
call s:h('CursorLine', {}, s:cdCursorDarkDark, 'none', {})
call s:h('CursorColumn', {}, s:cdCursorDarkDark, 'none', {})
call s:h('Directory', s:cdBlue, s:cdBack, 'none', {})
call s:h('DiffAdd', {}, s:cdDiffGreenDark, 'none', {})
call s:h('DiffChange', {}, s:cdDiffRedDark, 'none', {})
call s:h('DiffDelete', {}, s:cdDiffRedLight, 'none', {})
call s:h('DiffText', {}, s:cdDiffRedLight, 'none', {})
call s:h('EndOfBuffer', s:cdLineNumber, s:cdBack, 'none', {})
call s:h('ErrorMsg', s:cdRed, s:cdBack, 'none', {})
call s:h('VertSplit', s:cdSplitDark, s:cdBack, 'none', {})
call s:h('Folded', s:cdLeftLight, s:cdLeftDark, 'underline', {})
call s:h('FoldColumn', s:cdLineNumber, s:cdBack, 'none', {})
call s:h('SignColumn', {}, s:cdBack, 'none', {})
call s:h('IncSearch', s:cdNone, s:cdSearchCurrent, 'none', {})
call s:h('LineNr', s:cdLineNumber, s:cdBack, 'none', {})
call s:h('CursorLineNr', s:cdPopupFront, s:cdBack, 'none', {})
call s:h('MatchParen', s:cdNone, s:cdCursorDark, 'none', {})
call s:h('ModeMsg', s:cdFront, s:cdLeftDark, 'none', {})
call s:h('MoreMsg', s:cdFront, s:cdLeftDark, 'none', {})
call s:h('NonText', s:cdLineNumber, s:cdBack, 'none', {})
call s:h('Pmenu', s:cdPopupFront, s:cdPopupBack, 'none', {})
call s:h('PmenuSel', s:cdPopupFront, s:cdPopupHighlightBlue, 'none', {})
call s:h('PmenuSbar', {}, s:cdPopupHighlightGray, 'none', {})
call s:h('PmenuThumb', {}, s:cdPopupFront, 'none', {})
call s:h('Question', s:cdBlue, s:cdBack, 'none', {})
call s:h('Search', s:cdNone, s:cdSearch, 'none', {})
call s:h('SpecialKey', s:cdBlue, s:cdNone, 'none', {})
call s:h('StatusLine', s:cdFront, s:cdLeftMid, 'none', {})
call s:h('StatusLineNC', s:cdFront, s:cdLeftDark, 'none', {})
call s:h('TabLine', s:cdFront, s:cdTabOther, 'none', {})
call s:h('TabLineFill', s:cdFront, s:cdTabOutside, 'none', {})
call s:h('TabLineSel', s:cdFront, s:cdTabCurrent, 'none', {})
call s:h('Title', s:cdNone, s:cdNone, 'bold', {})
call s:h('Visual', s:cdNone, s:cdSelection, 'none', {})
call s:h('VisualNOS', s:cdNone, s:cdSelection, 'none', {})
call s:h('WarningMsg', s:cdOrange, s:cdBack, 'none', {})
call s:h('WildMenu', s:cdNone, s:cdSelection, 'none', {})

call s:h('Comment', s:cdGreen, {}, 'none', {})

call s:h('Constant', s:cdBlue, {}, 'none', {})
call s:h('String', s:cdOrange, {}, 'none', {})
call s:h('Character', s:cdOrange, {}, 'none', {})
call s:h('Number', s:cdLightGreen, {}, 'none', {})
call s:h('Boolean', s:cdBlue, {}, 'none', {})
call s:h('Float', s:cdLightGreen, {}, 'none', {})

call s:h('Identifier', s:cdLightBlue, {}, 'none', {})
call s:h('Function', s:cdYellow, {}, 'none', {})

call s:h('Statement', s:cdPink, {}, 'none', {})
call s:h('Conditional', s:cdPink, {}, 'none', {})
call s:h('Repeat', s:cdPink, {}, 'none', {})
call s:h('Label', s:cdPink, {}, 'none', {})
call s:h('Operator', s:cdFront, {}, 'none', {})
call s:h('Keyword', s:cdPink, {}, 'none', {})
call s:h('Exception', s:cdPink, {}, 'none', {})

call s:h('PreProc', s:cdPink, {}, 'none', {})
call s:h('Include', s:cdPink, {}, 'none', {})
call s:h('Define', s:cdPink, {}, 'none', {})
call s:h('Macro', s:cdPink, {}, 'none', {})
call s:h('PreCondit', s:cdPink, {}, 'none', {})

call s:h('Type', s:cdBlue, {}, 'none', {})
call s:h('StorageClass', s:cdBlue, {}, 'none', {})
call s:h('Structure', s:cdBlue, {}, 'none', {})
call s:h('Typedef', s:cdBlue, {}, 'none', {})

call s:h('Special', s:cdYellowOrange, {}, 'none', {})
call s:h('SpecialChar', s:cdFront, {}, 'none', {})
call s:h('Tag', s:cdFront, {}, 'none', {})
call s:h('Delimiter', s:cdFront, {}, 'none', {})
call s:h('SpecialComment', s:cdGreen, {}, 'none', {})
call s:h('Debug', s:cdFront, {}, 'none', {})

call s:h('Underlined', s:cdNone, {}, 'underline', {})
call s:h("Conceal", s:cdFront, s:cdBack, 'none', {})

call s:h('Ignore', s:cdFront, {}, 'none', {})

call s:h('Error', s:cdRed, s:cdBack, 'undercurl', s:cdRed)

call s:h('Todo', s:cdNone, s:cdLeftMid, 'none', {})

call s:h('SpellBad', s:cdRed, s:cdBack, 'undercurl', s:cdRed)
call s:h('SpellCap', s:cdRed, s:cdBack, 'undercurl', s:cdRed)
call s:h('SpellRare', s:cdRed, s:cdBack, 'undercurl', s:cdRed)
call s:h('SpellLocal', s:cdRed, s:cdBack, 'undercurl', s:cdRed)
