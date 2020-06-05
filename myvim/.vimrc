nnoremap <F8> <C-i>
fu! s:load(module)
  exec 'source ' fnameescape(expand('~/.vim/modules/' . a:module . '.vim'))
endfu

call s:load('bundles')


if has('nvim')
  call s:load('ncompletion')
else
  call s:load('completion')
endif

call s:load('eugin_options')
call s:load('options')

call s:load('autocmds')
call s:load('statusline')
call s:load('unite')

call s:load('plugins')
call s:load('mappings')

call s:load('helpers')
call s:load('misc')

call s:load('colors')


augroup load_plugins_on_insert
  au!
  au InsertEnter * call plug#load('ultisnips', 'vim-smartinput')
        \| call s:load('smartinput')
        \| au! load_plugins_on_insert
augroup END

if has('gui_running')
  set background=light
  colorscheme solarized
  set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ Plus\ Pomicons\ Book
endif

if filereadable(expand(".vimrc.local"))
  source .vimrc.local
endif

let g:NERDTreeNodeDelimiter = "\u00a0"
" autocmd VimEnter * NERDTreeTabsToggle


let g:ctrlp_max_files=0
let g:ctrlp_max_depth=1000

let g:ctrlp_regexp = 1
let g:ctrlp_working_path_mode='ra'
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:20,results:20'
let g:ctrlp_show_hidden = 1


function! GotoJump()
  jumps
  let j = input("Please select your jump: ")
  if j != ''
    let pattern = '\v\c^\+'
    if j =~ pattern
      let j = substitute(j, pattern, '', 'g')
      execute "normal " . j . "\<F8>"
    else
      execute "normal " . j . "\<c-o>"
    endif
  endif
endfunction
nmap <F10> :call GotoJump()<CR>
" function! JumpToCSS()
"   let id_pos = searchpos("id", "nb", line('.'))[1]
"   let class_pos = searchpos("class", "nb", line('.'))[1]

"   if class_pos > 0 || id_pos > 0
"     if class_pos < id_pos
"       execute ":vim '#".expand('<cword>')."' **/*.css"
"     elseif class_pos > id_pos
"       execute ":vim '.".expand('<cword>')."' **/*.css"
"     endif
"   endif
" endfunction

" nnoremap <F9> :call JumpToCSS()<CR>
" let g:webdevicons_enable_ctrlp = 1
