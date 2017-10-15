
" LeaderF {{{
if isdirectory(expand(EverVimBundleDir('LeaderF')))
    nnoremap <C-P> :LeaderfFile<CR>
    let g:Lf_WindowPosition = 'right'
    let g:Lf_WildIgnore = {
        \ 'dir': ['.svn','.git', '.hg', '.Trash', '.cache', 'node_modules', 'vendor', 'build', 'logs'],
        \ 'link': 'some_bad_symbolic_links',
        \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]', '*.jp?g', '*.psd', '*.jar', '*.war', '*.class', '*.un~', '*.log', '*.png', '*.dll']
        \ }
endif
" }}}
