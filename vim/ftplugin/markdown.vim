setlocal spell
if has("unix")
  setlocal dictionary+=/usr/share/dict/words
  setlocal complete+=k
endif
