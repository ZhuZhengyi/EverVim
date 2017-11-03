
if isdirectory(expand(EverVimBundleDir('asyncomplete.vim')))
    inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
    inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
    inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"

    autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif


endif
