"Required for mapping commands.
set nocompatible

execute pathogen#infect()

"Enables syntax coloring.
syntax on

"Enables rainbow coloring of parenthesis.
let g:rainbow_active=1

"Sets the color theme.
let g:gruvbox_italic=1
colorscheme gruvbox

"Highlights the 81th column onward.
let &colorcolumn=join(range(81,999),",")

"Enables the command menu autocomplete feature.
set wildmenu


"Searching options.
set incsearch  "Search as I type.
set hlsearch   "Highlight matches.

"Tab navigation mapping.
:map  <F4> :tabprevious<cr>
:map  <F5> :tabnext<cr>
:imap <F4> <ESC>:tabprevious<cr>
:imap <F5> <ESC>:tabnext<cr>

"Spell mapping.
:map  <F1> :set spell spelllang=en_us<cr>
:map  <F2> :set spell spelllang=fr<cr>
:map  <F3> :set nospell<cr>
:imap <F1> <ESC>:set spell spelllang=en_us<cr>
:imap <F2> <ESC>:set spell spelllang=fr<cr>
:imap <F3> <ESC>:set nospell<cr>
:nnoremap ` a<C-X><C-S>

"Vim uses 2 spaces for LISP, I prefer 3.
:map  <F8> :set indentexpr=3<cr>
:imap <F8> <ESC>:set indentexpr=3<cr>

"Remove useless whitespaces.
:map  <F10> :%s/\s\+$//g<cr>
:map  <F10> <ESC>:%s/\s\+$//g<cr>

"Button to toggle paste mode.
set pastetoggle=<F12>

"Disable the directional keys, because they hurt my wrists.
noremap   <Up>     <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
noremap   <Down>   <NOP>
inoremap  <Up>     <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
inoremap  <Down>   <NOP>

"Sets the number of tabs that can be opened by 'vim -p'.
set tabpagemax=255

"Creates a shared clipboard between Vim instances.
set clipboard=unnamedplus

"Displays line numbers.
set number

"Shows matching parenthesis.
set showmatch

"let g:syntastic_java_checkers = ['javac']
let g:syntastic_java_javac_custom_classpath_command=
   \ 'echo ".:";cat ./.java_classpath'

"Italics
set t_ZH=[3m
set t_ZR=[23m

"We use Chicken Scheme
let b:is_chicken=1
"No clue...
"set smartindent
let g:syntastic_enable_signs=1

" Custom rainbow parenthesis config
let g:rainbow_conf = {
\   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\   'operators': '_,_',
\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\   'separately': {
\       '*': {},
\       'tex': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\       },
\       'lisp': {
\           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\       },
\       'vim': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\       },
\       'html': {
\           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\       },
\       'css': 0,
\   }
\}


" Enables dark mode for gruvbox
set background=dark

" Keeps the terminal's current background color (and transparency)
hi Normal          ctermfg=252 ctermbg=none
"Highlights unwanted whitespaces.
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

highlight Tabulations ctermbg=darkgreen
autocmd BufWinEnter * match Tabulations /\t\+/
autocmd InsertEnter * match Tabulations /\t\+/
"autocmd InsertLeave * match Tabulations /\t\+/
"
"Tabulation settings
set tabstop=3
set softtabstop=3
set shiftwidth=3
set expandtab

let g:typescript_indent_disable = 1
let g:typescript_compiler_options = '--alwaysStrict --noFallthroughCasesInSwitch --noImplicitAny --noImplicitReturns --noImplicitThis --noUnusedLocals --noUnusedParameters --strict --strictNullChecks'
