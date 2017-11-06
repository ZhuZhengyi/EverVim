if isdirectory(expand(EverVimBundleDir("tagbar")))
    nnoremap <leader>tt :TagbarToggle<CR>
    nnoremap <silent> <F3> :TagbarToggle<CR>
    let g:tagbar_width = 30
    let g:tagbar_left=0
    let g:tagbar_singleclick=1
    let g:tagbar_autoshowtag=1
    let g:tagbar_show_visibility=1
    "let g:tagbar_ctags_bin='/usr/local/bin/ctags'

    " Markdown Tags
    let g:tagbar_type_markdown = {
                \ 'ctagstype': 'markdown',
                \ 'ctagsbin' : '~/.vim/tools/ctags/markdown2ctags.py',
                \ 'ctagsargs' : '-f - --sort=yes',
                \ 'kinds' : [
                \ 's:sections',
                \ 'i:images'
                \ ],
                \ 'sro' : '|',
                \ 'kind2scope' : {
                \ 's' : 'section',
                \ },
                \ 'sort': 0,
                \ }

    " Rust Tags
    let g:tagbar_type_rust = {
                \ 'ctagstype' : 'rust',
                \ 'kinds' : [
                \'T:types,type definitions',
                \'f:functions,function definitions',
                \'g:enum,enumeration names',
                \'s:structure names',
                \'m:modules,module names',
                \'c:consts,static constants',
                \'t:traits,traits',
                \'i:impls,trait implementations',
                \]
                \}

    " Typescript Tags
    let g:tagbar_type_typescript = {
                \ 'ctagstype': 'typescript',
                \ 'kinds': [
                \ 'c:classes',
                \ 'n:modules',
                \ 'f:functions',
                \ 'v:variables',
                \ 'v:varlambdas',
                \ 'm:members',
                \ 'i:interfaces',
                \ 'e:enums',
                \ ]
                \ }

    " Basic R Tags
    let g:tagbar_type_r = {
                \ 'ctagstype' : 'r',
                \ 'kinds'     : [
                \ 'f:Functions',
                \ 'g:GlobalVariables',
                \ 'v:FunctionVariables',
                \ ]
                \ }

    " TXT Novel tags for English and Chinese
    let g:tagbar_type_text = {
                \ 'ctagstype': 'text',
                \ 'kinds': [
                \ 'E:EnglishChapter',
                \ 'C:ChineseChapter',
                \ ],
                \ 'sort': 0,
                \ }

    " Go tags
    let g:tagbar_type_go = {
        \ 'ctagstype' : 'go',
        \ 'kinds'     : [
            \ 'p:package',
            \ 'i:imports:1',
            \ 'c:constants',
            \ 'v:variables',
            \ 't:types',
            \ 'n:interfaces',
            \ 'w:fields',
            \ 'e:embedded',
            \ 'm:methods',
            \ 'r:constructor',
            \ 'f:functions',
        \ ],
        \ 'sro' : '.',
        \ 'kind2scope' : {
            \ 't' : 'ctype',
            \ 'n' : 'ntype',
        \ },
        \ 'scope2kind' : {
            \ 'ctype' : 't',
            \ 'ntype' : 'n',
        \ },
        \ 'ctagsbin'  : 'gotags',
        \ 'ctagsargs' : '-sort -silent',
        \ }
endif

