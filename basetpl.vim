highlight clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "basetpl"
set background=dark

"source "~/.vim/colors/theme.vim"
exec "source " . expand('<sfile>:p:h') . "/theme.vim"


" Colours defs
let s:cgui00=gui00
let s:cgui01=gui01
let s:cgui02=gui02
let s:cgui03=gui03
let s:cgui04=gui04
let s:cgui05=gui05
let s:cgui06=gui06
let s:cgui07=gui07
let s:cgui08=gui08
let s:cgui09=gui09
let s:cgui0A=gui0A
let s:cgui0B=gui0B
let s:cgui0C=gui0C
let s:cgui0D=gui0D
let s:cgui0F=gui0F
let s:cgui0E=gui0E

" Terminal Base16 Color Definitions
let s:cterm00="00"
let s:cterm01="01"
let s:cterm02="02"
let s:cterm03="03"
let s:cterm04="04"
let s:cterm05="05"
let s:cterm06="06"
let s:cterm07="07"
let s:cterm08="08"
let s:cterm09="09"
let s:cterm0A="10"
let s:cterm0B="11"
let s:cterm0D="12"
let s:cterm0D="13"
let s:cterm0E="14"
let s:cterm0F="15"


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
call <SID>hi("Normal", s:cgui07, s:cgui00, s:cterm07, s:cterm00, "")
call <SID>hi("Cursor", s:cgui07, s:cgui08, s:cterm07, s:cterm08, "")
call <SID>hi("CursorLine", s:cgui0A, "", s:cterm07, "", "")
call <SID>hi("LineNr", s:cgui08, s:cgui0A, s:cterm08, s:cterm0A, "")
call <SID>hi("CursorLineNR", s:cgui0C, s:cgui0A, s:cterm0D, s:cterm0A, "")

" - Number column -
call <SID>hi("CursorColumn", "", s:cgui0A, "", s:cterm0A, "none")
call <SID>hi("FoldColumn", s:cgui06, s:cgui0A, s:cterm06, s:cterm0A, "")
call <SID>hi("SignColumn", s:cgui08, s:cgui0A, s:cterm08, s:cterm0A, "")
call <SID>hi("Folded", s:cgui08, s:cgui0A, s:cterm08, s:cterm0A, "")

" - Window/Tab delimiters - 
call <SID>hi("VertSplit", s:cgui0B, s:cgui0B, s:cterm0B, s:cterm0B, "")
call <SID>hi("ColorColumn", "", s:cgui0A, "", s:cterm0A, "none")
call <SID>hi("TabLine", s:cgui08, s:cgui0A, s:cterm08, s:cterm0A, "reverse")
call <SID>hi("TabLineFill", s:cgui0D, s:cgui0A, s:cterm0D, s:cterm0A, "reverse")
call <SID>hi("TabLineSel", s:cgui02, s:cgui0A, s:cterm02, s:cterm0A, "reverse")

" - File Navigation / Searching -
call <SID>hi("Directory", s:cgui04, "", s:cterm04, "", "")
call <SID>hi("Search", s:cgui0A, s:cgui00, s:cterm0A, s:cterm03, "reverse")
call <SID>hi("IncSearch", s:cgui01, s:cgui08, s:cterm01, s:cterm08, "")

" - Prompt/Status -
call <SID>hi("StatusLine", s:cgui00, s:cgui02, s:cterm00, s:cterm02, "none")
call <SID>hi("StatusLineNC", s:cgui08, s:cgui02, s:cterm08, s:cterm02, "none")
call <SID>hi("WildMenu", s:cgui01, s:cgui03, s:cterm01, s:cterm03, "")
call <SID>hi("Question", s:cgui04, "", s:cterm04, "", "")
call <SID>hi("Title", s:cgui04, "", s:cterm04, "", "")  
call <SID>hi("ModeMsg", s:cgui02, "", s:cterm02, "", "")
call <SID>hi("MoreMsg", s:cgui02, "", s:cterm02, "", "")

" - Visual aid -
call <SID>hi("MatchParen", s:cgui04, s:cgui0F, s:cterm04, s:cterm0F, "reverse")
call <SID>hi("Visual", s:cgui0F, s:cgui08, s:cterm0F, s:cterm08, "")
call <SID>hi("VisualNOS", s:cgui01, "", s:cterm01, "", "")
call <SID>hi("NonText", s:cgui08, "", s:cterm08, "", "")

call <SID>hi("Todo", s:cgui03, s:cgui0A, s:cterm03, s:cterm0A, "")
call <SID>hi("Bold", "", "", "", "", "bold")
call <SID>hi("Underlined", s:cgui01, "", s:cterm01, "", "underline")
call <SID>hi("Error", s:cgui00, s:cgui01, s:cterm01, s:cterm00,"bold")
call <SID>hi("ErrorMsg", s:cgui01, s:cgui00, s:cterm01, s:cterm00,"bold")
call <SID>hi("WarningMsg", s:cgui01, s:cgui00, s:cterm01, s:cterm00, "")
"call <SID>hi("Ignore", "", "", "", "", "")
call <SID>hi("SpecialKey", s:cgui01, "", s:cterm01, "", "")

" Variable types
call <SID>hi("Constant", s:cgui09, "", s:cterm09, "", "")
call <SID>hi("String", s:cgui02, "", s:cterm02, "", "")
call <SID>hi("Character", s:cgui01, "", s:cterm01, "", "")

call <SID>hi("Identifier", s:cgui01, "", s:cterm01, "", "none")
call <SID>hi("Function", s:cgui04, "", s:cterm04, "", "")

" Language constructs
call <SID>hi("Statement", s:cgui01, "", s:cterm01, "", "")
call <SID>hi("Repeat", s:cgui03, "", s:cterm03, "", "")
call <SID>hi("Label", s:cgui03, "", s:cterm03, "", "")
call <SID>hi("Operator", s:cgui07, "", s:cterm07, "", "none")
call <SID>hi("Keyword", s:cgui05, "", s:cterm05, "", "")
call <SID>hi("Comment", s:cgui06, "", s:cterm06, "", "")

call <SID>hi("Special", s:cgui03, "", s:cterm03, "", "")
call <SID>hi("SpecialChar", s:cgui0E, "", s:cterm0E, "", "")
call <SID>hi("Delimiter", s:cgui0E, "", s:cterm0E, "", "")
"call <SID>hi("SpecialComment", s:cgui0)T
call <SID>hi("Debug", s:cgui01, "", s:cterm01, "", "")

" - C like -
call <SID>hi("PreProc", s:cgui03, "", s:cterm03, "", "")
call <SID>hi("Include", s:cgui04, "", s:cterm04, "", "")
call <SID>hi("Define", s:cgui05, "", s:cterm05, "", "none")
call <SID>hi("PreCondit", s:cgui05, "", s:cterm05, "", "")

call <SID>hi("Type", s:cgui01, "", s:cterm01, "", "none")
call <SID>hi("StorageClass", s:cgui03, "", s:cterm03, "", "")
call <SID>hi("Structure", s:cgui05, "", s:cterm05, "", "")
call <SID>hi("Typedef", s:cgui03, "", s:cterm03, "", "")

" Diff
call <SID>hi("DiffAdd", s:cgui02, s:cgui0A, s:cterm02, s:cterm0A, "")
call <SID>hi("DiffChange", s:cgui08, s:cgui0A, s:cterm08, s:cterm0A, "")
call <SID>hi("DiffDelete", s:cgui01, s:cgui0A, s:cterm01, s:cterm0A, "")
call <SID>hi("DiffText", s:cgui04, s:cgui0A, s:cterm04, s:cterm0A, "")

" Git highlighting
call <SID>hi("Header", s:cgui05, "", s:cterm05, "", "")
call <SID>hi("Branch", s:cgui09, "", s:cterm09, "", "")
call <SID>hi("Summary",s:cgui02, "", s:cterm02, "", "")
call <SID>hi("Untracked", s:cgui08, "", s:cterm08, "", "")
call <SID>hi("Discarded", s:cgui08, "", s:cterm08, "", "")

" Completion menu
call <SID>hi("Pmenu", s:cgui07, s:cgui0A, s:cterm07, s:cterm0A, "none")
call <SID>hi("PmenuSel", s:cgui0A, s:cgui07, s:cterm07, s:cterm0A, "reverse")
"call <SID>hi("PmenuSbar", s:cgui0)T
"call <SID>hi("PmenuThumb", s:cgui0)T

" Spelling
call <SID>hi("SpellBad", s:cgui00, s:cgui01, s:cterm00, s:cterm01, "undercurl")
call <SID>hi("SpellCap", s:cgui00, s:cgui01, s:cterm00, s:cterm01, "undercurl")
call <SID>hi("SpellLocal", s:cgui00, s:cgui01, s:cterm00, s:cterm01, "undercurl")
call <SID>hi("SpellRare", s:cgui00, s:cgui01, s:cterm00, s:cterm01, "undercurl")
