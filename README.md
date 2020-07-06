# nvim config for dein
```bash
git clone https://github.com/kabirz/nvim ~/.config/nvim/
```
### for vim
```bash
ln -s .config/nvim/init.vim ~/.vimrc
```

### depends
* python-neovim
* node & npm
* the_silver_searcher
* ripgrep
* ranger
* powerline & nerd font

### Keymap

| Key             | content                   |
| --------------- | ------------------------- |
| \<space>h/j/k/l | \<C-W>h/j/k/l             |
| \<leader>ev     | tabedit $MYVIMRC          |
| \<leader>sv     | source $MYVIMRC           |
| \<space><sapce> | set mouse=a               |
| \<space>c       | close vim                 |
| \<C-p>          | fzf                       |
| \<C-f>          | ag                        |
| \<leader>f      | ranger                    |
| \<leader>a      | easyalgin                 |
| \<leader>j      | MRU                       |
| \<space>y       | coc yank                  |
| \<space>a       | coc explorer              |
| \<space>by      | CocList tasks             |
| \<leader>j      | call jumps andd select    |
| \<leader>t      | coc-translator popup      |
| \<leader>e      | coc-translator echo       |
| \<leader>r      | coc-translator replace    |
| \<space>fi      | leaderf file              |
| \<space>fu      | leaderf function          |
| \<space>fr      | leaderf gtag --reference  |
| \<space>fd      | leaderf gtag --defination |
| \<space>fp      | leader gtag --recall      |
| \<space>fs      | leaderf gtag --symbol     |
| \<space>fg      | leaderf gtag --grep       |
| \<space>fo      | leader gtag --by-context  |
| \<space>ff      | leader rg                 |
| \<space>fm      | leader mru current        |
| \<space>fh      | leader mru all history    |
| \<space>Fr      | file run                  |
| \<space>Fb      | file build                |
| \<space>cb      | cmake build               |
| \<space>ca      | cmake build and run       |
| \<space>cr      | cmake run                 |
| \<space>cc      | cmake clean               |
| bf              | :bfirst                   |
| be              | :blast                    |
| bh              | :bnext                    |
| bl              | :bprevious                |
| bp              | change dirctory to file   |
| gd              | coc defination            |
| gr              | coc reference             |
| gi              | coc implement             |
| tf              | :tabfirst                 |
| te              | :tablast                  |
| th              | :tabnext                  |
| tl              | :tabprevious              |

