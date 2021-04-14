config:
	@mkdir -p ~/.config
git:
	sudo pacman -S --needed git
	git config --global user.name "karna"
	git config --global user.email "harishgontu@gmail.com"
	git config --global pull.rebase true

shell:
	sudo pacman -S --needed fish tmux bash alacritty
	ln -sfT $(CURDIR)/alacritty ~/.config/alacritty

aur:
	git clone https://aur.archlinux.org/yay.git ~/apps/yay
	cd ~/apps/yay && makepkg -si

awesome: config
	sudo pacman -S --needed awesome nitrogen picom alsa-utils mpc mpd scrot unclutter xsel slock
	ln -sfT $(CURDIR)/awesome ~/.config/awesome

python: shell
	bash install-conda.sh

neovim:	git config
	bash build-neovim.sh
	ln -sfT $(CURDIR)/nvim ~/.config/nvim

vscode:	git aur
	yay -S visual-studio-code-bin

scala:
	bash install-coursier.sh

all:	git shell awesome python neovim scala aur
