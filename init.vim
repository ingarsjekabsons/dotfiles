set completeopt+=noinsert
set expandtab
set tabstop=4
set shiftwidth=4
colorscheme desert
set background=light

" we want preview window to close on enabling insert mode
let g:ale_close_preview_on_insert = 1

call plug#begin('~/.local/share/nvim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'w0rp/ale'
Plug 'neovimhaskell/haskell-vim'
Plug 'vim-airline/vim-airline'
Plug 'drmingdrmer/vim-tabbar'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/vim-slumlord'
Plug 'aklt/plantuml-syntax'
Plug 'LnL7/vim-nix'
call plug#end()

let g:ale_linters_explicit = 1
let g:ale_fixers_explicit = 1
let g:ale_haskell_hie_executable = 'hie-wrapper'

" turn HIE on
let g:ale_linters = {'haskell': ['hie', 'hlint'],
\                    'cpp': ['clangd'],
\                   }

let g:ale_fixers = {'haskell': ['hlint']}

nnoremap <leader>t :ALEHover<cr>
nnoremap <leader>r :ALEFindReferences<cr>
nnoremap <leader>d :ALEGoToTypeDefinition<cr>
nnoremap <leader>s :ALEDetail<cr>

nmap <F8> :TagbarToggle<CR>

" cycle through buffers
noremap <C-h> :bprev<cr>
noremap <C-l> :bnext<cr>

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

let g:airline#extensions#ale#enabled = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_open_list = 1
let g:ale_set_loclist = 0
let g:ale_lint_delay = 20000

let g:ale_set_quickfix = 0
let g:ale_completion_enabled = 1
let g:ale_lint_on_save = 1

let g:haskell_indent_if = 2
let g:haskell_indent_case = 2
let g:haskell_indent_let = 4
let g:haskell_indent_before_where = 2
let g:haskell_indent_do = 3
