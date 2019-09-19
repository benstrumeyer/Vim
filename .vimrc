"Base
syntax on
set nocompatible

"Pathogen package installer
execute pathogen#infect()
call pathogen#helptags()
filetype plugin indent on

"Set font size
set guifont=Consolas:h14

"Personal Preferences

"Color scheme
colorscheme codedark

"Remap leader key to space
let mapleader = "\<Space>"

"Set tabs to 2 spaces, convert tab to spaces, newline indents 2 spaces
:set tabstop=2
:set shiftwidth=2
:set expandtab

"Relative numbers for easy navigation within a file
:set relativenumber

"Remap some keys
:noremap ;; :

"Remap movements between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Remap nerd tree toggle
nnoremap <silent> <Leader>v :NERDTreeToggle<CR>

"NERDTree preferenes
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'

"Syntastic ESLint highlighting 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_auto_loc_list = 1
let g:syntastic_javascript_eslint_exe = 'yarn lint'
let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_error_symbol = '?'
let g:syntastic_style_error_symbol = '??'
let g:syntastic_warning_symbol = '??'
let g:syntastic_style_warning_symbol = '??'
highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn
