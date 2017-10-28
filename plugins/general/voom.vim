" voom {{{
if isdirectory(expand(EverVimBundleDir("VOom")))
    nmap <silent><F8> :VoomToggle<cr>
    let g:voom_tree_placement = "right"
    let g:voom_python_versions = [3,2]
    let g:voom_ft_modes = {
                \ 'markdown': 'markdown',
                \ 'tex': 'latex',
                \ 'c': 'fmr2',
                \ 'cpp': 'fmr2',
                \ 'python': 'python',
                \ 'wiki': 'wiki',
                \ 'vim': 'vimoutliner',
                \ 'html': 'html',
                \ 'java': 'fmr2'
                \ }
endif
" }}}
