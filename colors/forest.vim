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
" Normal text #d6bb9c
let s:cdFront = {'gui': '#bdb395', 'cterm': s:cterm05, 'cterm256': '188'}
" Background
" #062627
" let s:cdBack = {'gui': '#041818', 'cterm': s:cterm00, 'cterm256': '234'}
let s:cdBack = {'gui': '#001F27', 'cterm': s:cterm00, 'cterm256': '234'}
" Comment
let s:cdGreen = {'gui': '#4cdc69', 'cterm': s:cterm0B, 'cterm256': '65'}
" String assign
let s:mainly_green = {'gui': '#99eba9', 'cterm': s:cterm0F, 'cterm256': '173'}
" statements and functions
let s:mainly_blue = {'gui': '#c9d4d5', 'cterm': s:cterm0D, 'cterm256': '75'}

let s:cdTabCurrent = {'gui': '#1E1E1E', 'cterm': s:cterm00, 'cterm256': '234'}
let s:cdTabOther = {'gui': '#2D2D2D', 'cterm': s:cterm01, 'cterm256': '236'}
let s:cdTabOutside = {'gui': '#252526', 'cterm': s:cterm01, 'cterm256': '235'}

let s:cdLeftDark = {'gui': '#252526', 'cterm': s:cterm01, 'cterm256': '235'}
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
let s:cdLineNumber = {'gui': '#c6b5a1', 'cterm': s:cterm04, 'cterm256': '240'}

let s:cdDiffRedDark = {'gui': '#4B1818', 'cterm': s:cterm08, 'cterm256': '52'}
let s:cdDiffRedLight = {'gui': '#6F1313', 'cterm': s:cterm08, 'cterm256': '52'}
let s:cdDiffGreenDark = {'gui': '#373D29', 'cterm': s:cterm0B, 'cterm256': '237'}

let s:cdSearchCurrent = {'gui': '#4B5632', 'cterm': s:cterm09, 'cterm256': '58'}
let s:cdSearch = {'gui': '#264F78', 'cterm': s:cterm03, 'cterm256': '24'}

" Syntax colors:
let s:cdGray = {'gui': '#808080', 'cterm': s:cterm04, 'cterm256': '08'}
let s:mainly_green_class_primitive_types = {'gui': '#4EC9B0', 'cterm': s:cterm0F, 'cterm256': '43'}
let s:cdLightGreen = {'gui': '#B5CEA8', 'cterm': s:cterm09, 'cterm256': '151'}
let s:cdRed = {'gui': '#F44747', 'cterm': s:cterm08, 'cterm256': '203'}
let s:cdLightRed = {'gui': '#D16969', 'cterm': s:cterm08, 'cterm256': '167'}
let s:cdYellowOrange = {'gui': '#D7BA7D', 'cterm': s:cterm0A, 'cterm256': '179'}
let s:main_green_for_functions = {'gui': '#ccf5d4', 'cterm': s:cterm0A, 'cterm256': '187'}

" Vim editor colors
"    <sid>hi(GROUP, FOREGROUND, BACKGROUND, ATTRIBUTE, SPECIAL)
call <sid>hi('Normal', s:cdFront, s:cdBack, 'none', {})
call <sid>hi('ColorColumn', {}, s:cdNone, 'none', {})
call <sid>hi('Cursor', s:cdCursorDark, s:cdCursorLight, 'none', {})
call <sid>hi('CursorLine', {}, s:cdCursorDarkDark, 'none', {})
call <sid>hi('CursorColumn', {}, s:cdCursorDarkDark, 'none', {})
call <sid>hi('Directory', s:mainly_blue, s:cdBack, 'none', {})
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
call <sid>hi('Question', s:mainly_blue, s:cdBack, 'none', {})
call <sid>hi('Search', s:cdNone, s:cdSearch, 'none', {})
call <sid>hi('SpecialKey', s:mainly_blue, s:cdNone, 'none', {})
" Oh, I get it!
call <sid>hi('StatusLine', s:cdFront, s:cdLeftMid, 'bold', {})
call <sid>hi('StatusLineNC', s:cdFront, s:cdLeftDark, 'none', {})
call <sid>hi('TabLine', s:cdFront, s:cdTabOther, 'none', {})
call <sid>hi('TabLineFill', s:cdFront, s:cdTabOutside, 'none', {})
call <sid>hi('TabLineSel', s:cdFront, s:cdTabCurrent, 'none', {})
call <sid>hi('Title', s:cdNone, s:cdNone, 'bold', {})
call <sid>hi('Visual', s:cdNone, s:cdSelection, 'none', {})
call <sid>hi('VisualNOS', s:cdNone, s:cdSelection, 'none', {})
call <sid>hi('WarningMsg', s:mainly_green, s:cdBack, 'none', {})
call <sid>hi('WildMenu', s:cdNone, s:cdSelection, 'none', {})

call <sid>hi('Comment', s:cdGreen, {}, 'none', {})

call <sid>hi('Constant', s:mainly_blue, {}, 'none', {})
call <sid>hi('String', s:mainly_green, {}, 'none', {})
call <sid>hi('Character', s:mainly_green, {}, 'none', {})
call <sid>hi('Number', s:cdLightGreen, {}, 'none', {})
call <sid>hi('Boolean', s:mainly_blue, {}, 'none', {})
call <sid>hi('Float', s:cdLightGreen, {}, 'none', {})

call <sid>hi('Identifier', s:cdFront, {}, 'none', {})
call <sid>hi('Function', s:main_green_for_functions, {}, 'none', {})

call <sid>hi('Statement', s:mainly_blue, {}, 'none', {})
call <sid>hi('Conditional', s:mainly_blue, {}, 'none', {})
call <sid>hi('Repeat', s:mainly_blue, {}, 'none', {})
call <sid>hi('Label', s:mainly_blue, {}, 'none', {})
call <sid>hi('Operator', s:cdFront, {}, 'none', {})
call <sid>hi('Keyword', s:mainly_blue, {}, 'none', {})
call <sid>hi('Exception', s:mainly_blue, {}, 'none', {})

call <sid>hi('PreProc', s:mainly_blue, {}, 'none', {})
call <sid>hi('Include', s:mainly_blue, {}, 'none', {})
call <sid>hi('Define', s:mainly_blue, {}, 'none', {})
call <sid>hi('Macro', s:mainly_blue, {}, 'none', {})
call <sid>hi('PreCondit', s:mainly_blue, {}, 'none', {})

call <sid>hi('Type', s:mainly_blue, {}, 'none', {})
call <sid>hi('StorageClass', s:mainly_blue, {}, 'none', {})
call <sid>hi('Structure', s:mainly_blue, {}, 'none', {})
call <sid>hi('Typedef', s:mainly_blue, {}, 'none', {})

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
call <sid>hi('markdownBold', s:mainly_blue, {}, 'bold', {})
call <sid>hi('markdownCode', s:mainly_green, {}, 'none', {})
call <sid>hi('markdownRule', s:mainly_blue, {}, 'bold', {})
call <sid>hi('markdownCodeDelimiter', s:mainly_green, {}, 'none', {})
call <sid>hi('markdownHeadingDelimiter', s:mainly_blue, {}, 'none', {})
call <sid>hi('markdownFootnote', s:mainly_green, {}, 'none', {})
call <sid>hi('markdownFootnoteDefinition', s:mainly_green, {}, 'none', {})
call <sid>hi('markdownUrl', s:cdFront, {}, 'underline', {})
call <sid>hi('markdownLinkText', s:mainly_green, {}, 'none', {})
call <sid>hi('markdownEscape', s:cdYellowOrange, {}, 'none', {})

" JSON:
call <sid>hi('jsonKeyword', s:cdFront, {}, 'none', {})
call <sid>hi('jsonEscape', s:cdYellowOrange, {}, 'none', {})
call <sid>hi('jsonNull', s:mainly_blue, {}, 'none', {})
call <sid>hi('jsonBoolean', s:mainly_blue, {}, 'none', {})

" HTML:
call <sid>hi('htmlTag', s:cdGray, {}, 'none', {})
call <sid>hi('htmlEndTag', s:cdGray, {}, 'none', {})
call <sid>hi('htmlTagName', s:mainly_blue, {}, 'none', {})
call <sid>hi('htmlSpecialTagName', s:mainly_blue, {}, 'none', {})
call <sid>hi('htmlArg', s:cdFront, {}, 'none', {})

" PHP:
call <sid>hi('phpStaticClasses', s:mainly_green_class_primitive_types, {}, 'none', {})
call <sid>hi('phpMethod', s:main_green_for_functions, {}, 'none', {})
call <sid>hi('phpClass', s:mainly_green_class_primitive_types, {}, 'none', {})
call <sid>hi('phpFunction', s:main_green_for_functions, {}, 'none', {})
call <sid>hi('phpInclude', s:mainly_blue, {}, 'none', {})
call <sid>hi('phpUseClass', s:mainly_green_class_primitive_types, {}, 'none', {})
call <sid>hi('phpRegion', s:mainly_green_class_primitive_types, {}, 'none', {})
call <sid>hi('phpMethodsVar', s:cdFront, {}, 'none', {})

" CSS:
call <sid>hi('cssBraces', s:cdFront, {}, 'none', {})
call <sid>hi('cssInclude', s:mainly_blue, {}, 'none', {})
call <sid>hi('cssTagName', s:cdYellowOrange, {}, 'none', {})
call <sid>hi('cssClassName', s:cdYellowOrange, {}, 'none', {})
call <sid>hi('cssPseudoClass', s:cdYellowOrange, {}, 'none', {})
call <sid>hi('cssPseudoClassId', s:cdYellowOrange, {}, 'none', {})
call <sid>hi('cssPseudoClassLang', s:cdYellowOrange, {}, 'none', {})
call <sid>hi('cssIdentifier', s:cdYellowOrange, {}, 'none', {})
call <sid>hi('cssProp', s:cdFront, {}, 'none', {})
call <sid>hi('cssDefinition', s:cdFront, {}, 'none', {})
call <sid>hi('cssAttr', s:mainly_green, {}, 'none', {})
call <sid>hi('cssAttrRegion', s:mainly_green, {}, 'none', {})
call <sid>hi('cssColor', s:mainly_green, {}, 'none', {})
call <sid>hi('cssFunction', s:mainly_green, {}, 'none', {})
call <sid>hi('cssFunctionName', s:mainly_green, {}, 'none', {})
call <sid>hi('cssVendor', s:mainly_green, {}, 'none', {})
call <sid>hi('cssValueNumber', s:mainly_green, {}, 'none', {})
call <sid>hi('cssValueLength', s:mainly_green, {}, 'none', {})
call <sid>hi('cssUnitDecorators', s:mainly_green, {}, 'none', {})
call <sid>hi('cssStyle', s:cdFront, {}, 'none', {})
call <sid>hi('cssImportant', s:mainly_blue, {}, 'none', {})

" JavaScript:
call <sid>hi('jsVariableDef', s:cdFront, {}, 'none', {})
call <sid>hi('jsFuncArgs', s:cdFront, {}, 'none', {})
call <sid>hi('jsFuncBlock', s:cdFront, {}, 'none', {})
call <sid>hi('jsRegexpString', s:cdLightRed, {}, 'none', {})
call <sid>hi('jsThis', s:cdFront, {}, 'none', {})
call <sid>hi('jsOperatorKeyword', s:mainly_blue, {}, 'none', {})
call <sid>hi('jsDestructuringBlock', s:cdFront, {}, 'none', {})
call <sid>hi('jsObjectKey', s:cdFront, {}, 'none', {})
call <sid>hi('jsGlobalObjects', s:mainly_green_class_primitive_types, {}, 'none', {})
call <sid>hi('jsModuleKeyword', s:cdFront, {}, 'none', {})
call <sid>hi('jsClassDefinition', s:mainly_green_class_primitive_types, {}, 'none', {})
call <sid>hi('jsClassKeyword', s:mainly_blue, {}, 'none', {})
call <sid>hi('jsExtendsKeyword', s:mainly_blue, {}, 'none', {})
call <sid>hi('jsExportDefault', s:mainly_blue, {}, 'none', {})
call <sid>hi('jsFuncCall', s:main_green_for_functions, {}, 'none', {})
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
call <sid>hi('typescriptDocTags', s:mainly_blue, {}, 'none', {})
call <sid>hi('typescriptDocComment', s:mainly_green_class_primitive_types, {}, 'none', {})
call <sid>hi('typescriptLogicSymbols', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptImport', s:mainly_blue, {}, 'none', {})
call <sid>hi('typescriptBOM', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptVariableDeclaration', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptVariable', s:mainly_blue, {}, 'none', {})
call <sid>hi('typescriptExport', s:mainly_blue, {}, 'none', {})
call <sid>hi('typescriptAliasDeclaration', s:mainly_green_class_primitive_types, {}, 'none', {})
call <sid>hi('typescriptAliasKeyword', s:mainly_blue, {}, 'none', {})
call <sid>hi('typescriptClassName', s:mainly_green_class_primitive_types, {}, 'none', {})
call <sid>hi('typescriptAccessibilityModifier', s:mainly_blue, {}, 'none', {})
call <sid>hi('typescriptOperator', s:mainly_blue, {}, 'none', {})
call <sid>hi('typescriptArrowFunc', s:mainly_blue, {}, 'none', {})
call <sid>hi('typescriptMethodAccessor', s:mainly_blue, {}, 'none', {})
call <sid>hi('typescriptMember', s:main_green_for_functions, {}, 'none', {})
call <sid>hi('typescriptTypeReference', s:mainly_green_class_primitive_types, {}, 'none', {})
call <sid>hi('typescriptDefault', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptTemplateSB', s:cdYellowOrange, {}, 'none', {})
call <sid>hi('typescriptArrowFuncArg', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptParamImpl', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptFuncComma', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptCastKeyword', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptCall', s:mainly_blue, {}, 'none', {})
call <sid>hi('typescriptCase', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptReserved', s:mainly_blue, {}, 'none', {})
call <sid>hi('typescriptDefault', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptDecorator', s:main_green_for_functions, {}, 'none', {})
call <sid>hi('typescriptPredefinedType', s:mainly_green_class_primitive_types, {}, 'none', {})
call <sid>hi('typescriptClassHeritage', s:mainly_green_class_primitive_types, {}, 'none', {})
call <sid>hi('typescriptClassExtends', s:mainly_blue, {}, 'none', {})
call <sid>hi('typescriptClassKeyword', s:mainly_blue, {}, 'none', {})
call <sid>hi('typescriptBlock', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptDOMDocProp', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptTemplateSubstitution', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptClassBlock', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptFuncCallArg', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptIndexExpr', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptConditionalParen', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptArray', s:main_green_for_functions, {}, 'none', {})
call <sid>hi('typescriptES6SetProp', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptObjectLiteral', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptTypeParameter', s:mainly_green_class_primitive_types, {}, 'none', {})
call <sid>hi('typescriptEnumKeyword', s:mainly_blue, {}, 'none', {})
call <sid>hi('typescriptEnum', s:mainly_green_class_primitive_types, {}, 'none', {})
call <sid>hi('typescriptLoopParen', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptParenExp', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptModule', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptAmbientDeclaration', s:mainly_blue, {}, 'none', {})
call <sid>hi('typescriptModule', s:mainly_blue, {}, 'none', {})
call <sid>hi('typescriptFuncTypeArrow', s:mainly_blue, {}, 'none', {})
call <sid>hi('typescriptInterfaceHeritage', s:mainly_green_class_primitive_types, {}, 'none', {})
call <sid>hi('typescriptInterfaceName', s:mainly_green_class_primitive_types, {}, 'none', {})
call <sid>hi('typescriptInterfaceKeyword', s:mainly_blue, {}, 'none', {})
call <sid>hi('typescriptInterfaceExtends', s:mainly_blue, {}, 'none', {})
call <sid>hi('typescriptGlobal', s:mainly_green_class_primitive_types, {}, 'none', {})
call <sid>hi('typescriptAsyncFuncKeyword', s:mainly_blue, {}, 'none', {})
call <sid>hi('typescriptFuncKeyword', s:mainly_blue, {}, 'none', {})
call <sid>hi('typescriptGlobalMethod', s:main_green_for_functions, {}, 'none', {})
call <sid>hi('typescriptPromiseMethod', s:main_green_for_functions, {}, 'none', {})

" XML:
call <sid>hi('xmlTag', s:mainly_green_class_primitive_types, {}, 'none', {})
call <sid>hi('xmlTagName', s:mainly_green_class_primitive_types, {}, 'none', {})
call <sid>hi('xmlEndTag', s:mainly_green_class_primitive_types, {}, 'none', {})

" Ruby:
call <sid>hi('rubyClassNameTag', s:mainly_green_class_primitive_types, {}, 'none', {})
call <sid>hi('rubyClassName', s:mainly_green_class_primitive_types, {}, 'none', {})
call <sid>hi('rubyModuleName', s:mainly_green_class_primitive_types, {}, 'none', {})
call <sid>hi('rubyConstant', s:mainly_green_class_primitive_types, {}, 'none', {})

" Golang:
call <sid>hi('goPackage', s:mainly_blue, {}, 'none', {})
call <sid>hi('goImport', s:mainly_blue, {}, 'none', {})
call <sid>hi('goVar', s:mainly_blue, {}, 'none', {})
call <sid>hi('goConst', s:mainly_blue, {}, 'none', {})
call <sid>hi('goStatement', s:mainly_blue, {}, 'none', {})
call <sid>hi('goType', s:mainly_green_class_primitive_types, {}, 'none', {})
call <sid>hi('goSignedInts', s:mainly_green_class_primitive_types, {}, 'none', {})
call <sid>hi('goUnsignedInts', s:mainly_green_class_primitive_types, {}, 'none', {})
call <sid>hi('goFloats', s:mainly_green_class_primitive_types, {}, 'none', {})
call <sid>hi('goComplexes', s:mainly_green_class_primitive_types, {}, 'none', {})
call <sid>hi('goBuiltins', s:main_green_for_functions, {}, 'none', {})
call <sid>hi('goBoolean', s:mainly_blue, {}, 'none', {})
call <sid>hi('goPredefinedIdentifiers', s:mainly_blue, {}, 'none', {})
call <sid>hi('goTodo', s:cdGreen, {}, 'none', {})
call <sid>hi('goDeclaration', s:mainly_blue, {}, 'none', {})
call <sid>hi('goDeclType', s:mainly_blue, {}, 'none', {})
call <sid>hi('goTypeDecl', s:mainly_blue, {}, 'none', {})
call <sid>hi('goTypeName', s:mainly_green_class_primitive_types, {}, 'none', {})
call <sid>hi('goVarAssign', s:cdFront, {}, 'none', {})
call <sid>hi('goVarDefs', s:cdFront, {}, 'none', {})
call <sid>hi('goReceiver', s:cdFront, {}, 'none', {})
call <sid>hi('goReceiverType', s:cdFront, {}, 'none', {})
call <sid>hi('goFunctionCall', s:main_green_for_functions, {}, 'none', {})
call <sid>hi('goMethodCall', s:main_green_for_functions, {}, 'none', {})
call <sid>hi('goSingleDecl', s:cdFront, {}, 'none', {})

" Python:
call <sid>hi('pythonStatement', s:mainly_blue, {}, 'none', {})
call <sid>hi('pythonAssignmentOperator', s:cdFront, {}, 'none', {})
call <sid>hi('pythonLogicalOperator', s:mainly_blue, {}, 'none', {})
call <sid>hi('pythonException', s:mainly_blue, {}, 'none', {})
call <sid>hi('pythonExClass', s:mainly_green_class_primitive_types, {}, 'none', {})
call <sid>hi('pythonBuiltinObj', s:cdFront, {}, 'none', {})
call <sid>hi('pythonBuiltinType', s:mainly_green_class_primitive_types, {}, 'none', {})
call <sid>hi('pythonBoolean', s:mainly_green_class_primitive_types, {}, 'none', {})
call <sid>hi('pythonNone', s:mainly_green_class_primitive_types, {}, 'none', {})
call <sid>hi('pythonTodo', s:mainly_blue, {}, 'none', {})
call <sid>hi('pythonClassVar', s:cdFront, {}, 'none', {})
call <sid>hi('pythonClass', s:mainly_green_class_primitive_types, {}, 'none', {})
call <sid>hi('pythonFunctionCall', s:cdFront, {}, 'none', {})

" TeX:
call <sid>hi('texStatement', s:mainly_blue, {}, 'none', {})
call <sid>hi('texBeginEnd', s:main_green_for_functions, {}, 'none', {})
call <sid>hi('texBeginEndName', s:cdFront, {}, 'none', {})
call <sid>hi('texOption', s:cdFront, {}, 'none', {})
call <sid>hi('texBeginEndModifier', s:cdFront, {}, 'none', {})
call <sid>hi('texDocType', s:mainly_blue, {}, 'none', {})
call <sid>hi('texDocTypeArgs', s:cdFront, {}, 'none', {})

" Git:
call <sid>hi('gitcommitHeader', s:cdGray, {}, 'none', {})
call <sid>hi('gitcommitOnBranch', s:cdGray, {}, 'none', {})
call <sid>hi('gitcommitBranch', s:mainly_blue, {}, 'none', {})
call <sid>hi('gitcommitComment', s:cdGray, {}, 'none', {})
call <sid>hi('gitcommitSelectedType', s:cdGreen, {}, 'none', {})
call <sid>hi('gitcommitSelectedFile', s:cdGreen, {}, 'none', {})
call <sid>hi('gitcommitDiscardedType', s:cdRed, {}, 'none', {})
call <sid>hi('gitcommitDiscardedFile', s:cdRed, {}, 'none', {})
call <sid>hi('gitcommitOverflow', s:cdRed, {}, 'none', {})
call <sid>hi('gitcommitSummary', s:mainly_blue, {}, 'none', {})
call <sid>hi('gitcommitBlank', s:mainly_blue, {}, 'none', {})

" Lua:
call <sid>hi('luaFuncCall', s:main_green_for_functions, {}, 'none', {})
call <sid>hi('luaFuncArgName', s:cdFront, {}, 'none', {})
call <sid>hi('luaFuncKeyword', s:mainly_blue, {}, 'none', {})
call <sid>hi('luaLocal', s:mainly_blue, {}, 'none', {})
call <sid>hi('luaBuiltIn', s:mainly_blue, {}, 'none', {})

" SH:
call <sid>hi('shDeref', s:cdFront, {}, 'none', {})
call <sid>hi('shVariable', s:cdFront, {}, 'none', {})

" SQL:
call <sid>hi('sqlKeyword', s:mainly_blue, {}, 'none', {})
call <sid>hi('sqlFunction', s:cdYellowOrange, {}, 'none', {})
call <sid>hi('sqlOperator', s:mainly_blue, {}, 'none', {})

" YAML:
call <sid>hi('yamlKey', s:mainly_blue, {}, 'none', {})
call <sid>hi('yamlConstant', s:mainly_blue, {}, 'none', {})

