" -----------------------------------------------------------
" File: forest.vim
" Description: Greenish color scheme for Vim
" Author: nikolas <vargasnikolass@gmail.com>
" Source: https://github.com/nikolasvargas/forest
" -----------------------------------------------------------

scriptencoding utf-8

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="forest"

if &t_Co >= 256
    let g:forest_term256=1
elseif !exists("g:forest_term256")
    let g:forest_term256=0
endif
fun! <sid>hi(group, fg, bg, attr, sp)
  if !empty(a:fg)
    exec "hi " . a:group . " guifg=" . a:fg.gui . " ctermfg=" . (g:forest_term256 ? a:fg.cterm256 : a:fg.cterm)
  endif
  if !empty(a:bg)
    exec "hi " . a:group . " guibg=" . a:bg.gui . " ctermbg=" . (g:forest_term256 ? a:bg.cterm256 : a:bg.cterm)
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
  if !empty(a:sp)
    exec "hi " . a:group . " guisp=" . a:sp.gui
  endif
endfun

" ------------------
" Color definitions:
" ------------------

" Terminal colors (base16):
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
if exists('base16colorspace') && base16colorspace == "256"
  let s:cterm01 = "18"
  let s:cterm02 = "19"
  let s:cterm04 = "20"
  let s:cterm06 = "21"
  let s:cterm09 = "16"
  let s:cterm0F = "17"
else
  let s:cterm01 = "00"
  let s:cterm02 = "08"
  let s:cterm04 = "07"
  let s:cterm06 = "07"
  let s:cterm09 = "06"
  let s:cterm0F = "03"
endif

" General appearance colors:
" (some of them may be unused)

" None
let s:cdNone = {'gui': 'NONE', 'cterm': 'NONE', 'cterm256': 'NONE'}
" Normal text f8efd8
let s:cdFront = {'gui': '#dfd7c2', 'cterm': s:cterm05, 'cterm256': '188'}
" Background #001816 #192f2d **062122 *072627
let s:cdBack = {'gui': '#072627', 'cterm': s:cterm00, 'cterm256': '234'}
" Comment #00cd2a
let s:cdGreen = {'gui': '#4cdc69', 'cterm': s:cterm0B, 'cterm256': '65'}
" String assign
let s:cdOrange = {'gui': '#99eba9', 'cterm': s:cterm0F, 'cterm256': '173'}
" statements and functions #9dbda1
let s:cdMainlyGreen = {'gui': '#ccf5d4', 'cterm': s:cterm0D, 'cterm256': '75'}

let s:cdTabCurrent = {'gui': '#1E1E1E', 'cterm': s:cterm00, 'cterm256': '234'}
let s:cdTabOther = {'gui': '#2D2D2D', 'cterm': s:cterm01, 'cterm256': '236'}
let s:cdTabOutside = {'gui': '#252526', 'cterm': s:cterm01, 'cterm256': '235'}

let s:cdLeftDark = {'gui': '#252526', 'cterm': s:cterm01, 'cterm256': '235'}
" 373737
let s:cdLeftMid = {'gui': '#604f3b', 'cterm': s:cterm03, 'cterm256': '237'}
let s:cdLeftLight = {'gui': '#3F3F46', 'cterm': s:cterm03, 'cterm256': '238'}

let s:cdPopupFront = {'gui': '#BBBBBB', 'cterm': s:cterm06, 'cterm256': '250'}
let s:cdPopupBack = {'gui': '#053230', 'cterm': s:cterm01, 'cterm256': '236'}
let s:cdPopupHighlightBlue = {'gui': '#073655', 'cterm': s:cterm0D, 'cterm256': '24'}
let s:cdPopupHighlightGray = {'gui': '#3D3D40', 'cterm': s:cterm03, 'cterm256': '237'}

let s:cdSplitDark = {'gui': '#444444', 'cterm': s:cterm03, 'cterm256': '238'}

let s:cdCursorDarkDark = {'gui': '#222222', 'cterm': s:cterm01, 'cterm256': '235'}
let s:cdCursorDark = {'gui': '#51504F', 'cterm': s:cterm03, 'cterm256': '239'}
let s:cdCursorLight = {'gui': '#AEAFAD', 'cterm': s:cterm04, 'cterm256': '145'}
let s:cdSelection = {'gui': '#264F78', 'cterm': s:cterm03, 'cterm256': '24'}
let s:cdLineNumber = {'gui': '#A08563', 'cterm': s:cterm04, 'cterm256': '240'}

let s:cdDiffRedDark = {'gui': '#4B1818', 'cterm': s:cterm08, 'cterm256': '52'}
let s:cdDiffRedLight = {'gui': '#6F1313', 'cterm': s:cterm08, 'cterm256': '52'}
let s:cdDiffGreenDark = {'gui': '#373D29', 'cterm': s:cterm0B, 'cterm256': '237'}

let s:cdSearchCurrent = {'gui': '#4B5632', 'cterm': s:cterm09, 'cterm256': '58'}
let s:cdSearch = {'gui': '#264F78', 'cterm': s:cterm03, 'cterm256': '24'}

" Syntax colors:
let s:cdGray = {'gui': '#808080', 'cterm': s:cterm04, 'cterm256': '08'}
let s:cdBlueGreen = {'gui': '#4EC9B0', 'cterm': s:cterm0F, 'cterm256': '43'}
let s:cdLightGreen = {'gui': '#B5CEA8', 'cterm': s:cterm09, 'cterm256': '151'}
let s:cdRed = {'gui': '#F44747', 'cterm': s:cterm08, 'cterm256': '203'}
let s:cdLightRed = {'gui': '#D16969', 'cterm': s:cterm08, 'cterm256': '167'}
let s:cdYellowOrange = {'gui': '#D7BA7D', 'cterm': s:cterm0A, 'cterm256': '179'}
let s:cdYellow = {'gui': '#DCDCAA', 'cterm': s:cterm0A, 'cterm256': '187'}

" Vim editor colors
"    <sid>hi(GROUP, FOREGROUND, BACKGROUND, ATTRIBUTE, SPECIAL)
call <sid>hi('Normal', s:cdFront, s:cdBack, 'none', {})
call <sid>hi('ColorColumn', {}, s:cdNone, 'none', {})
call <sid>hi('Cursor', s:cdCursorDark, s:cdCursorLight, 'none', {})
call <sid>hi('CursorLine', {}, s:cdCursorDarkDark, 'none', {})
call <sid>hi('CursorColumn', {}, s:cdCursorDarkDark, 'none', {})
call <sid>hi('Directory', s:cdMainlyGreen, s:cdBack, 'none', {})
call <sid>hi('DiffAdd', {}, s:cdDiffGreenDark, 'none', {})
call <sid>hi('DiffChange', {}, s:cdDiffRedDark, 'none', {})
call <sid>hi('DiffDelete', {}, s:cdDiffRedLight, 'none', {})
call <sid>hi('DiffText', {}, s:cdDiffRedLight, 'none', {})
call <sid>hi('EndOfBuffer', s:cdLineNumber, s:cdBack, 'none', {})
call <sid>hi('ErrorMsg', s:cdRed, s:cdBack, 'none', {})
call <sid>hi('VertSplit', s:cdSplitDark, s:cdBack, 'none', {})
call <sid>hi('Folded', s:cdLeftLight, s:cdLeftDark, 'underline', {})
call <sid>hi('FoldColumn', s:cdLineNumber, s:cdBack, 'none', {})
call <sid>hi('SignColumn', {}, s:cdBack, 'none', {})
call <sid>hi('IncSearch', s:cdNone, s:cdSearchCurrent, 'none', {})
call <sid>hi('LineNr', s:cdLineNumber, s:cdBack, 'none', {})
call <sid>hi('CursorLineNr', s:cdPopupFront, s:cdBack, 'none', {})
call <sid>hi('MatchParen', s:cdNone, s:cdCursorDark, 'none', {})
call <sid>hi('ModeMsg', s:cdFront, s:cdLeftDark, 'none', {})
call <sid>hi('MoreMsg', s:cdFront, s:cdLeftDark, 'none', {})
call <sid>hi('NonText', s:cdLineNumber, s:cdBack, 'none', {})
call <sid>hi('Pmenu', s:cdPopupFront, s:cdPopupBack, 'none', {})
call <sid>hi('PmenuSel', s:cdPopupFront, s:cdPopupHighlightBlue, 'none', {})
call <sid>hi('PmenuSbar', {}, s:cdPopupHighlightGray, 'none', {})
call <sid>hi('PmenuThumb', {}, s:cdPopupFront, 'none', {})
call <sid>hi('Question', s:cdMainlyGreen, s:cdBack, 'none', {})
call <sid>hi('Search', s:cdNone, s:cdSearch, 'none', {})
call <sid>hi('SpecialKey', s:cdMainlyGreen, s:cdNone, 'none', {})
call <sid>hi('StatusLine', s:cdFront, s:cdLeftMid, 'none', {})
call <sid>hi('StatusLineNC', s:cdFront, s:cdLeftDark, 'none', {})
call <sid>hi('TabLine', s:cdFront, s:cdTabOther, 'none', {})
call <sid>hi('TabLineFill', s:cdFront, s:cdTabOutside, 'none', {})
call <sid>hi('TabLineSel', s:cdFront, s:cdTabCurrent, 'none', {})
call <sid>hi('Title', s:cdNone, s:cdNone, 'bold', {})
call <sid>hi('Visual', s:cdNone, s:cdSelection, 'none', {})
call <sid>hi('VisualNOS', s:cdNone, s:cdSelection, 'none', {})
call <sid>hi('WarningMsg', s:cdOrange, s:cdBack, 'none', {})
call <sid>hi('WildMenu', s:cdNone, s:cdSelection, 'none', {})

call <sid>hi('Comment', s:cdGreen, {}, 'none', {})

call <sid>hi('Constant', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('String', s:cdOrange, {}, 'none', {})
call <sid>hi('Character', s:cdOrange, {}, 'none', {})
call <sid>hi('Number', s:cdLightGreen, {}, 'none', {})
call <sid>hi('Boolean', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('Float', s:cdLightGreen, {}, 'none', {})

call <sid>hi('Identifier', s:cdFront, {}, 'none', {})
call <sid>hi('Function', s:cdYellow, {}, 'none', {})

call <sid>hi('Statement', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('Conditional', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('Repeat', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('Label', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('Operator', s:cdFront, {}, 'none', {})
call <sid>hi('Keyword', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('Exception', s:cdMainlyGreen, {}, 'none', {})

call <sid>hi('PreProc', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('Include', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('Define', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('Macro', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('PreCondit', s:cdMainlyGreen, {}, 'none', {})

call <sid>hi('Type', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('StorageClass', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('Structure', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('Typedef', s:cdMainlyGreen, {}, 'none', {})

call <sid>hi('Special', s:cdYellowOrange, {}, 'none', {})
call <sid>hi('SpecialChar', s:cdFront, {}, 'none', {})
call <sid>hi('Tag', s:cdFront, {}, 'none', {})
call <sid>hi('Delimiter', s:cdFront, {}, 'none', {})
call <sid>hi('SpecialComment', s:cdGreen, {}, 'none', {})
call <sid>hi('Debug', s:cdFront, {}, 'none', {})

call <sid>hi('Underlined', s:cdNone, {}, 'underline', {})
call <sid>hi("Conceal", s:cdFront, s:cdBack, 'none', {})

call <sid>hi('Ignore', s:cdFront, {}, 'none', {})

call <sid>hi('Error', s:cdRed, s:cdBack, 'undercurl', s:cdRed)

call <sid>hi('Todo', s:cdNone, s:cdLeftMid, 'none', {})

call <sid>hi('SpellBad', s:cdRed, s:cdBack, 'undercurl', s:cdRed)
call <sid>hi('SpellCap', s:cdRed, s:cdBack, 'undercurl', s:cdRed)
call <sid>hi('SpellRare', s:cdRed, s:cdBack, 'undercurl', s:cdRed)
call <sid>hi('SpellLocal', s:cdRed, s:cdBack, 'undercurl', s:cdRed)

" Markdown:
call <sid>hi('markdownBold', s:cdMainlyGreen, {}, 'bold', {})
call <sid>hi('markdownCode', s:cdOrange, {}, 'none', {})
call <sid>hi('markdownRule', s:cdMainlyGreen, {}, 'bold', {})
call <sid>hi('markdownCodeDelimiter', s:cdOrange, {}, 'none', {})
call <sid>hi('markdownHeadingDelimiter', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('markdownFootnote', s:cdOrange, {}, 'none', {})
call <sid>hi('markdownFootnoteDefinition', s:cdOrange, {}, 'none', {})
call <sid>hi('markdownUrl', s:cdFront, {}, 'underline', {})
call <sid>hi('markdownLinkText', s:cdOrange, {}, 'none', {})
call <sid>hi('markdownEscape', s:cdYellowOrange, {}, 'none', {})

" JSON:
call <sid>hi('jsonKeyword', s:cdFront, {}, 'none', {})
call <sid>hi('jsonEscape', s:cdYellowOrange, {}, 'none', {})
call <sid>hi('jsonNull', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('jsonBoolean', s:cdMainlyGreen, {}, 'none', {})

" HTML:
call <sid>hi('htmlTag', s:cdGray, {}, 'none', {})
call <sid>hi('htmlEndTag', s:cdGray, {}, 'none', {})
call <sid>hi('htmlTagName', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('htmlSpecialTagName', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('htmlArg', s:cdFront, {}, 'none', {})

" PHP:
call <sid>hi('phpStaticClasses', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('phpMethod', s:cdYellow, {}, 'none', {})
call <sid>hi('phpClass', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('phpFunction', s:cdYellow, {}, 'none', {})
call <sid>hi('phpInclude', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('phpUseClass', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('phpRegion', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('phpMethodsVar', s:cdFront, {}, 'none', {})

" CSS:
call <sid>hi('cssBraces', s:cdFront, {}, 'none', {})
call <sid>hi('cssInclude', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('cssTagName', s:cdYellowOrange, {}, 'none', {})
call <sid>hi('cssClassName', s:cdYellowOrange, {}, 'none', {})
call <sid>hi('cssPseudoClass', s:cdYellowOrange, {}, 'none', {})
call <sid>hi('cssPseudoClassId', s:cdYellowOrange, {}, 'none', {})
call <sid>hi('cssPseudoClassLang', s:cdYellowOrange, {}, 'none', {})
call <sid>hi('cssIdentifier', s:cdYellowOrange, {}, 'none', {})
call <sid>hi('cssProp', s:cdFront, {}, 'none', {})
call <sid>hi('cssDefinition', s:cdFront, {}, 'none', {})
call <sid>hi('cssAttr', s:cdOrange, {}, 'none', {})
call <sid>hi('cssAttrRegion', s:cdOrange, {}, 'none', {})
call <sid>hi('cssColor', s:cdOrange, {}, 'none', {})
call <sid>hi('cssFunction', s:cdOrange, {}, 'none', {})
call <sid>hi('cssFunctionName', s:cdOrange, {}, 'none', {})
call <sid>hi('cssVendor', s:cdOrange, {}, 'none', {})
call <sid>hi('cssValueNumber', s:cdOrange, {}, 'none', {})
call <sid>hi('cssValueLength', s:cdOrange, {}, 'none', {})
call <sid>hi('cssUnitDecorators', s:cdOrange, {}, 'none', {})
call <sid>hi('cssStyle', s:cdFront, {}, 'none', {})
call <sid>hi('cssImportant', s:cdMainlyGreen, {}, 'none', {})

" JavaScript:
call <sid>hi('jsVariableDef', s:cdFront, {}, 'none', {})
call <sid>hi('jsFuncArgs', s:cdFront, {}, 'none', {})
call <sid>hi('jsFuncBlock', s:cdFront, {}, 'none', {})
call <sid>hi('jsRegexpString', s:cdLightRed, {}, 'none', {})
call <sid>hi('jsThis', s:cdFront, {}, 'none', {})
call <sid>hi('jsOperatorKeyword', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('jsDestructuringBlock', s:cdFront, {}, 'none', {})
call <sid>hi('jsObjectKey', s:cdFront, {}, 'none', {})
call <sid>hi('jsGlobalObjects', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('jsModuleKeyword', s:cdFront, {}, 'none', {})
call <sid>hi('jsClassDefinition', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('jsClassKeyword', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('jsExtendsKeyword', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('jsExportDefault', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('jsFuncCall', s:cdYellow, {}, 'none', {})
call <sid>hi('jsObjectValue', s:cdFront, {}, 'none', {})
call <sid>hi('jsParen', s:cdFront, {}, 'none', {})
call <sid>hi('jsObjectProp', s:cdFront, {}, 'none', {})
call <sid>hi('jsIfElseBlock', s:cdFront, {}, 'none', {})
call <sid>hi('jsParenIfElse', s:cdFront, {}, 'none', {})
call <sid>hi('jsSpreadOperator', s:cdFront, {}, 'none', {})
call <sid>hi('jsSpreadExpression', s:cdFront, {}, 'none', {})

" Typescript:
call <sid>hi('typescriptLabel', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptExceptions', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptBraces', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptEndColons', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptParens', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptDocTags', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('typescriptDocComment', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('typescriptLogicSymbols', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptImport', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('typescriptBOM', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptVariableDeclaration', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptVariable', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('typescriptExport', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('typescriptAliasDeclaration', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('typescriptAliasKeyword', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('typescriptClassName', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('typescriptAccessibilityModifier', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('typescriptOperator', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('typescriptArrowFunc', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('typescriptMethodAccessor', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('typescriptMember', s:cdYellow, {}, 'none', {})
call <sid>hi('typescriptTypeReference', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('typescriptDefault', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptTemplateSB', s:cdYellowOrange, {}, 'none', {})
call <sid>hi('typescriptArrowFuncArg', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptParamImpl', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptFuncComma', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptCastKeyword', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptCall', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('typescriptCase', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptReserved', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('typescriptDefault', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptDecorator', s:cdYellow, {}, 'none', {})
call <sid>hi('typescriptPredefinedType', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('typescriptClassHeritage', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('typescriptClassExtends', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('typescriptClassKeyword', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('typescriptBlock', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptDOMDocProp', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptTemplateSubstitution', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptClassBlock', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptFuncCallArg', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptIndexExpr', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptConditionalParen', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptArray', s:cdYellow, {}, 'none', {})
call <sid>hi('typescriptES6SetProp', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptObjectLiteral', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptTypeParameter', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('typescriptEnumKeyword', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('typescriptEnum', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('typescriptLoopParen', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptParenExp', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptModule', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptAmbientDeclaration', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('typescriptModule', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('typescriptFuncTypeArrow', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('typescriptInterfaceHeritage', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('typescriptInterfaceName', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('typescriptInterfaceKeyword', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('typescriptInterfaceExtends', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('typescriptGlobal', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('typescriptAsyncFuncKeyword', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('typescriptFuncKeyword', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('typescriptGlobalMethod', s:cdYellow, {}, 'none', {})
call <sid>hi('typescriptPromiseMethod', s:cdYellow, {}, 'none', {})

" XML:
call <sid>hi('xmlTag', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('xmlTagName', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('xmlEndTag', s:cdBlueGreen, {}, 'none', {})

" Ruby:
call <sid>hi('rubyClassNameTag', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('rubyClassName', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('rubyModuleName', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('rubyConstant', s:cdBlueGreen, {}, 'none', {})

" Golang:
call <sid>hi('goPackage', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('goImport', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('goVar', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('goConst', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('goStatement', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('goType', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('goSignedInts', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('goUnsignedInts', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('goFloats', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('goComplexes', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('goBuiltins', s:cdYellow, {}, 'none', {})
call <sid>hi('goBoolean', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('goPredefinedIdentifiers', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('goTodo', s:cdGreen, {}, 'none', {})
call <sid>hi('goDeclaration', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('goDeclType', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('goTypeDecl', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('goTypeName', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('goVarAssign', s:cdFront, {}, 'none', {})
call <sid>hi('goVarDefs', s:cdFront, {}, 'none', {})
call <sid>hi('goReceiver', s:cdFront, {}, 'none', {})
call <sid>hi('goReceiverType', s:cdFront, {}, 'none', {})
call <sid>hi('goFunctionCall', s:cdYellow, {}, 'none', {})
call <sid>hi('goMethodCall', s:cdYellow, {}, 'none', {})
call <sid>hi('goSingleDecl', s:cdFront, {}, 'none', {})

" Python:
call <sid>hi('pythonStatement', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('pythonOperator', s:cdFront, {}, 'none', {})
call <sid>hi('pythonException', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('pythonExClass', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('pythonBuiltinObj', s:cdFront, {}, 'none', {})
call <sid>hi('pythonBuiltinType', s:cdBlueGreen, {}, 'none', {})
call <sid>hi('pythonBoolean', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('pythonNone', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('pythonTodo', s:cdMainlyGreen, {}, 'none', {})
" `self` variable
call <sid>hi('pythonClassVar', s:cdFront, {}, 'none', {})
call <sid>hi('pythonClassDef', s:cdBlueGreen, {}, 'none', {})

" TeX:
call <sid>hi('texStatement', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('texBeginEnd', s:cdYellow, {}, 'none', {})
call <sid>hi('texBeginEndName', s:cdFront, {}, 'none', {})
call <sid>hi('texOption', s:cdFront, {}, 'none', {})
call <sid>hi('texBeginEndModifier', s:cdFront, {}, 'none', {})
call <sid>hi('texDocType', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('texDocTypeArgs', s:cdFront, {}, 'none', {})

" Git:
call <sid>hi('gitcommitHeader', s:cdGray, {}, 'none', {})
call <sid>hi('gitcommitOnBranch', s:cdGray, {}, 'none', {})
call <sid>hi('gitcommitBranch', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('gitcommitComment', s:cdGray, {}, 'none', {})
call <sid>hi('gitcommitSelectedType', s:cdGreen, {}, 'none', {})
call <sid>hi('gitcommitSelectedFile', s:cdGreen, {}, 'none', {})
call <sid>hi('gitcommitDiscardedType', s:cdRed, {}, 'none', {})
call <sid>hi('gitcommitDiscardedFile', s:cdRed, {}, 'none', {})
call <sid>hi('gitcommitOverflow', s:cdRed, {}, 'none', {})
call <sid>hi('gitcommitSummary', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('gitcommitBlank', s:cdMainlyGreen, {}, 'none', {})

" Lua:
call <sid>hi('luaFuncCall', s:cdYellow, {}, 'none', {})
call <sid>hi('luaFuncArgName', s:cdFront, {}, 'none', {})
call <sid>hi('luaFuncKeyword', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('luaLocal', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('luaBuiltIn', s:cdMainlyGreen, {}, 'none', {})

" SH:
call <sid>hi('shDeref', s:cdFront, {}, 'none', {})
call <sid>hi('shVariable', s:cdFront, {}, 'none', {})

" SQL:
call <sid>hi('sqlKeyword', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('sqlFunction', s:cdYellowOrange, {}, 'none', {})
call <sid>hi('sqlOperator', s:cdMainlyGreen, {}, 'none', {})

" YAML:
call <sid>hi('yamlKey', s:cdMainlyGreen, {}, 'none', {})
call <sid>hi('yamlConstant', s:cdMainlyGreen, {}, 'none', {})

