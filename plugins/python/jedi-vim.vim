
" jedi-vim {{{
if isdirectory(expand(EverVimBundleDir("jedi-vim")))
"   \d: 跳转到定义处
"   \n: 查看所有引用
    au FileType python setlocal completeopt-=preview
    au FileType python setlocal omnifunc=jedi#completions

    let g:jedi#completions_enabled = 0
    let g:jedi#popup_select_first = 0
    let g:jedi#auto_vim_configuration = 0
    let g:jedi#popup_on_dot = 1

    let g:jedi#goto_assignments_command = "<C-]>"
    "let g:jedi#usages_command = "<C-u>"
    let g:jedi#documentation_command = "<C-g>"
endif
" }}}
