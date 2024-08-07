let g:NERDTreeWinPos = "right"
let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --no-ignore-vcs'

set nocompatible
set redrawtime=10000
set background=dark
set laststatus=2
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nu
set nowrap
set nobackup
set undodir=~/.vim/undordir
set undofile
set incsearch
set relativenumber
set cursorline
set belloff=all
set noshowmode

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/lightline.vim'
Plug 'nordtheme/vim'
Plug 'tribela/vim-transparent'
Plug 'preservim/nerdtree'
Plug 'LunarWatcher/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'rust-lang/rust.vim'
call plug#end()
syntax on
filetype plugin on

let mapleader = " "
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>ff :Files<cr>
nmap <leader>w :w<cr>
nnoremap <leader>t :NERDTreeFocus<CR>
noremap <leader>v :botright vertical terminal<CR>
nmap <leader>n :bnext<CR>
nmap <leader>b :Buffers<cr>
nmap <leader>mf :GFiles<cr>

set termguicolors
colorscheme nord 
let g:lightline = { 'colorscheme': 'nord' }

"====================== Coc Settings =============================
set encoding=utf-8
set hidden

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
    if CocAction('hasProvider', 'hover')
      call CocActionAsync('doHover')
    else
      call feedkeys('K', 'in')
    endif
endfunction

autocmd CursorHold * silent call CocActionAsync('highlight')
nmap <leader>rn <Plug>(coc-rename)

xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
command! -nargs=0 Format :call CocActionAsync('format')

set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

nnoremap <silent><nowait> <space>d  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent><nowait> <space>ce  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent><nowait> <space>cc  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
