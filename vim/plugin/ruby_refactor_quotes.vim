function RubyRefactorQuotes()
  for lineno in range(a:firstline, a:lastline)
    let line = getline(lineno)
    if line !~ '\"[^\"]*#{.*"'
      let cleanLine = substitute(line, '\"\([^\"]*\)\"', "'\\1'", 'ge')
      call setline(lineno, cleanLine)
    endif
  endfor
endfunction
command -range=% RubyRefactorQuotes <line1>,<line2>call RubyRefactorQuotes()
