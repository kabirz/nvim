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
* fzf
* powerline & nerd font
* silicon

#### for Ubuntu 20.04
need install rust-analyzer
```bash
sudo apt install neovim silversearcher-ag ranger cmake nodejs yarn npm ccls clang-format global ripgrep xonsh ipython3
cargo install silicon
```

#### for archlinux
```bash
cat ./.arch_tool | paru -S -
```
