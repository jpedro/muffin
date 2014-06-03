let colors_name="latte"
set background=light
set t_Co=256

hi clear
syntax on
syntax reset


"Named Colors
hi  ColorNone                   ctermfg=0          cterm=none
hi  ColorGray                   ctermfg=247        cterm=none
hi  ColorGrey                   ctermfg=247        cterm=bold
hi  ColorBold                   ctermfg=0          cterm=bold
hi  ColorBlue                   ctermfg=27         cterm=none

"Generic Groups
hi! link Normal                 ColorNone
hi! link Type                   ColorNone
hi! link Identifier             ColorNone
hi! link Function               ColorBold
hi! link Special                ColorNone
hi! link Statement              ColorNone
hi! link Keyword                ColorBold
hi! link PreProc                ColorBold
hi! link StorageClass           ColorBold
hi! link Structure              ColorBold
hi! link Exception              ColorBold
hi! link Comment                ColorGray
hi! link String                 ColorBlue
hi! link Number                 ColorBlue
hi! link Constant               ColorBlue
hi! link LineNr                 ColorGray
hi! link NonText                ColorGray
hi! link NonText                ColorBold
hi! link SpecialKey             ColorBold
hi! link ExtraSpaces            ColorError
hi! link MatchParen             ColorBoldRed
hi! link Todo                   ColorGray
hi! link Braces                 ColorNone
hi! link StatusLine             ColorOrangeOnNone
hi! link StatusLineNC           ColorDarkGrayOnNone
"hi!      User1                  term=inverse,bold cterm=inverse,bold ctermfg=Yellow
"hi!      ColorColumn            ctermbg=238
hi! link ColorColumn            BackColorGrayLight

"Specific Groups
hi! link vimFuncKey             ColorBold
hi! link vimCommand             ColorNone
hi! link vimHiBang              ColorBlue
hi! link vimOption              ColorBlue
hi! link vimHiCtermFgBg         ColorBlue
hi! link vimOper                ColorNone
hi! link netrwDir               ColorBlue
hi! link netrwExe               ColorGreen
hi! link netrwClassify          ColorGray
hi! link netrwSymLink           ColorBoldYellow
hi! link xmlEndTag              ColorBlue
hi! link phpMemberSelector      ColorNone
hi! link phpType                ColorMagenta
hi! link phpRegion              ColorBold
hi! link phpStatement           ColorBold
hi! link phpBoolean             ColorBold
hi! link phpStatement           ColorBold
hi! link phpIdentifier          ColorBold
hi! link phpVarSelector         ColorBold
hi! link phpArrayParens         ColorBold
hi! link phpSuperglobal         ColorBold
hi! link phpArrayPair           ColorNone
hi! link phpIntVar              ColorBold
hi! link phpSpecialFunction     ColorBold
hi! link phpConditional         ColorBold
hi! link phpRepeat              ColorBold
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
hi       clear                  SignColumn
