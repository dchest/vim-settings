au BufNewFile,BufRead *.js set makeprg=gjslint\ %

" The ^G at the end is an actual <Ctrl-G> char.
" Gist won't let me include it, so you'll have to delete the last two characters
" and insert it yourself with <Ctrl-V><Ctrl-G>
au BufNewFile,BufRead *.js set errorformat=%-P-----\ FILE\ \ :\ \ %f\ -----,Line\ %l\\,\ E:%n:\ %m,%-Q,%-GFound\ %s,%-GSome\ %s,%-Gfixjsstyle%s,%-Gscript\ can\ %s,%-G

