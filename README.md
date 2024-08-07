# my-vim-config
A minimal vim config with simple shortcut keys used for rust 🦀.

fast ✨, simple 💤, less than 100 lines.

- **lsp support**: coc
- **fuzzy finder**: fzf
- **theme**: nord
- **plugin manager**: plug
- **file tree**: nerd tree

![screenshot here !](https://github.com/Marwan-lord/my-vim-config/blob/main/images/vim.png)
![screenchot](https://github.com/Marwan-lord/my-vim-config/blob/main/images/vim2.png)

**key maps you can change if you want**:

```vim script
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
```
**all the plugins and you can add more**: 

```vim script
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
```

**Coc keymaps that add ide features**

```vim script
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
```
