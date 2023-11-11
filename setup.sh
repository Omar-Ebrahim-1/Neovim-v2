#! /bin/bash
# install neovim
sudo pacman -S neovim
# install packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
# install copilot
git clone https://github.com/github/copilot.vim.git ~/.config/nvim/pack/github/start/copilot.vim
# run setup.lua
lua ./setup/setup.lua
