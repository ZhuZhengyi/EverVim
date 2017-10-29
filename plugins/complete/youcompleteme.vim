"if count(g:evervim_bundle_groups, 'youcompleteme')
if isdirectory(expand(EverVimBundleDir('YouCompleteMe')))
    let g:acp_enableAtStartup = 0

    " enable completion from tags
    let g:ycm_collect_identifiers_from_tags_files = 1

    " load ycm global config
    if filereadable(expand('~/.vim/.ycm_extra_conf.py'))
        let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
    endif

    " YouCompleteMe keymap
    let g:ycm_key_detailed_diagnostics = '<leader>yd'
    let g:ycm_auto_trigger = 1
    let g:ycm_min_num_of_chars_for_completion = 2
    let g:ycm_add_preview_to_completeopt = 1
    let g:ycm_use_ultisnips_completer = 1
    let g:ycm_cache_omnifunc = 1
    let g:ycm_seed_identifiers_with_syntax=1
    let g:ycm_max_diagnostics_to_display=16
    let g:ycm_disable_for_files_larger_than_kb = 50000
    let g:ycm_collect_identifiers_from_tags_files = 1

    "" make YCM compatible with UltiSnips (using supertab)
    "let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
    "let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']

    " YcmCompleter GoTo keymap
    nnoremap <leader>ygd :YcmCompleter GoToDefinition<CR>
    nnoremap <leader>ydc :YcmCompleter GoToDeclaration<CR>
    nnoremap <leader>ygt :YcmCompleter GoTo<CR>

    " Enable omni completion.
    autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
    autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
    autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
    autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
    autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
    autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
    autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
    autocmd FileType java setlocal omnifunc=javacomplete#Complete

    autocmd BufRead *.py nnoremap <C-]> :YcmCompleter GoTo<CR>
    autocmd BufRead *.js nnoremap <C-]> :TernDef<CR>


    " Haskell post write lint and check with ghcmod
    " $ `cabal install ghcmod` if missing and ensure
    " ~/.cabal/bin is in your $PATH.
    if !executable("ghcmod")
        autocmd BufWritePost *.hs GhcModCheckAndLintAsync
    endif

    " For snippet_complete marker.
    if !exists("g:evervim_no_conceal")
        if has('conceal')
            set conceallevel=2 concealcursor=i
        endif
    endif

    " Disable the neosnippet preview candidate window
    " When enabled, there can be too much visual noise
    " especially when splits are used.
    set completeopt-=preview

    " Enable markdown autocomplete and snippet
    " by removing it from default blacklist
    let g:ycm_filetype_blacklist = {
                \ 'tagbar' : 1,
                \ 'qf' : 1,
                \ 'notes' : 1,
                \ 'unite' : 1,
                \ 'text' : 1,
                \ 'startify' : 1,
                \ 'vimfiler' : 1,
                \ 'vimwiki' : 1,
                \ 'pandoc' : 1,
                \ 'infolog' : 1,
                \ 'mail' : 1
                \ }

    let g:ycm_semantic_triggers =  {
                \ 'c' : ['->', '.'],
                \ 'objc' : ['->', '.'],
                \ 'ocaml' : ['.', '#'],
                \ 'cpp,objcpp' : ['->', '.', '::'],
                \ 'php' : ['->', '::'],
                \ 'perl' : ['->'],
                \ 'lua' : ['.', ':'],
                \ 'erlang' : [':'],
                \ 'cs,java,javascript,perl6,d,vim,coffee,python,scala,go' : ['.'],
                \ 'vim' : ['#', '_', 'g:', 'v:', 's:', 'b:', 'w:'],
                \ 'ruby' : ['.', '::']
                \ }
endif
