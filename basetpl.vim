set background=dark

highlight clear
if exists("syntax_on")
  syntax reset
endif

"source "~/.vim/colors/theme.vim"
exec "source " . expand('<sfile>:p:h') . "/theme.vim"

" Colours defs
let s:cgui00=gui00
let s:cgui01=gui0A
let s:cgui02=gui0B
let s:cgui03=gui08
let s:cgui04=gui0C
let s:cgui05=gui07
let s:cgui06=gui0D
let s:cgui07=gui0F

let s:cgui08=gui01
let s:cgui09=gui09
let s:cgui0A=gui03
let s:cgui0B=gui02
let s:cgui0C=gui06
let s:cgui0D=gui04
let s:cgui0E=gui05
let s:cgui0F=gui0E

" Terminal Base16 Color Definitions
" https://github.com/chriskempson/base16
let s:cterm00 = "00"
let s:cterm01 = "10"
let s:cterm02 = "11"
let s:cterm03 = "08"
let s:cterm04 = "12"
let s:cterm05 = "07"
let s:cterm06 = "13"
let s:cterm07 = "15"
let s:cterm08 = "01"
let s:cterm09 = "09"
let s:cterm0A = "03"
let s:cterm0B = "02"
let s:cterm0C = "06"
let s:cterm0D = "04"
let s:cterm0E = "05"
let s:cterm0F = "14"


" highlight function
" fun from https://github.com/chriskempson/base16
fun! <SID>hi(group, guifg, guibg, ctermfg, ctermbg, attr)
  if a:guifg != ""
    exec "hi " . a:group . " guifg=" . a:guifg
  endif
  if a:guibg != ""
    exec "hi " . a:group . " guibg=" . a:guibg
  endif
  if a:ctermfg != ""
    exec "hi " . a:group . " ctermfg=" . a:ctermfg
  endif
  if a:ctermbg != ""
    exec "hi " . a:group . " ctermbg=" . a:ctermbg
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
endfun

" common groups
" https://github.com/lifepillar/vim-colortemplate
hi! link Boolean Constant
hi! link Conditional Statement
hi! link CurSearch IncSearch
hi! link CursorLineFold FoldColumn
hi! link CursorLineSign SignColumn
hi! link Exception Statement
hi! link Float Constant
hi! link Macro PreProc
hi! link MessageWindow WarningMsg
hi! link Number Constant
hi! link QuickFixLine Search
hi! link StringDelimiter Delimiter
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link Tag Special
hi! link lCursor Cursor

" Editor settings
call <SID>hi("Normal", s:cgui05, s:cgui00, s:cterm05, s:cterm00, "")
call <SID>hi("Cursor", s:cgui00, s:cgui03, s:cterm05, "", "")
call <SID>hi("CursorLine", s:cgui01, "", s:cterm05, "", "")
call <SID>hi("LineNr", s:cgui03, s:cgui01, s:cterm03, s:cterm01, "")
call <SID>hi("CursorLineNR", s:cgui04, s:cgui01, s:cterm04, s:cterm01, "")

" - Number column -
call <SID>hi("CursorColumn", "", s:cgui01, "", s:cterm01, "none")
call <SID>hi("FoldColumn", s:cgui0C, s:cgui01, s:cterm0C, s:cterm01, "")
call <SID>hi("SignColumn", s:cgui03, s:cgui01, s:cterm03, s:cterm01, "")
call <SID>hi("Folded", s:cgui03, s:cgui01, s:cterm03, s:cterm01, "")

" - Window/Tab delimiters - 
call <SID>hi("VertSplit", s:cgui02, s:cgui02, s:cterm02, s:cterm02, "")
call <SID>hi("ColorColumn", "", s:cgui01, "", s:cterm01, "none")
call <SID>hi("TabLine", s:cgui03, s:cgui01, s:cterm03, s:cterm01, "reverse")
call <SID>hi("TabLineFill", s:cgui06, s:cgui01, s:cterm06, s:cterm01, "reverse")
call <SID>hi("TabLineSel", s:cgui0B, s:cgui01, s:cterm0B, s:cterm01, "reverse")

" - File Navigation / Searching -
call <SID>hi("Directory", s:cgui0D, "", s:cterm0D, "", "")
call <SID>hi("Search", s:cgui01, s:cgui0A, s:cterm01, s:cterm0A, "reverse")
call <SID>hi("IncSearch", s:cgui01, s:cgui09, s:cterm01, s:cterm09, "")

" - Prompt/Status -
call <SID>hi("StatusLine", s:cgui04, s:cgui02, s:cterm04, s:cterm02, "none")
call <SID>hi("StatusLineNC", s:cgui03, s:cgui01, s:cterm03, s:cterm01, "none")
call <SID>hi("WildMenu", s:cgui08, s:cgui0A, s:cterm08, s:cterm0A, "")
call <SID>hi("Question", s:cgui0D, "", s:cterm0D, "", "")
call <SID>hi("Title", s:cgui0D, "", s:cterm0D, "", "")  
call <SID>hi("ModeMsg", s:cgui0B, "", s:cterm0B, "", "")
call <SID>hi("MoreMsg", s:cgui0B, "", s:cterm0B, "", "")

" - Visual aid -
call <SID>hi("MatchParen", s:cgui0A, s:cgui01, s:cterm0A, s:cterm01, "reverse")
call <SID>hi("Visual", "", s:cgui02, "", s:cterm02, "")
call <SID>hi("VisualNOS", s:cgui08, "", s:cterm08, "", "")
call <SID>hi("NonText", s:cgui03, "", s:cterm03, "", "")

call <SID>hi("Todo", s:cgui0A, s:cgui01, s:cterm0A, s:cterm01, "")
call <SID>hi("Bold", "", "", "", "", "bold")
call <SID>hi("Underlined", s:cgui08, "", s:cterm08, "", "underline")
call <SID>hi("Error", s:cgui00, s:cgui08, s:cterm08, s:cterm00,"bold")
call <SID>hi("ErrorMsg", s:cgui08, s:cgui00, s:cterm08, s:cterm00,"bold")
call <SID>hi("WarningMsg", s:cgui08, "", s:cterm08, "", "")
"call <SID>hi("Ignore", "", "", "", "", "")
call <SID>hi("SpecialKey", s:cgui08, "", s:cterm08, "", "")

" Variable types
call <SID>hi("Constant", s:cgui09, "", s:cterm09, "", "")
call <SID>hi("String", s:cgui0B, "", s:cterm0B, "", "")
call <SID>hi("Character", s:cgui08, "", s:cterm08, "", "")

call <SID>hi("Identifier", s:cgui08, "", s:cterm08, "", "none")
call <SID>hi("Function", s:cgui0D, "", s:cterm0D, "", "")

" Language constructs
call <SID>hi("Statement", s:cgui08, "", s:cterm08, "", "")
call <SID>hi("Repeat", s:cgui0A, "", s:cterm0A, "", "")
call <SID>hi("Label", s:cgui0A, "", s:cterm0A, "", "")
call <SID>hi("Operator", s:cgui05, "", s:cterm05, "", "none")
call <SID>hi("Keyword", s:cgui0E, "", s:cterm0E, "", "")
call <SID>hi("Comment", s:cgui0C, "", s:cterm0C, "", "")

call <SID>hi("Special", s:cgui0A, "", s:cterm0A, "", "")
call <SID>hi("SpecialChar", s:cgui0F, "", s:cterm0F, "", "")
call <SID>hi("Delimiter", s:cgui0F, "", s:cterm0F, "", "")
"call <SID>hi("SpecialComment", s:cgui0)
call <SID>hi("Debug", s:cgui08, "", s:cterm08, "", "")

" - C like -
call <SID>hi("PreProc", s:cgui0A, "", s:cterm0A, "", "")
call <SID>hi("Include", s:cgui0D, "", s:cterm0D, "", "")
call <SID>hi("Define", s:cgui0E, "", s:cterm0E, "", "none")
call <SID>hi("PreCondit", s:cgui0E, "", s:cterm0E, "", "")

call <SID>hi("Type", s:cgui08, "", s:cterm08, "", "none")
call <SID>hi("StorageClass", s:cgui0A, "", s:cterm0A, "", "")
call <SID>hi("Structure", s:cgui0E, "", s:cterm0E, "", "")
call <SID>hi("Typedef", s:cgui0A, "", s:cterm0A, "", "")

" Diff
call <SID>hi("DiffAdd", s:cgui0B, s:cgui01, s:cterm0B, s:cterm01, "")
call <SID>hi("DiffChange", s:cgui03, s:cgui01, s:cterm03, s:cterm01, "")
call <SID>hi("DiffDelete", s:cgui08, s:cgui01, s:cterm08, s:cterm01, "")
call <SID>hi("DiffText", s:cgui0D, s:cgui01, s:cterm0D, s:cterm01, "")

" Git highlighting
call <SID>hi("Header", s:cgui0E, "", s:cterm0E, "", "")
call <SID>hi("Branch", s:cgui09, "", s:cterm09, "", "")
call <SID>hi("Summary",s:cgui0B, "", s:cterm0B, "", "")
call <SID>hi("Untracked", s:cgui03, "", s:cterm03, "", "")
call <SID>hi("Discarded", s:cgui03, "", s:cterm03, "", "")

" Completion menu
call <SID>hi("Pmenu", s:cgui05, s:cgui01, s:cterm05, s:cterm01, "none")
call <SID>hi("PmenuSel", s:cgui01, s:cgui05, s:cterm05, s:cterm01, "reverse")
"call <SID>hi("PmenuSbar", s:cgui0)
"call <SID>hi("PmenuThumb", s:cgui0)

" Spelling
call <SID>hi("SpellBad", s:cgui00, s:cgui08, s:cterm00, s:cterm08, "undercurl")
call <SID>hi("SpellCap", s:cgui00, s:cgui08, s:cterm00, s:cterm08, "undercurl")
call <SID>hi("SpellLocal", s:cgui00, s:cgui08, s:cterm00, s:cterm08, "undercurl")
call <SID>hi("SpellRare", s:cgui00, s:cgui08, s:cterm00, s:cterm08, "undercurl")
