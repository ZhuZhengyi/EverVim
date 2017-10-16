
" SingleCompile {{{
if isdirectory(expand(EverVimBundleDir("SingleCompile")))
     au FileType c,cpp,java,golang,python nnoremap <F5> :SCCompile<cr>
     au FileType c,cpp,java,golang,python nnoremap <F6> :SCCompileRun<cr>
endif
" }}}
