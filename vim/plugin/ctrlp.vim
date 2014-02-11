if executable('ag')
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
let g:ctrlp_use_caching = 2000
