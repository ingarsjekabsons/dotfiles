" we want to see errors in preview window
let g:ale_cursor_detail = 1

" we want preview window to close on enabling insert mode
let g:ale_close_preview_on_insert = 1

execute pathogen#infect()

silent! helptags ALL
" a little faster matcher function for CtrlP
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

" cycle through buffers
noremap <C-h> :bprev<cr>
noremap <C-l> :bnext<cr>

syntax on
set laststatus=2
set incsearch
set ruler
set expandtab
set shiftwidth=4
set tabstop=4
set autoindent
set si
set scl=yes

autocmd Filetype java set makeprg=javac\ %
autocmd Filetype haskell set makeprg=cabal\ new-build
autocmd FileType make setlocal noexpandtab

set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#
map <F9> :make<Return>:copen<Return>
map <F10> :cprevious<Return>
map <F11> :cnext<Return>

nnoremap <leader>. :CtrlPTag<cr>
nnoremap <F8> :TagbarToggle<cr>
nnoremap <leader>t :ALEHover<cr>
nnoremap <leader>r :ALEFindReferences<cr>
nnoremap <leader>d :ALEGoToDefinition<cr>

autocmd FileType haskell nmap <leader>i :silent update <bar> HsimportModule<cr>
autocmd FileType haskell nmap <silent> <F1> :silent update <bar> HsimportModule<CR>

au BufNewFile,BufRead,BufReadPost *.dhall set syntax=haskell
au BufNewFile,BufRead,BufReadPost *.nix set syntax=nix

" we want buffers as tabs
let g:airline#extensions#tabline#enabled = 1

" run only configured linters
let g:ale_linters_explicit = 1

let g:ale_haskell_hie_executable = 'hie-wrapper'

" turn HIE on
let g:ale_linters = {'haskell': ['hie'],
\                    'cpp': ['gcc','cppcheck'],
\                   }

" we want ALE linter warnings in status line
let g:airline#extensions#ale#enabled = 1

" we want ALE completion sugestions
let g:ale_completion_enabled = 1
