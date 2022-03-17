 
 " =========================================================
 " __          __             __          __                _
 " \ \        / /             \ \        / /               | |
  " \ \      / /               \ \      / /                | |   __
   " \ \    / /            _    \ \    / /            _    | |  / /
    " \ \  / /   |\       | |    \ \  / /   |\       | |   | | / /
     " \ \/ /    | |      | |     \ \/ /    | |      | |   | |/ /      __________
      " \  /     | |      | |      \  /     | |      | |   | / /      |  ______  |
      " / /      | |      | |      / /      | |      | |   | \ \      | |      | |
     " / /       | |      | |     / /       | |      | |   | |\ \     | |      | |
    " / /        | |      | |    / /        | |      | |   | | \ \    | |      | |
   " / /         | |______| |   / /         | |______| |   | |  \ \   | |______| |
  " /_/          \__________/  /_/   .vim   \__________/   \_|   \_\  \__________|

" ==========================================================
 
" Yuyuko Vim Color Scheme
" Version Beta 0.2.6
" Author : hylwxqwq (black_trees)
" Create Time : 2022-03-16 09:26:56 UTC+8
" Last Modified Time : 2022-03-17 12:10:21 UTC+8
 
" TODO : add GUI and Term version
" TODO : Change the structure of the scirpt
 
" ==========================================================

let g:colors_name="yuyuko"

if !has('gui_running') && &t_Co < 256
  finish
endif

set background=dark
hi clear

if exists('syntax_on')
  syntax reset
endif

" function! <SID>SynStack()
    " echo map(synstack(line('.'),col('.')),'synIDattr(v:val, "name")')
" endfunc
" nnoremap <F12> :call <SID>SynStack()<CR>
" This is for me to debug, don't care about it.

" C/C++ syntax

hi Comment ctermfg=212 ctermbg=NONE
hi PreProc ctermfg=147 ctermbg=NONE
hi Type ctermfg=225 ctermbg=NONE
hi Constant ctermfg=225 ctermbg=NONE
hi Statement ctermfg=153 ctermbg=NONE
hi Special ctermfg=99 ctermbg=NONE
hi String ctermfg=195 ctermbg=NONE
hi cCppString ctermfg=195 ctermbg=NONE
hi Number ctermfg=117 ctermbg=NONE
hi Todo ctermfg=212 ctermbg=254
hi Operator ctermfg=218 ctermbg=NONE
hi Float ctermfg=117 ctermbg=NONE

" Unused Syntax member.

" hi Function
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


" Editor syntax

hi VerSplit ctermfg=237 ctermbg=NONE
hi LineNr ctermfg=182 ctermbg=NONE
hi Cursor ctermfg=NONE ctermbg=NONE
hi ColorColumn ctermfg=225 ctermbg=NONE
hi NonText ctermfg=212 ctermbg=NONE
hi Pmenu ctermfg=231 ctermbg=169
hi PmenuSel ctermfg=239 ctermbg=168
hi Visual ctermfg=NONE ctermbg=244
hi Tag ctermfg=212 ctermbg=NONE
hi Title ctermfg=212 ctermbg=NONE
hi Boolean ctermfg=147 ctermbg=NONE
hi MatchParen ctermfg=212 ctermbg=15
hi StorangeClass ctermfg=225 ctermbg=NONE
hi Function ctermfg=225 ctermbg=NONE
hi Quote ctermbg=207 ctermbg=NONE

" Status Line syntax

hi StatusLine ctermfg=177 ctermbg=NONE
hi StatusLineNC ctermfg=183 ctermbg=NONE
hi Character ctermfg=195 ctermbg=NONE
hi ErrorMsg ctermfg=110 ctermbg=NONE
hi WaringMsg ctermfg=111 ctermbg=NONE
hi ModeMsg ctermfg=15 ctermbg=105
hi MoreMsg ctermfg=15 ctermbg=104
hi Question ctermfg=93 ctermbg=NONE
hi Error ctermfg=254 ctermbg=162
hi Search ctermfg=212 ctermbg=15

" Diff syntax

hi DiffAdd ctermfg=15 ctermbg=28
hi DiffChange ctermfg=15 ctermbg=178
hi DiffDelete ctermfg=15 ctermbg=160
hi DiffText ctermfg=15 ctermbg=212

" Vim Script syntax

hi vimVar ctermfg=225 ctermbg=NONE
hi vimFunc ctermfg=225 ctermbg=NONE
hi vimFuncName ctermfg=225 ctermbg=NONE

" Python syntax

hi pythonFunction ctermfg=225 ctermbg=NONE
hi pythonBuiltin ctermfg=225 ctermbg=NONE
hi pythonDecoratorName ctermfg=225 ctermbg=NONE

" Js syntax

hi javaScriptIdentifier ctermfg=225 ctermbg=NONE

" Tagbar syntax

hi TagbarKind ctermfg=225 ctermbg=NONE

" Ruby syntax

hi rubyInstanceVariable ctermfg=225 ctermbg=NONE

" Used color list:

" 212:#ff87df
" 147:#afafff
" 255:#ffdfff
" 153:#afd7ff
" 099:#875fff
" 195:#dfffff
" 117:#87d7ff
" 254:#e4e4e4
" 218:#ffdfdf
" 237:#3a3a3a
" 231:#ffffff
" 169:#d75faf
" 239:#4e4e4e
" 168:#d75f5f
" 244:#808080
" 015:#ffffff
" 207:#ff5fff
" 177:#d787ff
" 110:#87afd7
" 111:#87afff
" 093:#8700ff
" 162:#d70087
" 182:#dfafdf


" Reference:
" =========================================================
" <https://vimcn.github.io/vimcdoc/doc/syntax.html>
" <https://zhuanlan.zhihu.com/p/20718108>
" <https://blog.csdn.net/mdl13412/article/details/8129904>
" =========================================================
