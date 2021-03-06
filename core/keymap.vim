" Key (Re)Mappings

" The default leader is '\', but many people prefer ',' as it's in a standard
" location. To override this behavior and set it back to '\' (or any other
" character) add the following to your .vimrc.before.local file:
"   let g:evervim_leader='\'
if !exists('g:evervim_leader')
    let mapleader = ','
else
    let mapleader=g:evervim_leader
endif
if !exists('g:evervim_localleader')
    let maplocalleader = '_'
else
    let maplocalleader=g:evervim_localleader
endif

" The default mappings for editing and applying the evervim configuration
" are <leader>ev and <leader>sv respectively. Change them to your preference
" by adding the following to your .vimrc.before.local file:
"   let g:evervim_edit_config_mapping='<leader>ec'
"   let g:evervim_apply_config_mapping='<leader>sc'
if !exists('g:evervim_edit_config_mapping')
    let s:evervim_edit_config_mapping = '<leader>ec'
else
    let s:evervim_edit_config_mapping = g:evervim_edit_config_mapping
endif
if !exists('g:evervim_apply_config_mapping')
    let s:evervim_apply_config_mapping = '<leader>ac'
else
    let s:evervim_apply_config_mapping = g:evervim_apply_config_mapping
endif

" TODO: edit config not working yet
execute "noremap " . s:evervim_edit_config_mapping " :call EditEverVimConfig()<CR>"
execute "noremap " . s:evervim_apply_config_mapping . " :source ~/.EverVim/vimrc<CR>"

" Easier moving in tabs and windows
" The lines conflict with the default digraph mapping of <C-K>
" If you prefer that functionality, add the following to your
" .vimrc.before.local file:
"   let g:evervim_easyWindows = 1
if !exists('g:evervim_no_easyWindows')
    map <C-J> <C-W>j<C-W>_
    map <C-K> <C-W>k<C-W>_
    map <C-L> <C-W>l<C-W>_
    map <C-H> <C-W>h<C-W>_
    nnoremap <Leader>jh 1<C-W>w
    nnoremap <Leader>jl 1<C-W>b
endif

" Wrapped lines goes down/up to next row, rather than next line in file.
noremap j gj
noremap k gk

" Remove keybinding for Ex Mode
nnoremap Q <nop>

" Remap ; to : in visual mode
nnoremap ; :

" End/Start of line motion keys act relative to row/wrap width in the
" presence of `:set wrap`, and relative to line for `:set nowrap`.
" Default vim behaviour is to act relative to text line in both cases
" If you prefer the default behaviour, add the following to your
" .vimrc.before.local file:
"   let g:evervim_no_wrapRelMotion = 1
if !exists('g:evervim_no_wrapRelMotion')
    " Same for 0, home, end, etc
    function! WrapRelativeMotion(key, ...)
        let vis_sel=""
        if a:0
            let vis_sel="gv"
        endif
        if &wrap
            execute "normal!" vis_sel . "g" . a:key
        else
            execute "normal!" vis_sel . a:key
        endif
    endfunction

    " Map g* keys in Normal, Operator-pending, and Visual+select
    noremap $ :call WrapRelativeMotion("$")<CR>
    noremap <End> :call WrapRelativeMotion("$")<CR>
    noremap 0 :call WrapRelativeMotion("0")<CR>
    noremap <Home> :call WrapRelativeMotion("0")<CR>
    noremap ^ :call WrapRelativeMotion("^")<CR>
    " Overwrite the operator pending $/<End> mappings from above
    " to force inclusive motion with :execute normal!
    onoremap $ v:call WrapRelativeMotion("$")<CR>
    onoremap <End> v:call WrapRelativeMotion("$")<CR>
    " Overwrite the Visual+select mode mappings from above
    " to ensure the correct vis_sel flag is passed to function
    vnoremap $ :<C-U>call WrapRelativeMotion("$", 1)<CR>
    vnoremap <End> :<C-U>call WrapRelativeMotion("$", 1)<CR>
    vnoremap 0 :<C-U>call WrapRelativeMotion("0", 1)<CR>
    vnoremap <Home> :<C-U>call WrapRelativeMotion("0", 1)<CR>
    vnoremap ^ :<C-U>call WrapRelativeMotion("^", 1)<CR>
endif

" The following two lines conflict with moving to top and
" bottom of the screen
" If you prefer that functionality, add the following to your
" .vimrc.before.local file:
"   let g:evervim_no_fastTabs = 1
if !exists('g:evervim_no_fastTabs')
    map <S-H> gT
    map <S-L> gt
endif

" Stupid shift key fixes
if !exists('g:evervim_no_keyfixes')
    if has("user_commands")
        command! -bang -nargs=* -complete=file E e<bang> <args>
        command! -bang -nargs=* -complete=file W w<bang> <args>
        command! -bang -nargs=* -complete=file Wq wq<bang> <args>
        command! -bang -nargs=* -complete=file WQ wq<bang> <args>
        command! -bang Wa wa<bang>
        command! -bang WA wa<bang>
        command! -bang Q q<bang>
        command! -bang QA qa<bang>
        command! -bang Qa qa<bang>
    endif

    cmap Tabe tabe
endif

" Yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y y$

" Code folding options
nmap <leader>o0 :set foldlevel=0<CR>
nmap <leader>o1 :set foldlevel=1<CR>
nmap <leader>o2 :set foldlevel=2<CR>
nmap <leader>o3 :set foldlevel=3<CR>
nmap <leader>o4 :set foldlevel=4<CR>
nmap <leader>o5 :set foldlevel=5<CR>
nmap <leader>o6 :set foldlevel=6<CR>
nmap <leader>o7 :set foldlevel=7<CR>
nmap <leader>o8 :set foldlevel=8<CR>
nmap <leader>o9 :set foldlevel=9<CR>

" Most prefer to toggle search highlighting rather than clear the current
" search results. To clear search highlighting rather than toggle it on
" and off, add the following to your .vimrc.before.local file:
"   let g:evervim_clear_search_highlight = 1
if exists('g:evervim_clear_search_highlight')
    nmap <silent> <leader>/ :nohlsearch<CR>
else
    nmap <silent> <leader>/ :set invhlsearch<CR>
endif

" Helper for saving file
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>

" Helper for sync scrolling and Diffing
" Mark current buffer for syncing view
noremap <Leader>wv :set scb<CR>
" Mark current buffer for diffing
noremap <Leader>wd :diffthis<CR>

" Find merge conflict markers
noremap <SID>FindMergeConflictMarker /\v^[<\|=>]{7}( .*\|$)<CR>
map <leader>fx <SID>FindMergeConflictMarker

" Shortcuts
" Change Working Directory to that of the current file
cmap cwd lcd %:p:h
cmap cd. lcd %:p:h

" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

" Allow using the repeat operator with a visual selection (!)
" http://stackoverflow.com/a/8064607/127816
vnoremap . :normal .<CR>

" For when you forget to sudo.. Really Write the file.
cmap w!! w !sudo tee % >/dev/null

" Dos Unix FF Conversion
nnoremap <Leader>fcu :call Dos2Unix()<CR>
nnoremap <Leader>fcd :call Unix2Dos()<CR>

" Some helpers to edit mode
" http://vimcasts.org/e/14
cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%

" Adjust viewports to the same size
map <Leader>= <C-w>=

" Map <Leader>ff to display all lines with keyword under cursor
" and ask which one to jump to
nnoremap <SID>FindTextUnderCursor [I:let nr = input("Which one to jump to: ")<Bar>exe "normal " . nr ."[\t"<CR>
nmap <Leader>ff <SID>FindTextUnderCursor

" Easier horizontal scrolling
map zl zL
map zh zH

" Easier formatting
nnoremap <silent> <leader>fq gwip
nnoremap <silent> <leader>fQ ggVGgq
nnoremap <silent> <leader>fk vipJ
nnoremap <silent> <leader>fK :%norm vipJ<cr>

" fullscreen mode for GVIM and Terminal, need 'wmctrl' in you PATH
map <silent> <F11> :call system("wmctrl -ir " . v:windowid . " -b toggle,fullscreen")<CR>

" Open a new instance tab
nnoremap <Leader>tn :tabnew +Startify<CR>

if has('nvim')
    tnoremap <Esc> <C-\><C-n>
    nnoremap <Leader>te :tabe term://$SHELL<CR>i
    nnoremap <Leader>tv :vsp term://$SHELL<CR>i
    nnoremap <Leader>ts :sp term://$SHELL<CR>i
    nnoremap <C-\><C-q> :call GuiClose()<CR>
endif

function! Zoom ()
  " check if is the zoomed state (tabnumber > 1 && window == 1)
  if tabpagenr('$') > 1 && tabpagewinnr(tabpagenr(), '$') == 1
    let l:cur_winview = winsaveview()
    let l:cur_bufname = bufname('')
    tabclose
    " restore the view
    if l:cur_bufname == bufname('')
      call winrestview(cur_winview)
    endif
  else
    tab split
  endif
endfunction
nnoremap <leader>z :call Zoom()<CR>
