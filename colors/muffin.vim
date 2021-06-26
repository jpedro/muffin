let colors_name="muffin"
set background=dark
set t_Co=256

hi clear
syntax on
syntax reset
syntax match nonAscii "[^\x00-\x7F]"


"Named Colors
hi  ColorNone                   ctermfg=255        cterm=none
"hi  ColorGray                   ctermfg=239        cterm=none
hi  ColorGray                   ctermfg=238        cterm=none
hi  ColorGrayLight              ctermfg=241        cterm=none
hi  ColorBlue                   ctermfg=68         cterm=none
hi  ColorYellow                 ctermfg=11         cterm=none
hi  ColorRed                    ctermfg=9          cterm=none
hi  ColorBrown                  ctermfg=245        cterm=none
hi  ColorGreen                  ctermfg=118        cterm=none
hi  ColorPink                   ctermfg=198        cterm=none
hi  ColorMagenta                ctermfg=168        cterm=none
hi  ColorOrange                 ctermfg=208        cterm=none
hi  ColorPurple                 ctermfg=147        cterm=none
hi  ColorBoldPurple             ctermfg=147        cterm=bold
hi  ColorBoldRed                ctermfg=9          cterm=bold
hi  ColorBoldYellow             ctermfg=11         cterm=bold
hi  ColorWhiteOnRed             ctermfg=255        cterm=none          ctermbg=14
hi  ColorOrangeOnNone           ctermfg=208        cterm=none
hi  ColorBoldOrangeOnNone       ctermfg=208        cterm=bold          ctermbg=none
hi  ColorDarkGrayOnNone         ctermfg=239        cterm=none          ctermbg=none
hi  ColorInverseRed             ctermfg=Red        cterm=inverse,bold
hi  BackColorGrayLight          ctermbg=236        cterm=none
hi  ColorAlert                  ctermbg=196        cterm=bold


"Generic Groups
hi! link Normal                 ColorNone
hi! link Type                   ColorNone
hi! link Identifier             ColorNone
hi! link Function               ColorBlue
hi! link Special                ColorNone
hi! link Statement              ColorNone
hi! link Keyword                ColorBlue
hi! link PreProc                ColorBlue
hi! link StorageClass           ColorBlue
hi! link Structure              ColorBlue
hi! link Exception              ColorBlue
hi! link Comment                ColorGray
hi! link String                 ColorYellow
hi! link Number                 ColorGreen
hi! link Constant               ColorMagenta
hi! link NonText                ColorGray
hi! link NonText                ColorMagenta
hi! link SpecialKey             ColorMagenta
hi! link ExtraSpaces            ColorError
hi! link MatchParen             ColorBoldRed
hi! link Todo                   ColorGray
hi! link Braces                 ColorNone
hi! link StatusLine             ColorOrangeOnNone
hi! link StatusLineNC           ColorDarkGrayOnNone
hi! link ColorColumn            BackColorGrayLight

hi! LineNr                      cterm=None  ctermbg=None  ctermfg=239
hi! CursorLine                  cterm=None  ctermbg=236   ctermfg=None
hi! CursorLineNR                cterm=bold  ctermbg=None  ctermfg=255
"hi!      User1                  term=inverse,bold cterm=inverse,bold ctermfg=Yellow


"Specific Groups
hi! link vimFuncKey             ColorBlue
hi! link vimCommand             ColorBlue
hi! link vimHiBang              ColorBlue
hi! link vimOption              ColorBrown
hi! link vimHiCtermFgBg         ColorBrown
hi! link vimOper                ColorGray
hi! link netrwDir               ColorBlue
hi! link netrwExe               ColorGreen
hi! link netrwClassify          ColorGray
hi! link netrwSymLink           ColorBoldYellow
hi! link xmlEndTag              ColorBlue
hi! link phpMemberSelector      ColorNone
hi! link phpType                ColorMagenta
hi! link phpRegion              ColorBlue
hi! link phpStatement           ColorGreen
hi! link phpBoolean             ColorMagenta
hi! link phpStatement           ColorBlue
hi! link phpIdentifier          ColorBlue
hi! link phpVarSelector         ColorBlue
hi! link phpArrayParens         ColorBlue
hi! link phpSuperglobal         ColorBlue
hi! link phpArrayPair           ColorNone
hi! link phpIntVar              ColorBlue
hi! link phpSpecialFunction     ColorBlue
hi! link phpConditional         ColorBlue
hi! link phpRepeat              ColorBlue
hi! link javaScriptNumber       ColorGreen
hi! link javaScriptBraces       ColorNone
hi! link javaScriptIdentifier   ColorBlue
hi! link javaScriptStatement    ColorBlue
hi! link javaScriptMessage      ColorNone
hi! link javaScriptNull         ColorMagenta
hi! link javaScriptLabel        ColorBlue
hi! link javaScriptBranch       ColorBlue
hi! link javaScriptConditional  ColorBlue
hi! link javaScriptRepeat       ColorBlue
hi! link mustacheSection        ColorBlue
hi! link mustacheVariable       ColorBlue
hi! link mustacheMarker         ColorGreen
hi! link htmlTag                ColorBlue
hi! link htmlEndTag             ColorBlue
hi! link htmlTagName            ColorBlue
hi! link htmlArg                ColorNone
"hi! link makeCommands           ColorBrown
hi! link cppStatement           ColorBlue
hi! link cType                  ColorGreen
hi! link sqlStatement           ColorMagenta
hi! link sqlKeyword             ColorMagenta
hi! link nonAscii               ColorAlert

hi       clear                  SignColumn
