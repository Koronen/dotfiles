let g:ale_fix_on_save = 1
let g:ale_fixers = {
\ 'elixir': ['mix_format'],
\ 'ruby': ['standardrb'],
\ '*': ['remove_trailing_lines', 'trim_whitespace']
\}
let g:ale_lint_on_text_changed = 'never'
let g:ale_linters_ignore = {
\ 'elixir': ['dialyxir'],
\ 'ruby': ['brakeman', 'rubocop']
\}
