
" vim-expand-region {{{
if isdirectory(expand(EverVimBundleDir("vim-expand-region")))
    vmap v <Plug>(expand_region_expand)
    vmap V <Plug>(expand_region_shrink)
endif
" }}}
