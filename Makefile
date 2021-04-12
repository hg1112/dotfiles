git:
	@pacman -S --needed git

shell:
	@pacman -S --needed fish tmux

awesome:
	@pacman -S --needed awesome
	@ln -s $(CURDIR)/awesome/ ~/.config/awesome/

python: shell
	@curl https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh | fish

neovim:
	@pacman -S --needed base-devel cmake unzip ninja tree-sitter
	@git clone git@github.com:neovim/neovim.git ~/apps/neovim
	@make -C ~/apps/neovim CMAKE_BUILD_TYPE=Release
	@make -C ~/apps/neovim install
	@ln -s $(CURDIR)/nvim/ ~/.config/nvim/

vscode:	git
	@git clone https://AUR.archlinux.org/visual-studio-code-bin.git ~/apps/vscode
	@makepkg -C ~/apps/vscode -s
	@pacman -U ~/apps/vscode-*.pkg.tar.xz

scala:
	@curl -fLo cs https://git.io/coursier-cli-"$(uname | tr LD ld)"
	@chmod +x cs
	@./cs install cs
	@rm cs

all:	git shell awesome python neovim scala


