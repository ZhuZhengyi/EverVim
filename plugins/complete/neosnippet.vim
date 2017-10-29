
" neosnips {{{
if isdirectory(expand(EverVimBundleDir('neosnippet.vim')))
    let g:neosnippet#snippets_directory= EverVimBundleDir . '/vim-snippets/snippets'
    let g:neosnippet#enable_snipmate_compatibility = 1
    let g:go_snippet_engine = 'neosnippet'
    set completeopt-=preview

    " Plug key-mappings.
    "imap <C-k>  <Plug>(neosnippet_expand_or_jump)
    "smap <C-k>  <Plug>(neosnippet_expand_or_jump)
    "xmap <C-k>     <Plug>(neosnippet_expand_target)

    " SuperTab like snippets behavior.
    "smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
        "\   "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

    if !exists('g:spf13_no_neosnippet_expand')
        imap <C-k> <Plug>(neosnippet_expand_or_jump)
        smap <C-k> <Plug>(neosnippet_expand_or_jump)
    endif

    " For conceal markers.
    if has('conceal')
        set conceallevel=2 concealcursor=niv
    endif

    if exists('g:spf13_noninvasive_completion')
        inoremap <CR> <CR>
        " <ESC> takes you out of insert mode
        inoremap <expr> <Esc>   pumvisible() ? "\<C-y>\<Esc>" : "\<Esc>"
        " <CR> accepts first, then sends the <CR>
        inoremap <expr> <CR>    pumvisible() ? "\<C-y>\<CR>" : "\<CR>"
        " <Down> and <Up> cycle like <Tab> and <S-Tab>
        inoremap <expr> <Down>  pumvisible() ? "\<C-n>" : "\<Down>"
        inoremap <expr> <Up>    pumvisible() ? "\<C-p>" : "\<Up>"
        " Jump up and down the list
        inoremap <expr> <C-d>   pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<C-d>"
        inoremap <expr> <C-u>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<C-u>"
    else
        " <C-k> Complete Snippet
        " <C-k> Jump to next snippet point
        imap <silent><expr><C-k> neosnippet#expandable() ?
                    \ "\<Plug>(neosnippet_expand_or_jump)" : (pumvisible() ?
                    \ "\<C-e>" : "\<Plug>(neosnippet_expand_or_jump)")
        smap <TAB> <Right><Plug>(neosnippet_jump_or_expand)

        "inoremap <expr><C-g> neocomplete#undo_completion()
        "inoremap <expr><C-l> neocomplete#complete_common_string()
        "inoremap <expr><CR> neocomplete#complete_common_string()

        " <CR>: close popup
        " <s-CR>: close popup and save indent.
        "inoremap <expr><s-CR> pumvisible() ? neocomplete#smart_close_popup()."\<CR>" : "\<CR>"

        function! CleverCr()
            if pumvisible()
                if neosnippet#expandable()
                    let l:exp = '\<Plug>(neosnippet_expand)'
                    return l:exp . neocomplete#smart_close_popup()
                else
                    return neocomplete#smart_close_popup()
                endif
            else
                return "\<CR>"
            endif
        endfunction

        " <CR> close popup and save indent or expand snippet
        "imap <expr> <CR> CleverCr()
        " <C-h>, <BS>: close popup and delete backword char.
        "inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
        "inoremap <expr><C-y> neocomplete#smart_close_popup()
    endif

    " <TAB>: completion.
    inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
    inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<TAB>"

    function! CleverTab()
        if pumvisible()
            return "\<C-n>"
        endif
        let l:substr = strpart(getline('.'), 0, col('.') - 1)
        let l:substr = matchstr(l:substr, '[^ \t]*$')
        if strlen(l:substr) == 0
            return "\<Tab>"
        else
            if neosnippet#expandable_or_jumpable()
                return "\<Plug>(neosnippet_expand_or_jump)"
            else
                return neocomplete#start_manual_complete()
            endif
        endif
    endfunction

    "imap <expr> <Tab> CleverTab()

endif
" }}}
