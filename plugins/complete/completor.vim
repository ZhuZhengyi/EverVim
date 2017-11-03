
if isdirectory(expand(EverVimBundleDir('completor.vim')))
    inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
    inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
    inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"

    "let g:completor_python_binary = '/usr/bin/python'
    let g:completor_css_omni_trigger = '([\w-]+|@[\w-]*|[\w-]+:\s*[\w-]*)$'
    let g:completor_php_omni_trigger = '[^. \t]->\h\w*\|\h\w*::'
    let g:completor_c_omni_trigger = '[^.[:digit:] *\t]\%(\.\|->\)'
    let g:completor_cpp_omni_trigger = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
    "let g:completor_python_omni_trigger = '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'
    let g:completor_java_omni_trigger = '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'
    let g:completor_perl_omni_trigger = '\h\w*->\h\w*\|\h\w*::'
    let g:completor_ruby_omni_trigger = '[^. *\t]\.\h\w*\|\h\w*::'

    let g:completor_blacklist = [
                \ 'tagbar',
                \ 'qf',
                \ 'netrw',
                \ 'unite',
                \ 'startify',
                \ 'vimfiler',
                \ 'vimwiki'
                \ ]

endif
