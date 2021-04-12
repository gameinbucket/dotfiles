scriptencoding utf-8

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

set t_Co=256
let g:colors_name="monokai"

hi Cursor ctermfg=235 ctermbg=231 cterm=none
hi Visual ctermfg=none ctermbg=59 cterm=none
hi CursorLine ctermfg=none ctermbg=237 cterm=none
hi CursorColumn ctermfg=none ctermbg=237 cterm=none
hi ColorColumn ctermfg=none ctermbg=237 cterm=none
hi LineNr ctermfg=102 ctermbg=237 cterm=none
hi VertSplit ctermfg=241 ctermbg=241 cterm=none
hi MatchParen ctermfg=197 ctermbg=none cterm=underline
hi StatusLine ctermfg=231 ctermbg=241 cterm=bold
hi StatusLineNC ctermfg=231 ctermbg=241 cterm=none
hi Pmenu ctermfg=none ctermbg=none cterm=none
hi PmenuSel ctermfg=none ctermbg=59 cterm=none
hi IncSearch term=reverse cterm=reverse ctermfg=193 ctermbg=16
hi Search term=reverse cterm=none ctermfg=231 ctermbg=24
hi Directory ctermfg=141 ctermbg=none cterm=none
hi Folded ctermfg=242 ctermbg=235 cterm=none
hi SignColumn ctermfg=none ctermbg=237 cterm=none
hi Normal ctermfg=231 ctermbg=235 cterm=none
hi Boolean ctermfg=141 ctermbg=none cterm=none
hi Character ctermfg=141 ctermbg=none cterm=none
hi Comment ctermfg=242 ctermbg=none cterm=none
hi Conditional ctermfg=197 ctermbg=none cterm=none
hi Constant ctermfg=none ctermbg=none cterm=none
hi Define ctermfg=197 ctermbg=none cterm=none
hi DiffAdd ctermfg=231 ctermbg=64 cterm=bold
hi DiffDelete ctermfg=88 ctermbg=none cterm=none
hi DiffChange ctermfg=none ctermbg=none cterm=none
hi DiffText ctermfg=231 ctermbg=24 cterm=bold
hi ErrorMsg ctermfg=231 ctermbg=197 cterm=none
hi WarningMsg ctermfg=231 ctermbg=197 cterm=none
hi Float ctermfg=141 ctermbg=none cterm=none
hi Function ctermfg=148 ctermbg=none cterm=none
hi Identifier ctermfg=81 ctermbg=none cterm=none
hi Keyword ctermfg=197 ctermbg=none cterm=none
hi Label ctermfg=186 ctermbg=none cterm=none
hi NonText ctermfg=59 ctermbg=236 cterm=none
hi Number ctermfg=141 ctermbg=none cterm=none
hi Operator ctermfg=197 ctermbg=none cterm=none
hi PreProc ctermfg=197 ctermbg=none cterm=none
hi Special ctermfg=231 ctermbg=none cterm=none
hi SpecialComment ctermfg=242 ctermbg=none cterm=none
hi SpecialKey ctermfg=59 ctermbg=237 cterm=none
hi Statement ctermfg=197 ctermbg=none cterm=none
hi StorageClass ctermfg=81 ctermbg=none cterm=none
hi String ctermfg=186 ctermbg=none cterm=none
hi Tag ctermfg=197 ctermbg=none cterm=none
hi Title ctermfg=231 ctermbg=none cterm=bold
hi Todo ctermfg=95 ctermbg=none cterm=inverse,bold
hi Type ctermfg=197 ctermbg=none cterm=none
hi Underlined ctermfg=none ctermbg=none cterm=underline
