
" validator {{{
if isdirectory(expand(EverVimBundleDir('validator.vim')))
    let g:validator_javascript_checkers = ['eslint']
    let g:validator_error_msg_format = '[ ● %d/%d issues ]'
    let g:validator_auto_open_quickfix = 0
    let g:validator_ignore = [
                \ 'startify', 
                \ 'vimfiler', 
                \ 'vimshell',
                \ 'unite',
                \ 'qf',
                \ 'notes',
                \ 'markdown',
                \ 'unite' ,
                \ 'text' ,
                \ 'vimwiki' ,
                \ 'pandoc' ,
                \ 'infolog' ,
                \ 'mail' ,
                \ 'mundo',
                \ 'fzf',
                \ 'ctrlp',
                \ 'tagbar'
                \ ]
    let g:validator_permament_sign = 1
endif
