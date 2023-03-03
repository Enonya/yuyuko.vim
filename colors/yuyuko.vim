 
" {{ ========================================================
" __   __                 _              _           
" \ \ / /   _ _   _ _   _| | _______   _(_)_ __ ___  
"  \ V / | | | | | | | | | |/ / _ \ \ / / | '_ ` _ \ 
"   | || |_| | |_| | |_| |   < (_) \ V /| | | | | | |
"   |_| \__,_|\__, |\__,_|_|\_\___(_)_/ |_|_| |_| |_|
"             |___/                                  
" ========================================================= }} 


" Infomation
" ========== 
" Name: Yuyuko Vim Color Scheme
" Version: Beta 0.4.10
" Maintainer: hylwxqwq (black_trees)
" License: AGPL-3.0
" Create Time: 2022-03-16 09:26:56 UTC+8
" Last Modified Time: 2023-03-03 20:37:53 UTC+8
 

" Big Todo list
" =============
" TODO: Change the structure of the scirpt 
" TODO: Option support


" Basic settings
" ==============
let g:colors_name="yuyuko"

if &t_Co < 256
  finish
endif

if exists('syntax_on')
  syntax reset
endif

hi clear
set bg=dark

" function! <SID>SynStack()
	" echo map(synstack(line('.'),col('.')),'synIDattr(v:val, "name")')
" endfunc
" nnoremap <F12> :call <SID>SynStack()<CR>

" You can use this function to help you creating a clear issue.
" Then I can fix the problem as soon as possible.

hi Normal ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=#080808 gui=NONE


" C/C++ syntax
" ============
hi Comment    ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff87df guibg=#080808 gui=NONE
hi PreProc    ctermfg=147 ctermbg=NONE cterm=NONE guifg=#afafff guibg=#080808 gui=NONE
hi Type       ctermfg=225 ctermbg=NONE cterm=NONE guifg=#ffdfff guibg=#080808 gui=NONE 
hi Constant   ctermfg=225 ctermbg=NONE cterm=NONE guifg=#ffdfff guibg=#080808 gui=NONE 
hi Statement  ctermfg=153 ctermbg=NONE cterm=NONE guifg=#afd7ff guibg=#080808 gui=NONE 
hi Special    ctermfg=99  ctermbg=NONE cterm=NONE guifg=#875fff guibg=#080808 gui=NONE 
hi String     ctermfg=140 ctermbg=NONE cterm=NONE guifg=#af87df guibg=#080808 gui=NONE 
hi cCppString ctermfg=140 ctermbg=NONE cterm=NONE guifg=#af87df guibg=#080808 gui=NONE 
hi Number     ctermfg=117 ctermbg=NONE cterm=NONE guifg=#87d7ff guibg=#080808 gui=NONE 
hi Todo       ctermfg=212 ctermbg=254  cterm=NONE guifg=#ff87df guibg=#e4e4e4 gui=NONE 
hi Operator   ctermfg=218 ctermbg=NONE cterm=NONE guifg=#ffdfdf guibg=#080808 gui=NONE 
hi Float      ctermfg=117 ctermbg=NONE cterm=NONE guifg=#87d7ff guibg=#080808 gui=NONE 
hi Function   ctermfg=135 ctermbg=NONE cterm=NONE guifg=#af5fff guibg=#080808 gui=NONE


" Editor syntax
" =============
hi VerSplit      ctermfg=237  ctermbg=NONE cterm=NONE guifg=#3a3a3a  guibg=#080808 gui=NONE
hi LineNr        ctermfg=182  ctermbg=NONE cterm=NONE guifg=#dfafdf  guibg=#080808 gui=NONE
hi Cursor        ctermfg=242  ctermbg=NONE cterm=NONE guifg=NONE     guibg=#666666 gui=NONE
hi ColorColumn   ctermfg=225  ctermbg=NONE cterm=NONE guifg=#ffdfff  guibg=#080808 gui=NONE
hi NonText       ctermfg=212  ctermbg=NONE cterm=NONE guifg=#ff87df  guibg=#080808 gui=NONE
hi Pmenu         ctermbg=242  ctermfg=213  cterm=NONE guibg=#666666  guifg=#ff87ff gui=NONE
hi PmenuSel      ctermbg=242  ctermfg=168  cterm=NONE guibg=#666666  guifg=#df5f87 gui=NONE
hi Visual        ctermfg=NONE ctermbg=244  cterm=NONE guifg=NONE     guibg=#808080 gui=NONE
hi Tag           ctermfg=212  ctermbg=NONE cterm=NONE guifg=#ff87df  guibg=#080808 gui=NONE
hi Title         ctermfg=212  ctermbg=NONE cterm=NONE guifg=#ff87df  guibg=#080808 gui=NONE
hi Boolean       ctermfg=147  ctermbg=NONE cterm=NONE guifg=#afafff  guibg=#080808 gui=NONE
hi MatchParen    ctermfg=212  ctermbg=15   cterm=NONE guifg=#ff87df  guibg=#080808 gui=NONE
hi StorangeClass ctermfg=225  ctermbg=NONE cterm=NONE guifg=#ffdfff  guibg=#080808 gui=NONE
hi Function      ctermfg=225  ctermbg=NONE cterm=NONE guifg=#ffdfff  guibg=#080808 gui=NONE
hi Quote         ctermbg=207  ctermbg=NONE cterm=NONE guifg=#ff5fff  guibg=#080808 gui=NONE


" Status Line syntax
" ==================
hi StatusLine   ctermfg=177 ctermbg=238  cterm=NONE guifg=#df87ff guibg=#444444 gui=NONE
hi StatusLineNC ctermfg=183 ctermbg=238  cterm=NONE guifg=#dfafff guibg=#444444 gui=NONE
hi Character    ctermfg=140 ctermbg=NONE cterm=NONE guifg=#af87df guibg=#080808 gui=NONE
hi ErrorMsg     ctermfg=110 ctermbg=NONE cterm=NONE guifg=#87afdf guibg=#080808 gui=NONE
hi WaringMsg    ctermfg=111 ctermbg=NONE cterm=NONE guifg=#87afff guibg=#080808 gui=NONE
hi ModeMsg      ctermfg=15  ctermbg=105  cterm=NONE guifg=#ffffff guibg=#8787ff gui=NONE
hi MoreMsg      ctermfg=15  ctermbg=104  cterm=NONE guifg=#ffffff guibg=#8787df gui=NONE
hi Question     ctermfg=93  ctermbg=NONE cterm=NONE guifg=#8700ff guibg=#080808 gui=NONE
hi Error        ctermfg=254 ctermbg=162  cterm=NONE guifg=#e4e4e4 guibg=#d70087 gui=NONE
hi Search       ctermfg=212 ctermbg=15   cterm=NONE guifg=#ff87df guibg=#ffffff gui=NONE


" Diff syntax
" ===========
hi DiffAdd    ctermfg=15 ctermbg=28  cterm=NONE guifg=#ffffff guibg=#008700 gui=NONE
hi DiffChange ctermfg=15 ctermbg=178 cterm=NONE guifg=#ffffff guibg=#dfaf00 gui=NONE 
hi DiffDelete ctermfg=15 ctermbg=160 cterm=NONE guifg=#ffffff guibg=#df0000 gui=NONE
hi DiffText   ctermfg=15 ctermbg=212 cterm=NONE guifg=#ffffff guibg=#ff87df gui=NONE


" Vim Script syntax
" =================
hi vimVar      ctermfg=225 ctermbg=NONE cterm=NONE guifg=#ffdfff guibg=#080808 gui=NONE
hi vimFunc     ctermfg=225 ctermbg=NONE cterm=NONE guifg=#ffdfff guibg=#080808 gui=NONE
hi vimFuncName ctermfg=225 ctermbg=NONE cterm=NONE guifg=#ffdfff guibg=#080808 gui=NONE


" Python syntax
" =============
hi pythonFunction      ctermfg=225 ctermbg=NONE cterm=NONE guifg=#ffdfff guibg=#080808 gui=NONE
hi pythonBuiltin       ctermfg=225 ctermbg=NONE cterm=NONE guifg=#ffdfff guibg=#080808 gui=NONE
hi pythonDecoratorName ctermfg=225 ctermbg=NONE cterm=NONE guifg=#ffdfff guibg=#080808 gui=NONE


" Js syntax
" =========
hi javaScriptIdentifier ctermfg=225 ctermbg=NONE cterm=NONE guifg=#ffdfff guibg=#080808 gui=NONE


" Tagbar syntax
" =============
hi TagbarKind ctermfg=225 ctermbg=NONE cterm=NONE guifg=#ffdfff guibg=#080808 gui=NONE


" Ruby syntax
" ===========
hi rubyInstanceVariable ctermfg=225 ctermbg=NONE cterm=NONE guifg=#ffdfff guibg=#080808 gui=NONE


" Markdown syntax
" ===============
hi mkdRule             ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff87df guibg=#080808 gui=NONE 
hi mkdListItem         ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff87df guibg=#080808 gui=NONE 
hi mkdListItemCheckbox ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff87df guibg=#080808 gui=NONE 
hi mkdURL	           ctermfg=225 ctermbg=NONE cterm=NONE guifg=#ffdfff guibg=#080808 gui=NONE 
hi mkdCode             ctermfg=153 ctermbg=NONE cterm=NONE guifg=#afd7ff guibg=#080808 gui=NONE
hi mkdHeading          ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff87df guibg=#080808 gui=NONE 
hi mkdItalic           ctermfg=147 ctermbg=NONE cterm=NONE guifg=#afafff guibg=#080808 gui=NONE
hi htmlItalic          ctermfg=147 ctermbg=NONE cterm=NONE guifg=#afafff guibg=#080808 gui=NONE
hi mkdBold             ctermfg=147 ctermbg=NONE cterm=NONE guifg=#afafff guibg=#080808 gui=NONE
hi htmlBold            ctermfg=147 ctermbg=NONE cterm=NONE guifg=#afafff guibg=#080808 gui=NONE


" Netrw syntax
" ============
hi netrwPlain   ctermfg=225 ctermbg=NONE cterm=NONE guifg=#ffdfff guibg=#080808 gui=NONE  
hi netrwDir     ctermfg=153 ctermbg=NONE cterm=NONE guifg=#afd7ff guibg=#080808 gui=NONE 
hi netrwVersion ctermfg=147 ctermbg=NONE cterm=NONe guifg=#afafff guibg=#080808 gui=NONE


" Yaml syntax
" ===========
hi yamlBlockMappingKey ctermfg=153 ctermbg=NONE cterm=NONE guifg=#afd7ff guibg=#080808 gui=NONE
hi yamlPlainScalar     ctermfg=225 ctermbg=NONE cterm=NONE guifg=#ffdfff guibg=#080808 gui=NONE


" Used color list:
" ================
" 212 : #ff87df
" 147 : #afafff
" 225 : #ffdfff
" 153 : #afd7ff
" 99  : #875fff
" 117 : #87d7ff
" 254 : #e4e4e4
" 218 : #ffdfdf
" 237 : #3a3a3a
" 231 : #ffffff
" 169 : #d75faf
" 239 : #4e4e4e
" 168 : #df5f87
" 244 : #808080
" 15  : #ffffff
" 207 : #ff5fff
" 177 : #d787ff
" 110 : #87afdf
" 111 : #87afff
" 93  : #8700ff
" 162 : #d70087
" 182 : #dfafdf
" 183 : #dfafff
" 28  : #008700
" 178 : #dfaf00
" 160 : #df0000
" 105 : #8787ff
" 104 : #8787df
" 242 : #666666
" 140 : #af87df
" 135 : #af5fff
" 250 : #bcbcbc
" 238 : #444444


" Unused Syntax member:
" =====================
" hi Indentifier
" hi Underlined
" hi Typedef
" hi Conditional
" hi Label
" hi Keyword
" hi Exception
" hi Include
" hi Define
" hi Macro
" hi Structure
" hi Debug
" hi Underlined
" hi Ignore


" Reference:
" =========================================================
" <https://vimcn.github.io/vimcdoc/doc/syntax.html>
" <https://zhuanlan.zhihu.com/p/20718108>
" <https://blog.csdn.net/mdl13412/article/details/8129904>
