syntax on
color default
set title
set number
set nowrap
set novisualbell
set noerrorbells
set expandtab
set shiftwidth=4
set tabstop=4
set ignorecase
set smartcase
set autoindent
set smartindent
set incsearch
set hlsearch
set hidden
set noswapfile
set noesckeys
set ttimeoutlen=50
set wildmenu
set wildmode=longest:full,full
set scrolloff=5
hi CursorLine cterm=none ctermbg=darkgrey ctermfg=none
hi LineNr cterm=none ctermbg=none ctermfg=lightgrey
hi CursorLineNr cterm=none ctermbg=none ctermfg=red
hi VertSplit cterm=none
hi Visual cterm=reverse
hi Search cterm=underline ctermbg=none ctermfg=red
hi IncSearch cterm=underline ctermbg=none ctermfg=red
hi MatchParen cterm=underline ctermbg=none ctermfg=none
hi WildMenu cterm=none ctermbg=blue ctermfg=black
hi TabLineSel cterm=none ctermbg=blue ctermfg=black
hi TabLine cterm=none ctermbg=cyan ctermfg=black
hi TabLineFill cterm=none ctermbg=cyan ctermfg=none
hi StatusLine cterm=none ctermbg=cyan ctermfg=black
hi User1 cterm=none ctermbg=blue ctermfg=black
set laststatus=2
set statusline=%1*\ %F%{getbufvar(bufnr('%'),'&mod')?'*':''}\ %*%r%=%1*\ Ln\ %l,\ Col\ %c\ \ %{&fenc}\ \ %{&ff}\ \ %{&ft}\  
set cursorline
set path=.,,**
set suffixesadd=.js,.css,.html,.py,.sh,.md
