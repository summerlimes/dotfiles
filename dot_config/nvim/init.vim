set number

" basics
set relativenumber
set tabstop=2
set shiftwidth=2
set so=5

" Common typos - credits to Son Dawei
command! Wq wq
command! W w
command! Q q

" Remapping
" scroll down
map <c-j> <c-E>
" scroll up
map <c-k> <c-Y>
" swapping line/s down by 1
map - ddp
" swapping line/s up by 1
map _ ddkP


" Open up display
function! RandHello()
	let hellos = ["Hello!", "Bonjour, monsieur", "Hola, amigo!", "Hallo", "Ciao!!", "Ola!", "Namaste", "Salaam", "Zdravstvuy", "Ohayo!", "Konnichiwa", "Konban wa", "Ahn young ha se yo", "Merhaba", "Sain Bainuu", "Szia", "Marhaba", "Ni hau", "Nay hoh", "Halo"]
	let n = system("echo `expr $RANDOM % 19`")
	return hellos[n]
endfunction

autocmd VimEnter * echo RandHello()
