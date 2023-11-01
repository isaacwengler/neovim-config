# Neovim Config

## Loosely followed
- https://www.youtube.com/watch?v=w7i4amO_zaE
- https://github.com/ThePrimeagen/init.lua

## Set up on a new machine

### Install packages
- https://github.com/neovim/neovim
- https://github.com/BurntSushi/ripgrep
- https://iterm2.com
- https://www.nerdfonts.com/font-downloads
    - Jetbrains Mono font from nerd fonts

### Configurations
- set iterm font to 14 Jetbrains Mono
- set iterm transparency and blur to 15
- Uncheck "native full screen windows" in iterm settings 

Run this to put the nvim config in the correct spot
```
cd ~/.config
git clone this-repo-url
mv neovim-config nvim
```

Set ~/.zshrc
```
alias vim="nvim"
alias vi="nvim"
# Enable vi mode
bindkey -v
```

## Plugins Installed
- https://github.com/folke/lazy.nvim
- https://github.com/nvim-telescope/telescope.nvim
- https://github.com/nvim-treesitter/nvim-treesitter
- https://github.com/Mofiqul/vscode.nvim
- https://github.com/mbbill/undotree
- https://github.com/VonHeikemen/lsp-zero.nvim
- https://github.com/Raimondi/delimitMate 
- https://github.com/nvim-tree/nvim-tree.lua
- https://github.com/lewis6991/gitsigns.nvim
- https://github.com/sindrets/diffview.nvim
- https://github.com/romgrk/barbar.nvim

Check out the [custom remaps](./custom-mappings.md)
