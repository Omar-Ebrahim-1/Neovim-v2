#! /bin/bash
sudo pacman -S --noconfirm neovim
# install packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# install LaTeX
sudo pacman -S --noconfirm texlive-basic texlive-binextra texlive-latexextra \
  texlive-mathscience latexmk

# custom script
lua ./setup/setup.lua

# install lsp
sudo pacman -S --noconfirm nodejs npm
sudo npm -i -g pyright
