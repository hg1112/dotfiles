echo "Check and download neovim dependencies ..."
sudo pacman -S --needed base-devel cmake unzip ninja tree-sitter

echo "Download neovim source ..."
git clone https://github.com/neovim/neovim.git ~/apps/neovim

echo "Build release ..."
sudo make -C ~/apps/neovim CMAKE_BUILD_TYPE=Release

echo "Install nvim ..."
sudo make -C ~/apps/neovim install

