#!/bin/sh

cd ..
#ssh-keygen
cat .ssh/id_rsa.pub
echo Press any key to continue...
read r

mkdir powerline_fonts
curl -o "powerline_fonts/Regular.ttf" "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf"
curl -o "powerline_fonts/Bold.ttf" "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf"
curl -o "powerline_fonts/Italic.ttf" "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf"
curl -o "powerline_fonts/Bold Italic.ttf" "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf"
open powerline_fonts
echo Install fonts and press any key to continue...
read r
rm -rf powerline_fonts

git clone --depth=1 https://gitee.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
echo "alias nv='~/vimr'" >> ~/.zshrc
source ~/.zshrc


open "https://github.com/tonsky/FiraCode"
echo "Download Firacode Font and press any key to continue..."
read r
cd Downloads/
mkdir font
mv Fira*.zip font/
cd font
unzip Fira*.zip
open ttf/
echo "Install Fira Code fonts and press any key to continue..."
read r
cd ../
rm -rf font Fira*.zip
cd ../

git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
cd backup
mkdir -p ~/.config/nvim/
cp init1.lua ~/.config/nvim/init.lua
cd ..

open "https://github.com/qvacua/vimr/releases/"
echo "Download VimR and press any key to continue..."
read r
cd Downloads/
tar -xf VimR*.tar.bz2
rm -rf VimR*.tar.bz2

open VimR.app
echo "Do the following:"
echo "1. Type :PackerInstall"
echo "2. set the font up"
echo "3. create vimr in the Downloads folder"
echo "4. close vimr"
echo "5. Press any key to continue..."
read r
cd ..
cp backup/init.lua ~/.config/nvim/init.lua
