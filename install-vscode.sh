git clone https://AUR.archlinux.org/visual-studio-code-bin.git ~/apps/vscode
cd ~/apps/vscode
makepkg -s
sudo pacman -U vscode-*.pkg.tar.xz
