set completeopt+=noinsert
set expandtab
set tabstop=4
set shiftwidth=4
set background=light
colorscheme desert
set background=light

call plug#begin('~/.local/share/nvim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'neovimhaskell/haskell-vim'
Plug 'vim-airline/vim-airline'
Plug 'drmingdrmer/vim-tabbar'
Plug 'scrooloose/vim-slumlord'
Plug 'aklt/plantuml-syntax'
Plug 'LnL7/vim-nix'
Plug 'tpope/vim-fugitive'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'junegunn/fzf'
Plug 'Shougo/deoplete.nvim'
Plug 'vim-syntastic/syntastic'
Plug 'mpickering/hlint-refactor-vim'
call plug#end()

let g:LanguageClient_rootMarkers = {
    \ 'haskel': ['*.cabal', 'stack.yaml'],
    \ 'elm': ['elm.json'],
    \ }
let g:LanguageClient_serverCommands = {
    \ 'haskell': ['ghcide', '--lsp'],
    \ 'elm': ['elm-language-server'],
    \ }

let g:syntastic_haskell_checkers = ['hlint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


let g:LanguageClient_settingsPath = '~/.config/nvim'
let g:deoplete#enable_at_startup = 1
let g:LanguageClient_changeThrottle = 2
let g:LanguageClient_hasSnippetSupport = 1

nnoremap <leader>c :call LanguageClient_contextMenu()<CR>
nnoremap <leader>t :call LanguageClient#textDocument_hover()<CR>
nnoremap <leader>d :call LanguageClient#textDocument_definition()<CR>

" cycle through buffers
noremap <C-h> :bprev<cr>
noremap <C-l> :bnext<cr>

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
