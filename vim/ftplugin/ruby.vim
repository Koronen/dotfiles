setlocal formatoptions=ql

nnoremap <silent> <buffer> <leader>h :RubyRefactorHashes<CR>
vnoremap <silent> <buffer> <leader>h :RubyRefactorHashes<CR>
nnoremap <silent> <buffer> <leader>q :RubyRefactorQuotes<CR>
vnoremap <silent> <buffer> <leader>q :RubyRefactorQuotes<CR>

let b:ale_fixers = ['standardrb']
let b:ale_linters_ignore = ['brakeman']
