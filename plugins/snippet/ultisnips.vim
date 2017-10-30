if isdirectory(expand(EverVimBundleDir('ultisnips')))
    let g:UltiSnipsEditSplit="vertical"
    if has('python3')
        let g:UltiSnipsUsePythonVersion = 3
    endif
    map <leader>us :UltiSnipsEdit<CR>
    " remap Ultisnips for compatibility for YCM
    "let g:UltiSnipsExpandTrigger = "<Leader><Tab>"
    "let g:UltiSnipsJumpForwardTrigger = "<Tab>"
    "let g:UltiSnipsJumpBackwardTrigger = "<S-Tab>"
    "let g:UltiSnipsListSnippets = '<C-Tab>'
"
    let g:UltiSnipsExpandTrigger = "<C-l>"
    let g:UltiSnipsJumpForwardTrigger = "<C-n>"
    let g:UltiSnipsJumpBackwardTrigger = "<C-p>"
endif
