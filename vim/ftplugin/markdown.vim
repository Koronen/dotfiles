setlocal spell

if filereadable("/usr/share/dict/words")
  setlocal dictionary+=/usr/share/dict/words
  setlocal complete+=k
endif
