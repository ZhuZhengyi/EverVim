
" vim-easytags {{{
if isdirectory(expand('~/.vim/plugged/vim-easytags/'))
    if executable('exctags')
        let g:easytags_cmd = '/usr/local/bin/exctags'
    endif
    if has('python') || has('python3')
        let g:easytags_python_enabled = 1
    endif
    let g:easytags_events = ['BufWritePost']
    let g:easytags_async = 1
    let g:easytags_always_enabled = 1
    let g:easytags_on_cursorhold = 0
endif
" }}}
