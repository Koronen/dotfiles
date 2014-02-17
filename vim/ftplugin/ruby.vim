setlocal formatoptions=ql
nnoremap <silent> <buffer> <leader>h :call PreservingSearchAndCursor("%s/:\\(\\S\\+\\)\\s*=>\\s*/\\1: /g")<CR>
nnoremap <silent> <buffer> <leader>q :call PreservingSearchAndCursor("g!/\\\"[^\\\"]*#{.*\\\"/s/\\\"\\([^\\\"]\\+\\)\\\"/'\\1'/g")<CR>
