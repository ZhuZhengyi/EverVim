
" deoplete {{{
if NVIM() && isdirectory(expand(EverVimBundleDir('deoplete.nvim')))
    let g:acp_enableAtStartup = 0               " Disable AutoComplPop.
    let g:deoplete#enable_at_startup = 1
	let g:deoplete#enable_smart_case = 1
endif
