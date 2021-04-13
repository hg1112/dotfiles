config:
	@mkdir -p ~/.config
git:
	sudo pacman -S --needed git
	git config --global user.name "karna"
	git config --global user.email "harishgontu@gmail.com"
	git config --global pull.rebase true

shell:
	sudo pacman -S --needed fish tmux bash

awesome: config
	sudo pacman -S --needed awesome nitrogen picom
	ln -sfT $(CURDIR)/awesome ~/.config/awesome

python: shell
	bash install-conda.sh

neovim:	git config
	bash build-neovim.sh
	ln -sfT $(CURDIR)/nvim ~/.config/nvim

vscode:	git
	bash install-vscode.sh

scala:
	bash install-coursier.sh

all:	git shell awesome python neovim scala
