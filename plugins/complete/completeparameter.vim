
" complete parameter{{{
if isdirectory(expand(EverVimBundleDir('CompleteParameter.vim')))
    inoremap <silent><expr> ( complete_parameter#pre_complete("()")
    smap <c-j> <Plug>(complete_parameter#goto_next_parameter)
    imap <c-j> <Plug>(complete_parameter#goto_next_parameter)
    smap <c-k> <Plug>(complete_parameter#goto_previous_parameter)
    imap <c-k> <Plug>(complete_parameter#goto_previous_parameter)

    let g:complete_parameter_use_ultisnips_mappings = 1
    let g:complete_parameter_py_keep_value = 1
endif
" }}}
