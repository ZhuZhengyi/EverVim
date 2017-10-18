
" vim-easytags {{{
if isdirectory(expand(EverVimBundleDir('vim-easytags')))
    if executable('/usr/local/bin/exctags')
        let g:easytags_cmd = '/usr/local/bin/exctags'
    endif
    if has('python') || has('python3')
        let g:easytags_python_enabled = 1
    endif
    let g:easytags_always_enabled = 0
    let g:easytags_events = ['BufWritePost']
    let g:easytags_async = 1
    let g:easytags_on_cursorhold = 1
    let g:easytags_auto_highlight = 1
endif
" }}}
