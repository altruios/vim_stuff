hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "novel"
syntax region spokenWord start=/\v"/ skip=/\v\\./ end=/\v"/ contained
syntax region thoughtWord start=/\v'/ skip=/\v\\./ end=/\v'/ contained
syntax region codeWord start=/\v`/ skip=/\v\\./ end=/\v`/ contained

syntax region action start=/\v*/ skip=/\v\\./ end=/\v*/ contained
syntax region description start=/\~/ skip=/\v\\./ end=/\~/ contained


syntax region BLOCK start=/{/ skip=/\s+/ end=/}/ contains=spokenWord,thoughtWord,codeWord,action,description

highlight link spokenWord String
hi thoughtWord ctermfg=red
hi codeWord ctermfg=gray
highlight link action function
highlight link description Statement
hi BLOCK guibg=#FF00FF ctermfg=magenta cterm=bold guifg=#00FF00
