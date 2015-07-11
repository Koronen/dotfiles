if v:version < 700
  finish
endif

function! RubyRefactorHashes()
  for lineno in range(a:firstline, a:lastline)
    let line = getline(lineno)
    let cleanLine = substitute(line, ':\(\S\+\)\s*=>\s*', '\1: ', 'ge')
    call setline(lineno, cleanLine)
  endfor
endfunction
command -range=% RubyRefactorHashes <line1>,<line2>call RubyRefactorHashes()
