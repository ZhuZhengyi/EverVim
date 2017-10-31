if isdirectory(expand(EverVimBundleDir('vim-javacomplete2')))
    autocmd FileType java setlocal omnifunc=javacomplete#Complete

    if has('python3')
        let g:JavaComplete_UsePython3 = 1
    endif
    if executable('gradle')
        let g:JavaComplete_GradleExecutable = 'gradle'
    endif

    " Keymaps for java complete
    au FileType java nmap <leader>lI <Plug>(JavaComplete-Imports-AddMissing)
    au FileType java nmap <leader>lR <Plug>(JavaComplete-Imports-RemoveUnused)
    au FileType java nmap <leader>li <Plug>(JavaComplete-Imports-AddSmart)
    au FileType java nmap <leader>lii <Plug>(JavaComplete-Imports-Add)

    au FileType java imap <C-j>I <Plug>(JavaComplete-Imports-AddMissing)
    au FileType java imap <C-j>R <Plug>(JavaComplete-Imports-RemoveUnused)
    au FileType java imap <C-j>i <Plug>(JavaComplete-Imports-AddSmart)
    au FileType java map <C-j>ii <Plug>(JavaComplete-Imports-Add)

    au FileType java map <leader>lM <Plug>(JavaComplete-Generate-AbstractMethods)

    au FileType java map <C-j>jM <Plug>(JavaComplete-Generate-AbstractMethods)

    au FileType java map <leader>lA <Plug>(JavaComplete-Generate-Accessors)
    au FileType java map <leader>ls <Plug>(JavaComplete-Generate-AccessorSetter)
    au FileType java map <leader>lg <Plug>(JavaComplete-Generate-AccessorGetter)
    au FileType java map <leader>la <Plug>(JavaComplete-Generate-AccessorSetterGetter)
    au FileType java map <leader>lts <Plug>(JavaComplete-Generate-ToString)
    au FileType java map <leader>leq <Plug>(JavaComplete-Generate-EqualsAndHashCode)
    au FileType java map <leader>lc <Plug>(JavaComplete-Generate-Constructor)
    au FileType java map <leader>lcc <Plug>(JavaComplete-Generate-DefaultConstructor)

    au FileType java map <C-j>s <Plug>(JavaComplete-Generate-AccessorSetter)
    au FileType java map <C-j>g <Plug>(JavaComplete-Generate-AccessorGetter)
    au FileType java map <C-j>a <Plug>(JavaComplete-Generate-AccessorSetterGetter)

    au FileType java map <leader>ls <Plug>(JavaComplete-Generate-AccessorSetter)
    au FileType java map <leader>lg <Plug>(JavaComplete-Generate-AccessorGetter)
    au FileType java map <leader>la <Plug>(JavaComplete-Generate-AccessorSetterGetter)

    au FileType java map <silent> <buffer> <leader>ln <Plug>(JavaComplete-Generate-NewClass)
    au FileType java map <silent> <buffer> <leader>lN <Plug>(JavaComplete-Generate-ClassInFile)
endif
