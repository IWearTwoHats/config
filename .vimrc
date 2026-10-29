" Syntax highlighting.
syntax on

" Love this feature
set incsearch

" I don't like the mouse being on; If I need it, I'll turn it on.
set mouse=

" Indent stuff
filetype indent on

set tabstop=2    " Set default tab size to 4.
set shiftwidth=2 " Set how much commands like '<' or '>' will indent.

" I don't understand what this does, but it works [shrug]
autocmd FileType python setlocal indentkeys-=0#

" No comment continuation.
autocmd FileType * set formatoptions-=cro

" Highlight whitespace
highlight ExtraWhitespace ctermbg=green
match ExtraWhitespace /\s\+$/

" Allow highlighting in markdown code blocks
let g:markdown_fenced_languages = ['html', 'python']

" Keymap
" I kinda tried to make the function keys act like they do in Borland Turbo C.
" NOTE: The trailing whitespace in these keybinds is intentional.

" Open help menu in new tab.
nnoremap <F1> :tab help<cr>
inoremap <F1> <esc>:tab help<cr>

" Write file.
nnoremap <F2> :w<cr>
inoremap <F2> <esc>:w<cr>gi

" Write selection in new file.
vnoremap <F2> y:tabnew<cr>P:w 

" Open file in new tab.
nnoremap <F3> :tabnew 
inoremap <F3> <esc>:tabnew 

" Add selection to new tab.
vnoremap <F3> y:tabnew<cr>P

" Indent tweaks.
vnoremap > >gv
vnoremap < <gv

" Make and run.
nnoremap <F5> :!make run<CR><CR>
nnoremap <F9> :!make<CR>

" Next tab.
nnoremap <F6> :tabnext<CR><c-l>

" Format comments.
nnoremap <F7> V:!fmt-comment -p "\# " -i "\# " -l 80<cr>
vnoremap <F7> :!fmt-comment -p "\# " -i "\# " -l 80<cr>

" Move the current buffer to a new tab.
nnoremap <F11> <c-w>T

" Open the file path under the cursor in a new window...
nnoremap <F12> <c-w>F<c-w>L
"or in a new tab.
"nnoremap <F12> <c-w>gF

" Redraw screen when exiting insert mode. (Fix for JSON coloring)
inoremap <esc> <esc><c-l>

" Macros
"Behold, the worst macros you'll ever see.
" I'ma be real, I don't remember what these do.
let @f="/\\%.lself\nmae3l`a/,\neb@a"
let @a="mavey}koa\epg^xveyiself.\eA = \ep`a/[,)]\nebma/[,:)]\nll`a@a"

let @s="y:vne\nVpVG:s/\\t//g\ngv:s/ \\\\\\n/ /\ngv:s/\\n//\nyy:q!\n"
