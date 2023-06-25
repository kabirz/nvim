# nvim config for lazy
```bash
git clone -b lazy https://github.com/kabirz/nvim ~/.config/nvim/
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
