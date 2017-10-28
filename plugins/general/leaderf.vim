
" LeaderF {{{
if isdirectory(expand(EverVimBundleDir('LeaderF')))
    let g:Lf_CommandMap = {'<C-C>': ['<Esc>', '<C-C>']}
    let g:Lf_ShortcutF = '<C-P>'

    let g:Lf_WindowPosition = 'right'
    let g:Lf_WildIgnore = {
        \ 'dir': ['.svn','.git', '.hg', '.Trash', '.cache', 'node_modules', 'vendor', 'build', 'logs'],
        \ 'link': 'some_bad_symbolic_links',
        \ 'file': ['*.sw?','~$*', '.tags','*.bak','*.exe','*.o','*.so','*.py[co]', '*.jp?g', '*.psd', '*.jar', '*.war', '*.class', '*.un~', '*.log', '*.png', '*.dll']
        \ }
endif
" }}}
