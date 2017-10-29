
" complete parameter{{{
if isdirectory(expand(EverVimBundleDir('CompleteParameter.vim')))
    inoremap <silent><expr> ( complete_parameter#pre_complete("()")
    smap <c-n> <Plug>(complete_parameter#goto_next_parameter)
    imap <c-n> <Plug>(complete_parameter#goto_next_parameter)
    smap <c-p> <Plug>(complete_parameter#goto_previous_parameter)
    imap <c-p> <Plug>(complete_parameter#goto_previous_parameter)

    let g:complete_parameter_use_ultisnips_mappings = 1
    let g:complete_parameter_py_keep_value = 1

    let g:AutoPairs = {'[':']', '{':'}',"'":"'",'"':'"', '`':'`', '<':'>'}
    inoremap <buffer><silent> ) <C-R>=AutoPairsInsert(')')<CR>
    au FileType c,cpp inoremap <silent><expr> < complete_parameter#pre_complete("<>")
    au FileType c,cpp inoremap <buffer><silent> > <C-R>=AutoPairsInsert('>')<CR>
endif
" }}}
