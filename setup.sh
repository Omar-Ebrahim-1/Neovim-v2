#! /bin/bash
# install neovim
sudo pacman -S neovim
# install packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
# run setup.lua
lua ./setup/setup.lua
