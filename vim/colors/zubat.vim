" Maintainer:	Lars Nielsen (dengmao@gmail.com)
" Last Change:	January 22 2007
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let colors_name = "zubat"
" Vim >= 7.0 specific colors
if version >= 700
  hi CursorLine guibg=#2d2d2d
  hi CursorColumn guibg=#2d2d2d
  hi MatchParen guifg=#f6f3e8 guibg=#857b6f gui=bold
  hi Pmenu 		guifg=#f6f3e8 guibg=#444444
  hi PmenuSel 	guifg=#000000 guibg=#cae682
endif
" General colors
hi Cursor 		guifg=NONE    guibg=#656565 gui=none
hi Normal 		guifg=#f6f3e8 guibg=#242424 gui=none
hi NonText 		guifg=#808080 guibg=#303030 gui=none
hi LineNr 		guifg=#857b6f guibg=#000000 gui=none
hi StatusLine 	guifg=#f6f3e8 guibg=#444444 gui=italic
hi StatusLineNC guifg=#857b6f guibg=#444444 gui=none
hi VertSplit 	guifg=#444444 guibg=#444444 gui=none
hi Folded 		guibg=#384048 guifg=#a0a8b0 gui=none
hi Title		guifg=#f6f3e8 guibg=NONE	gui=bold
hi Visual		guifg=#f6f3e8 guibg=#444444 gui=none
hi SpecialKey	guifg=#808080 guibg=#343434 gui=none
" Syntax highlighting
hi Keyword ctermfg=111 cterm=none guifg=#88b8f6 gui=none
hi Statement ctermfg=111 cterm=none guifg=#88b8f6 gui=none
hi Constant ctermfg=173 cterm=none guifg=#e5786d gui=none
hi Number ctermfg=173 cterm=none guifg=#e5786d gui=none
hi PreProc ctermfg=173 cterm=none guifg=#e5786d gui=none
hi Function ctermfg=192 cterm=none guifg=#cae982 gui=none
hi Identifier ctermfg=192 cterm=none guifg=#cae982 gui=none
hi Type ctermfg=186 cterm=none guifg=#d4d987 gui=none
hi Special ctermfg=229 cterm=none guifg=#eadead gui=none
hi String ctermfg=113 cterm=none guifg=#95e454 gui=none
hi Comment ctermfg=246 cterm=none guifg=#9c998e gui=none
hi Todo ctermfg=101 cterm=none guifg=#857b6f gui=none
