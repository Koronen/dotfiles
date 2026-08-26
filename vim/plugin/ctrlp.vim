if executable('rg')
  let g:ctrlp_user_command = 'rg --files --hidden --follow --glob "!.git/*" %s'
  let g:ctrlp_use_caching = 0
endif

let g:ctrlp_extensions = ['tag']
