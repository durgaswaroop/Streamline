" Name: plugin/streamline.vim
" Maintainer: Swaroop (https://github.com/durgaswaroop)
" Github URL: https://github.com/durgaswaroop/vim-streamline

"Colors {{{
hi User1 ctermfg=blue        ctermbg=yellow guifg=blue        guibg=yellow
" hi User1 ctermbg=green ctermfg=black   guibg=green guifg=black
hi User2 ctermbg=red         ctermfg=white  guibg=red         guifg=white       cterm=bold gui=bold
hi User3 ctermbg=blue        ctermfg=green  guibg=blue        guifg=white       cterm=bold gui=bold
hi User4 ctermbg=yellow      ctermfg=black  guibg=white       guifg=darkmagenta gui=bold
hi User5 ctermbg=blue        ctermfg=white  guibg=#1e476a     guifg=#ffffff cterm=italic,bold gui=italic,bold
hi User6 ctermbg=darkmagenta ctermfg=white  guibg=darkmagenta guifg=white       gui=bold                
" hi User6 ctermbg=white  ctermfg=blue   guibg=white   guifg=blue
hi User7 ctermbg=black       ctermfg=yellow guibg=black       guifg=yellow
hi User8 ctermbg=165         ctermfg=white  guibg=#df00ff     guifg=white
hi User9 ctermbg=gray        ctermfg=white
"}}}

let space= " "
let status="%{GetMode()}"
set statusline=%1*%<%f\   "Just some"
set statusline+=\%m
"Adds the current file name, flg for Readonly files, '+' if changed"
set statusline+=%2*\%r
set statusline+=%<%7*\ %(A=%03b%)\   "ascii value of character under cursor"
set statusline+=\ %(H=%02B%)\     "hex value of character under cursor"
" set statusline+=%2*%a
" set statusline+=%2*%k
" set statusline+=%3*\ Buf=%n\   
set statusline+=\%= "Adds the next parts to the right"
set statusline+=%3*\ %<%{&ff}\  "unix or dos format. < to show that it should wrap there"
set statusline+=%4*\ Type=%Y\  "File type displayed"
"set statusline+=\ [POS=%02v]
"set statusline+=\ \-           " Adds space for readability"
set statusline+=%5*\ %03v/%03l/%03L\    "Shows cursor pos. Column/Line/Total lines"
" set statusline+=%<%6*\ %003p%%\  "shows the percentage of file currently at"
" set statusline+=%5*\ Col=%03v\     "Shows cursor pos. Column/Line/Total lines"
" set statusline+=%5*Line=%03l\   "space
" set statusline+=%5*Total=%03L\   "space
" set statusline+=%5*\ Pos=%02vc/%03ll/%03L\ \    "Shows cursor pos. Column/Line/Total lines"
" set statusline+=%1*\ [Pos=%02v/%03l/%03L]\ \ \ \ \ \ \ \ \ \ \ \ \    "Shows cursor pos. Column/Line/Total lines"
" set statusline=l:status
function! GetMode()
	let m = mode()
	if m ==? 'n'
		let modeline = 'NORMAL'
	elseif m ==# 'v'
		let modeline = 'VISUAL' 
	elseif m ==? 'i'
		let modeline = 'INSERT'
	else
		let modeline = 'MODE'
	endif
endfunction
