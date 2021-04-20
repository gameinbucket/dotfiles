scriptencoding utf-8

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

set t_Co=256
let g:colors_name="my_theme"

hi ColorColumn guifg=NONE ctermfg=NONE guibg=#16172d ctermbg=234 gui=NONE cterm=NONE
hi CursorColumn guifg=NONE ctermfg=NONE guibg=#16172d ctermbg=234 gui=NONE cterm=NONE
hi Conceal guifg=#686f9a ctermfg=60 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Cursor guifg=#0f111b ctermfg=233 guibg=#818596 ctermbg=102 gui=NONE cterm=NONE
hi link CursorIM Cursor
hi CursorLine guifg=NONE ctermfg=NONE guibg=#16172d ctermbg=234 gui=NONE cterm=NONE
hi CursorLineNr guifg=#c1c3cc ctermfg=251 guibg=#16172d ctermbg=234 gui=NONE cterm=NONE
hi Directory guifg=#00a3cc ctermfg=38 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiffAdd guifg=#5ccc96 ctermfg=78 guibg=#1b1c36 ctermbg=234 gui=NONE cterm=NONE
hi DiffChange guifg=#e39400 ctermfg=172 guibg=#1b1c36 ctermbg=234 gui=NONE cterm=NONE
hi DiffDelete guifg=#e33400 ctermfg=166 guibg=#1b1c36 ctermbg=234 gui=NONE cterm=NONE
hi DiffText guifg=#f2ce00 ctermfg=220 guibg=#1b1c36 ctermbg=234 gui=NONE cterm=NONE
hi EndOfBuffer guifg=#30365F ctermfg=237 guibg=#0f111b ctermbg=233 gui=NONE cterm=NONE
hi link TermCursor Cursor
hi ErrorMsg guifg=#e33400 ctermfg=166 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi VertSplit guifg=#000000 ctermfg=0 guibg=#000000 ctermbg=0 gui=NONE cterm=NONE
hi Folded guifg=#686f9a ctermfg=60 guibg=#0f111b ctermbg=233 gui=NONE cterm=NONE
hi FoldColumn guifg=#30365F ctermfg=237 guibg=#0f111b ctermbg=233 gui=NONE cterm=NONE
hi SignColumn guifg=#30365F ctermfg=237 guibg=#0f111b ctermbg=233 gui=NONE cterm=NONE
hi IncSearch guifg=#ffffff ctermfg=15 guibg=#30365F ctermbg=237 gui=NONE cterm=NONE
hi LineNr guifg=#30365F ctermfg=237 guibg=#0f111b ctermbg=233 gui=NONE cterm=NONE
hi MatchParen guifg=#ffffff ctermfg=15 guibg=#30365F ctermbg=237 gui=NONE cterm=NONE
hi ModeMsg guifg=#b3a1e6 ctermfg=146 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi MoreMsg guifg=#b3a1e6 ctermfg=146 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link NonText EndOfBuffer
hi Pmenu guifg=#ecf0c1 ctermfg=255 guibg=#1b1c36 ctermbg=234 gui=NONE cterm=NONE
hi PmenuSel guifg=#ffffff ctermfg=15 guibg=#30365F ctermbg=237 gui=NONE cterm=NONE
hi PmenuSbar guifg=NONE ctermfg=NONE guibg=#30365F ctermbg=237 gui=NONE cterm=NONE
hi PmenuThumb guifg=NONE ctermfg=NONE guibg=#686f9a ctermbg=60 gui=NONE cterm=NONE
hi Question guifg=#b3a1e6 ctermfg=146 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi QuickFixLine guifg=#ecf0c1 ctermfg=255 guibg=#16172d ctermbg=234 gui=NONE cterm=NONE
hi Search guifg=#ffffff ctermfg=15 guibg=#686f9a ctermbg=60 gui=NONE cterm=NONE
hi SpecialKey guifg=#e39400 ctermfg=172 guibg=#0f111b ctermbg=233 gui=NONE cterm=NONE
hi SpellBad guifg=#e33400 ctermfg=166 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi SpellLocal guifg=#ecf0c1 ctermfg=255 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi SpellCap guifg=#5ccc96 ctermfg=78 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi SpellRare guifg=#f2ce00 ctermfg=220 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi StatusLine guifg=#ecf0c1 ctermfg=255 guibg=#0f111b ctermbg=233 gui=reverse cterm=reverse
hi link StatusLineTerm StatusLine
hi StatusLineTermNC guifg=#000000 ctermfg=0 guibg=#30365F ctermbg=237 gui=reverse cterm=reverse
hi link StatusLineNC StatusLineTermNC
hi TabLine guifg=#000000 ctermfg=0 guibg=#818596 ctermbg=102 gui=NONE cterm=NONE
hi TabLineFill guifg=#818596 ctermfg=102 guibg=#000000 ctermbg=0 gui=NONE cterm=NONE
hi TabLineSel guifg=#c1c3cc ctermfg=251 guibg=#0f111b ctermbg=233 gui=NONE cterm=NONE
hi Visual guifg=NONE ctermfg=NONE guibg=#1b1c36 ctermbg=234 gui=NONE cterm=NONE
hi link VisualNOS Visual
hi WarningMsg guifg=#e39400 ctermfg=172 guibg=#0f111b ctermbg=233 gui=NONE cterm=NONE
hi WildMenu guifg=#000000 ctermfg=0 guibg=#c1c3cc ctermbg=251 gui=NONE cterm=NONE
hi link Whitespace EndOfBuffer
hi diffAdded guifg=#b3a1e6 ctermfg=146 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi diffRemoved guifg=#e33400 ctermfg=166 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Normal guifg=#ecf0c1 ctermfg=255 guibg=#0f111b ctermbg=233 gui=NONE cterm=NONE
hi Comment guifg=#30365F ctermfg=237 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Constant guifg=#f2ce00 ctermfg=220 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Identifier guifg=#00a3cc ctermfg=38 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Statement guifg=#5ccc96 ctermfg=78 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi PreProc guifg=#b3a1e6 ctermfg=146 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Type guifg=#ce6f8f ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Special guifg=#b3a1e6 ctermfg=146 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Underlined guifg=#5ccc96 ctermfg=78 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi Error guifg=#e33400 ctermfg=166 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Ignore guifg=#e33400 ctermfg=166 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Delimiter guifg=#ecf0c1 ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Operator guifg=#ce6f8f ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Tag guifg=#b3a1e6 ctermfg=146 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Debug guifg=#b3a1e6 ctermfg=146 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StorageClass guifg=#b3a1e6 ctermfg=146 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi String guifg=#00a3cc ctermfg=38 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Structure guifg=#00a3cc ctermfg=38 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Typedef guifg=#00a3cc ctermfg=38 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Function guifg=#5ccc96 ctermfg=78 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Include guifg=#5ccc96 ctermfg=78 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Label guifg=#5ccc96 ctermfg=78 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Exception guifg=#e39400 ctermfg=172 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Keyword guifg=#e39400 ctermfg=172 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi SpecialChar guifg=#e39400 ctermfg=172 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Boolean guifg=#f2ce00 ctermfg=220 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Character guifg=#f2ce00 ctermfg=220 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Float guifg=#f2ce00 ctermfg=220 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Number guifg=#f2ce00 ctermfg=220 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Conditional guifg=#5ccc96 ctermfg=78 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Repeat guifg=#5ccc96 ctermfg=78 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Title guifg=#7a5ccc ctermfg=98 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Define guifg=#7a5ccc ctermfg=98 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Macro guifg=#7a5ccc ctermfg=98 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi PreCondit guifg=#7a5ccc ctermfg=98 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link SpecialComment Comment
hi Todo guifg=#ffffff ctermfg=15 guibg=#686f9a ctermbg=60 gui=underline cterm=underline

hi Sneak guifg=#000000 ctermfg=0 guibg=#f2ce00 ctermbg=220 gui=NONE cterm=NONE
hi BufferCurrent guifg=#c1c3cc ctermfg=251 guibg=#0f111b ctermbg=233 gui=NONE cterm=NONE
hi BufferVisible guifg=#30365F ctermfg=237 guibg=#0f111b ctermbg=233 gui=NONE cterm=NONE
hi BufferInactive guifg=#30365F ctermfg=237 guibg=#0f111b ctermbg=233 gui=NONE cterm=NONE
hi BufferTabpageFill guifg=#0f111b ctermfg=233 guibg=#0f111b ctermbg=233 gui=NONE cterm=NONE
hi BufferCurrentIndex guifg=#5ccc96 ctermfg=78 guibg=#0f111b ctermbg=233 gui=NONE cterm=NONE
hi BufferVisibleIndex guifg=#30365F ctermfg=237 guibg=#0f111b ctermbg=233 gui=NONE cterm=NONE
hi BufferInactiveIndex guifg=#30365F ctermfg=237 guibg=#0f111b ctermbg=233 gui=NONE cterm=NONE
hi BufferCurrentMod guifg=#e39400 ctermfg=172 guibg=#0f111b ctermbg=233 gui=NONE cterm=NONE
hi BufferVisibleMod guifg=#e39400 ctermfg=172 guibg=#0f111b ctermbg=233 gui=NONE cterm=NONE
hi BufferInactiveMod guifg=#e39400 ctermfg=172 guibg=#0f111b ctermbg=233 gui=NONE cterm=NONE
hi BufferCurrentSign guifg=#5ccc96 ctermfg=78 guibg=#0f111b ctermbg=233 gui=NONE cterm=NONE
hi BufferVisibleSign guifg=#30365F ctermfg=237 guibg=#0f111b ctermbg=233 gui=NONE cterm=NONE
hi BufferInactiveSign guifg=#30365F ctermfg=237 guibg=#0f111b ctermbg=233 gui=NONE cterm=NONE
hi BufferCurrentTarget guifg=#ce6f8f ctermfg=168 guibg=#0f111b ctermbg=233 gui=NONE cterm=NONE
hi BufferVisibleTarget guifg=#ce6f8f ctermfg=168 guibg=#0f111b ctermbg=233 gui=NONE cterm=NONE
hi BufferInactiveTarget guifg=#ce6f8f ctermfg=168 guibg=#0f111b ctermbg=233 gui=NONE cterm=NONE
