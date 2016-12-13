if executable('ag')
    let g:ctrlp_user_command = 'ag -Q -l --nocolor --hidden -g "" %s'
endif
let g:ctrlp_use_caching = 2000

if v:version < 700
  finish
endif

let g:ctrlp_extensions = ['tag']
