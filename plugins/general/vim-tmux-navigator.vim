
 "vim-tmux-navigator {{{
if isdirectory(expand('~/.vim/plugged/vim-tmux-navigator/'))
    let g:tmux_navigator_save_on_switch = 1
    nnoremap <silent> {Left-mapping} :TmuxNavigateLeft<cr>
    nnoremap <silent> {Down-Mapping} :TmuxNavigateDown<cr>
    nnoremap <silent> {Up-Mapping} :TmuxNavigateUp<cr>
    nnoremap <silent> {Right-Mapping} :TmuxNavigateRight<cr>
    nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>
endif
" }}}
