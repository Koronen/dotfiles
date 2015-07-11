if v:version < 700
  finish
endif

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_compiler_options = ' -std=c++0x'
let g:syntastic_mode_map = { 'passive_filetypes': ['puppet'] }
let g:syntastic_ruby_checkers = ['mri', 'rubocop']
