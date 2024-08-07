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

key maps you can change if you want:

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
