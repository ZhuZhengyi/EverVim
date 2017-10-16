
" ag {{{
if isdirectory(expand(EverVimBundleDir('ag.vim')))
    let g:ackprg = 'ag --nogroup--nocolor --column'
endif
" }}}
