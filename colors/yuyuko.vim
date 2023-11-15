" {{ ========================================================
" __   __                 _              _           
" \ \ / /   _ _   _ _   _| | _______   _(_)_ __ ___  
"  \ V / | | | | | | | | | |/ / _ \ \ / / | '_ ` _ \ 
"   | || |_| | |_| | |_| |   < (_) \ V /| | | | | | |
"   |_| \__,_|\__, |\__,_|_|\_\___(_)_/ |_|_| |_| |_|
"             |___/                                  
" ========================================================= }} 


" Infomation:
" ===========
" Name: Yuyuko Vim Color Scheme
" Version: Beta v0.7.4
" Maintainer: Enonya (hylwxqwq) <black_trees@foxmail.com>
" License: AGPL-3.0
" Create Time: 2022-03-03 20:37:53 UTC+8
" Last Modified Time: 2023-11-15 10:16:38 UTC+8
"
" Color Table:
" ============
" 235 : #262626 | 212 : #ff87df | 147 : #afafff | 225 : #ffdfff
" 153 : #afd7ff | 141 : #af87ff | 117 : #87d7ff | 254 : #e4e4e4
" 218 : #ffdfdf | 237 : #3a3a3a | 231 : #ffffff | 169 : #d75faf
" 239 : #4e4e4e | 168 : #df5f87 | 244 : #808080 | 15  : #ffffff
" 207 : #ff5fff | 177 : #d787ff | 110 : #87afdf | 111 : #87afff
" 93  : #8700ff | 162 : #d70087 | 182 : #dfafdf | 183 : #dfafff
" 28  : #008700 | 178 : #dfaf00 | 160 : #df0000 | 105 : #8787ff
" 104 : #8787df | 242 : #666666 | 140 : #af87df | 135 : #af5fff
" 250 : #bcbcbc | 238 : #444444 | 249 : #b2b2b2 | 98  : #875fd7
"
" Reference:
" ==========
" <https://vimcn.github.io/vimcdoc/doc/syntax.html>
" <https://zhuanlan.zhihu.com/p/20718108>
" <https://blog.csdn.net/mdl13412/article/details/8129904>


set background=dark

if exists('syntax_on')
  syntax reset
endif
hi clear
let g:colors_name = "yuyuko"

if (has('termguicolors') || &termguicolors)
  if (has("win32") || has("win64"))
    let &t_Co = 256 " MS-VIM's bug, see: <https://github.com/vim/vim/issues/3432>
  endif
  let s:t_Co = &t_Co
endif
if has('gui_running') " do not use &t_Co when gui is running!
  let s:t_Co = 256
endif

let g:terminal_ansi_colors = [
\ '#ffdfff', '#ff87df', '#afd7ff', '#afafff',
\ '#ffdfff', '#ff87df', '#af87df', '#8787df',
\ '#afd7ff', '#8787ff', '#af87ff', '#ffdfff',
\ '#dfa7ff', '#afafff', '#87d7ff', '#ffdfff',
\ ]

" function! <SID>SynStack()
  " echo map(synstack(line('.'),col('.')),'synIDattr(v:val, "name")')
" endfunc
" nnoremap <F8> :call <SID>SynStack()<CR>

" You can use this function to help you creating a clear issue.
" Then I can fix the problem as soon as possible.

if s:t_Co >= 256
	hi Normal                 ctermfg=231  ctermbg=235  cterm=NONE guifg=#ffffff guibg=#262626 gui=NONE
	hi Terminal               ctermfg=231  ctermbg=235  cterm=NONE guifg=#ffffff guibg=#262626 gui=NONE
	hi Comment                ctermfg=212  ctermbg=235  cterm=NONE guifg=#ff87df guibg=#262626 gui=NONE
	hi PreProc                ctermfg=147  ctermbg=235  cterm=NONE guifg=#afafff guibg=#262626 gui=NONE
	hi Type                   ctermfg=225  ctermbg=235  cterm=NONE guifg=#ffdfff guibg=#262626 gui=NONE 
	hi Constant               ctermfg=225  ctermbg=235  cterm=NONE guifg=#ffdfff guibg=#262626 gui=NONE 
	hi Statement              ctermfg=153  ctermbg=235  cterm=NONE guifg=#afd7ff guibg=#262626 gui=NONE 
	hi Special                ctermfg=99   ctermbg=235  cterm=NONE guifg=#af87ff guibg=#262626 gui=NONE 
	hi String                 ctermfg=140  ctermbg=235  cterm=NONE guifg=#af87df guibg=#262626 gui=NONE 
	hi cCppString             ctermfg=140  ctermbg=235  cterm=NONE guifg=#af87df guibg=#262626 gui=NONE 
	hi Number                 ctermfg=117  ctermbg=235  cterm=NONE guifg=#87d7ff guibg=#262626 gui=NONE 
	hi Todo                   ctermfg=212  ctermbg=98   cterm=NONE guifg=#ff87df guibg=#875fd7 gui=NONE 
	hi Operator               ctermfg=218  ctermbg=235  cterm=NONE guifg=#ffdfdf guibg=#262626 gui=NONE 
	hi Float                  ctermfg=117  ctermbg=235  cterm=NONE guifg=#87d7ff guibg=#262626 gui=NONE 
	hi VertSplit              ctermfg=238  ctermbg=238  cterm=NONE guifg=#444444 guibg=#444444 gui=NONE
  hi Wildmenu               ctermfg=15   ctermbg=105  cterm=NONE guifg=#ffffff guibg=#8787ff gui=NONE
	hi LineNr                 ctermfg=182  ctermbg=235  cterm=NONE guifg=#dfafdf guibg=#262626 gui=NONE
	hi Cursor                 ctermfg=242  ctermbg=235  cterm=NONE guifg=NONE    guibg=#666666 gui=NONE
  hi CursorLine             ctermfg=NONE ctermbg=NONE cterm=underline          guifg=NONE    guibg=NONE gui=underline
  hi CursorColumn           ctermfg=NONE ctermbg=NONE cterm=bold guifg=NONE    guibg=NONE    gui=bold                " need improve maybe
  hi CursorLineNr           ctermfg=104  ctermbg=235  cterm=NONE guifg=#8787df guibg=#262626 gui=NONE
	hi ColorColumn            ctermfg=225  ctermbg=235  cterm=NONE guifg=#ffdfff guibg=#262626 gui=NONE
	hi NonText                ctermfg=212  ctermbg=235  cterm=NONE guifg=#ff87df guibg=#262626 gui=NONE
	hi Pmenu                  ctermbg=242  ctermfg=225  cterm=NONE guibg=#666666 guifg=#ffdfff gui=NONE
	hi PmenuSel               ctermbg=242  ctermfg=153  cterm=NONE guibg=#666666 guifg=#afd7ff gui=NONE
	hi Visual                 ctermfg=NONE ctermbg=244  cterm=NONE guifg=NONE    guibg=#808080 gui=NONE
	hi Tag                    ctermfg=212  ctermbg=235  cterm=NONE guifg=#ff87df guibg=#262626 gui=NONE
	hi Title                  ctermfg=212  ctermbg=235  cterm=NONE guifg=#ff87df guibg=#262626 gui=NONE
	hi Boolean                ctermfg=147  ctermbg=235  cterm=NONE guifg=#afafff guibg=#262626 gui=NONE
	hi MatchParen             ctermfg=212  ctermbg=15   cterm=NONE guifg=#ff87df guibg=#262626 gui=NONE
	hi StorangeClass          ctermfg=225  ctermbg=235  cterm=NONE guifg=#ffdfff guibg=#262626 gui=NONE
	hi Function               ctermfg=225  ctermbg=235  cterm=NONE guifg=#ffdfff guibg=#262626 gui=NONE
	hi Quote                  ctermfg=207  ctermbg=235  cterm=NONE guifg=#ff5fff guibg=#262626 gui=NONE
	hi Folded                 ctermfg=212  ctermbg=242  cterm=NONE guifg=#ff87df guibg=#666666 gui=NONE
	hi FoldColumn             ctermfg=212  ctermbg=242  cterm=NONE guifg=#ff87df guibg=#666666 gui=NONE
	hi SignColumn             ctermfg=212  ctermbg=242  cterm=NONE guifg=#ff87df guibg=#666666 gui=NONE
	hi Directory              ctermfg=212  ctermbg=235  cterm=NONE guifg=#ff87df guibg=#262626 gui=NONE
	hi Identifier             ctermfg=153  ctermbg=235  cterm=NONE guifg=#afd7ff guibg=#262626 gui=NONE
	hi SpecialKey             ctermfg=153  ctermbg=235  cterm=NONE guifg=#afd7ff guibg=#262626 gui=NONE
	hi StatusLine             ctermfg=177  ctermbg=238  cterm=NONE guifg=#df87ff guibg=#444444 gui=NONE
	hi StatusLineNC           ctermfg=183  ctermbg=238  cterm=NONE guifg=#dfafff guibg=#444444 gui=NONE
	hi StatusLineTerm         ctermfg=177  ctermbg=238  cterm=NONE guifg=#df87ff guibg=#444444 gui=NONE
	hi StatusLineTermNC       ctermfg=183  ctermbg=238  cterm=NONE guifg=#dfafff guibg=#444444 gui=NONE
	hi Character              ctermfg=140  ctermbg=235  cterm=NONE guifg=#af87df guibg=#262626 gui=NONE
	hi ErrorMsg               ctermfg=110  ctermbg=235  cterm=NONE guifg=#87afdf guibg=#262626 gui=NONE
	hi WaringMsg              ctermfg=111  ctermbg=235  cterm=NONE guifg=#87afff guibg=#262626 gui=NONE
	hi ModeMsg                ctermfg=15   ctermbg=105  cterm=NONE guifg=#ffffff guibg=#8787ff gui=NONE
	hi MoreMsg                ctermfg=15   ctermbg=104  cterm=NONE guifg=#ffffff guibg=#8787df gui=NONE
	hi NonText                ctermfg=249  ctermbg=235  cterm=NONE guifg=#b2b2b2 guibg=#262626 gui=NONE
	hi Question               ctermfg=93   ctermbg=235  cterm=NONE guifg=#8700ff guibg=#262626 gui=NONE
	hi Error                  ctermfg=254  ctermbg=162  cterm=NONE guifg=#e4e4e4 guibg=#d70087 gui=NONE
	hi Search                 ctermfg=212  ctermbg=98   cterm=NONE guifg=#ff87df guibg=#875fd7 gui=NONE
	hi DiffAdd                ctermfg=15   ctermbg=28   cterm=NONE guifg=#ffffff guibg=#008700 gui=NONE
	hi DiffChange             ctermfg=15   ctermbg=178  cterm=NONE guifg=#ffffff guibg=#dfaf00 gui=NONE 
	hi DiffDelete             ctermfg=15   ctermbg=160  cterm=NONE guifg=#ffffff guibg=#df0000 gui=NONE
	hi DiffText               ctermfg=15   ctermbg=212  cterm=NONE guifg=#ffffff guibg=#ff87df gui=NONE
	hi vimVar                 ctermfg=225  ctermbg=235  cterm=NONE guifg=#ffdfff guibg=#262626 gui=NONE
	hi vimFunc                ctermfg=225  ctermbg=235  cterm=NONE guifg=#ffdfff guibg=#262626 gui=NONE
	hi vimFuncName            ctermfg=225  ctermbg=235  cterm=NONE guifg=#ffdfff guibg=#262626 gui=NONE
	hi CtrlChar               ctermfg=249  ctermbg=235  cterm=NONE guifg=#b2b2b2 guibg=#262626 gui=NONE
	hi helpVim                ctermfg=212  ctermbg=235  cterm=NONE guifg=#ff87df guibg=#262626 gui=NONE 
	hi helpSpecial            ctermfg=225  ctermbg=235  cterm=NONE guifg=#ffdfff guibg=#262626 gui=NONE
	hi helpHyperTextJump      ctermfg=153  ctermbg=235  cterm=NONE guifg=#afd7ff guibg=#262626 gui=NONE 
	hi pythonFunction         ctermfg=225  ctermbg=235  cterm=NONE guifg=#ffdfff guibg=#262626 gui=NONE
	hi pythonBuiltin          ctermfg=225  ctermbg=235  cterm=NONE guifg=#ffdfff guibg=#262626 gui=NONE
	hi pythonDecoratorName    ctermfg=225  ctermbg=235  cterm=NONE guifg=#ffdfff guibg=#262626 gui=NONE
	hi javaScriptIdentifier   ctermfg=225  ctermbg=235  cterm=NONE guifg=#ffdfff guibg=#262626 gui=NONE
	hi TagbarKind             ctermfg=225  ctermbg=235  cterm=NONE guifg=#ffdfff guibg=#262626 gui=NONE
	hi rubyInstanceVariable   ctermfg=225  ctermbg=235  cterm=NONE guifg=#ffdfff guibg=#262626 gui=NONE
	hi mkdRule                ctermfg=212  ctermbg=235  cterm=NONE guifg=#ff87df guibg=#262626 gui=NONE 
	hi mkdListItem            ctermfg=212  ctermbg=235  cterm=NONE guifg=#ff87df guibg=#262626 gui=NONE 
	hi mkdListItemCheckbox    ctermfg=212  ctermbg=235  cterm=NONE guifg=#ff87df guibg=#262626 gui=NONE 
	hi mkdURL	                ctermfg=225  ctermbg=235  cterm=NONE guifg=#ffdfff guibg=#262626 gui=NONE 
	hi mkdId                  ctermfg=225  ctermbg=235  cterm=NONE guifg=#ffdfff guibg=#262626 gui=NONE
	hi mkdCode                ctermfg=153  ctermbg=235  cterm=NONE guifg=#afd7ff guibg=#262626 gui=NONE
	hi mkdHeading             ctermfg=212  ctermbg=235  cterm=NONE guifg=#ff87df guibg=#262626 gui=NONE 
	hi mkdItalic              ctermfg=147  ctermbg=235  cterm=NONE guifg=#afafff guibg=#262626 gui=NONE
	hi htmlItalic             ctermfg=147  ctermbg=235  cterm=NONE guifg=#afafff guibg=#262626 gui=NONE
	hi mkdBold                ctermfg=147  ctermbg=235  cterm=NONE guifg=#afafff guibg=#262626 gui=NONE
	hi htmlBold               ctermfg=147  ctermbg=235  cterm=NONE guifg=#afafff guibg=#262626 gui=NONE
	hi netrwPlain             ctermfg=225  ctermbg=235  cterm=NONE guifg=#ffdfff guibg=#262626 gui=NONE  
	hi netrwDir               ctermfg=153  ctermbg=235  cterm=NONE guifg=#afd7ff guibg=#262626 gui=NONE 
	hi netrwVersion           ctermfg=147  ctermbg=235  cterm=NONE guifg=#afafff guibg=#262626 gui=NONE
	hi yamlBlockMappingKey    ctermfg=153  ctermbg=235  cterm=NONE guifg=#afd7ff guibg=#262626 gui=NONE
	hi yamlPlainScalar        ctermfg=225  ctermbg=235  cterm=NONE guifg=#ffdfff guibg=#262626 gui=NONE
  unlet s:t_Co
  finish
endif

if s:t_Co < 256
  hi CursorLine             ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
  hi CursorColumn           ctermfg=NONE ctermbg=NONE cterm=bold      guifg=NONE guibg=NONE gui=bold        " need improve maybe
  finish
endif

" vim: et ts=2 sw=2 sts=2
