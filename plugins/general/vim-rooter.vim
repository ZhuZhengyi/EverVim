

" vim-rooter {{{
if isdirectory(expand(EverVimBundleDir("vim-rooter")))
    let g:rooter_patterns = ['Rakefile', '.git/', '.svn/']
    let g:rooter_change_directory_for_non_project_files = 'current'
    "let g:rooter_use_lcd = 1
    let g:rooter_resolve_links = 1
endif
" }}}
