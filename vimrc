" Most stuff comes from all over the web.
" A lot of it is from http://items.sjbach.com/319/configuring-vim-right

" Make navigation more amenable to the long wrapping lines. 
noremap k gk
noremap j gj
noremap <Up> gk
noremap <Down> gj

"noremap \\ :nohlsearch<Return>


call pathogen#runtime_append_all_bundles()

" Highlight search terms...
" set hlsearch
set incsearch " ...dynamically as they are typed.

" Avoid 'no write since last change' message for unsaved buffers
" when switching buffers with bnext, bprev.
set hidden

" Tab -> 4 spaces
set autoindent
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab

" Backups and swap
set backupdir=~/.vim/backup//
set directory=~/.vim/swp//

" Presistent undo
" if has('persistent_undo')
"     set undofile
"     set undodir=~/.vim/undo//
" endif

set history=1000

" Make % jump between end/else/if etc
runtime macros/matchit.vim

" Pretty <TAB> completion for filenames
set wildmode=list:longest


" These two options, when set together, will make /-style searches case-sensitive only if there is a capital letter in the search expression. *-style searches continue to be consistently case-sensitive.

set ignorecase 
set smartcase

" Line numbers at the bottom right corner
set ruler

" The following will make tabs and trailing spaces visible when requested:

set listchars=tab:>-,trail:·,eol:$
nmap <silent> <leader>s :set nolist!<CR>

" Disable beeps
set visualbell

" o<SPACE> is transformed into find
cab o find

filetype plugin on
set guioptions-=T

" NERDTree mappings
nmap § :NERDTree<Return>
nmap ± :NERDTreeClose<Return>

"set langmap=йцукенгшщзхъфывапролджэячсмитьбю/ЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ/;qwertyuiop[]asdfghjkl;'zxcvbnm,./QWERTYUIOP[]ASDFGHJKL:'ZXCVBNM,./
"map ё <Bslash> 

set keymap=russian-jcukenmac 
set iminsert=0
set imsearch=0

noremap <C-x><C-f> :set fullscreen<CR>:set guioptions-=r<CR>:colorscheme candy<CR>
noremap <C-x><C-x> :set nofullscreen<CR>:set guioptions+=r<CR>:colorscheme default<CR>

" colorscheme google
" colorscheme desert
"if has('gui_running') 
"    colorscheme candy " darkblue
"endif
"set gfn=Droid\ Sans\ Mono:h13
set gfn=DejaVu\ Sans\ Mono:h13

" Markdown
augroup mkd
autocmd BufRead *.markdown  set ai formatoptions=tcroqn2 comments=n:&gt; tabstop=4 softtabstop=4 tw=79 
augroup END

syntax on

set wrap lbr

" Use Blowfish encryption for :X
if version >= 703
    set cryptmethod=blowfish
endif

"" Live word count 
" function WordCount()
"     let s:old_status = v:statusmsg
"     exe "silent normal g\<c-g>"
"     let s:word_count = str2nr(split(v:statusmsg)[11])
"     let v:statusmsg = s:old_status
"     return s:word_count
" endfunction
"set statusline+=w%{WordCount() words}
"set statusline+=wc:%{WordCount()} 
