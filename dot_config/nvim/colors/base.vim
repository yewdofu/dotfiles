set background=dark

hi clear
syntax reset
let colors_name = "base"

if exists('g:colors_name')
    highlight clear
endif
set t_Co=256

highlight Normal ctermbg=NONE guibg=#121212
highlight LineNr ctermbg=NONE guifg=#48494B
highlight EndOfBuffer guifg=#48494B guibg=NONE

" Syntax highlighting groups
highlight Comment ctermfg=32 guifg=#198eb5
highlight Constant ctermfg=173 guifg=#D78787
highlight String ctermfg=143 guifg=#ff0066
highlight Character ctermfg=143 guifg=#ffa1e9
highlight Number ctermfg=173 guifg=#ff0066
highlight Boolean ctermfg=173 guifg=#D78787
highlight Float ctermfg=173 guifg=#D78787

highlight Identifier ctermfg=117 guifg=#87D7FF
highlight Function ctermfg=117 guifg=#87D7FF

highlight Statement ctermfg=130 guifg=#a8610f
" highlight Conditional ctermfg=175 guifg=#D787AF
" highlight Repeat ctermfg=175 guifg=#D787AF
" highlight Label ctermfg=175 guifg=#D787AF
" highlight Operator ctermfg=175 guifg=#D787AF
" highlight Keyword ctermfg=175 guifg=#D787AF
" highlight Exception ctermfg=175 guifg=#D787AF

highlight PreProc ctermfg=180 guifg=#ffa1e9
highlight Include ctermfg=219 guifg=#ffa1e9
highlight Define ctermfg=180 guifg=#D7AF87
highlight Macro ctermfg=180 guifg=#D7AF87
highlight PreCondit ctermfg=180 guifg=#D7AF87

highlight Type ctermfg=114 guifg=#4cb52b
" highlight StorageClass ctermfg=114 guifg=#87D787
" highlight Structure ctermfg=114 guifg=#87D787
" highlight Typedef ctermfg=114 guifg=#87D787

highlight Special ctermfg=180 guifg=#D7AF87
highlight SpecialChar ctermfg=180 guifg=#D7AF87
highlight Tag ctermfg=180 guifg=#D7AF87
highlight Delimiter ctermfg=252 guifg=#D0D0D0
highlight SpecialComment ctermfg=32
highlight Debug ctermfg=173 guifg=#D78787

highlight Underlined cterm=underline gui=underline ctermfg=117 guifg=#87D7FF
highlight Error ctermbg=52 guibg=#5F0000 ctermfg=203 guifg=#FF5F5F
highlight Todo ctermbg=58 guibg=#5F5F00 ctermfg=229 guifg=#FFFFAF