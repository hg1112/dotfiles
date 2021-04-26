config:
	@mkdir -p ~/.config
	@ln -sfT $(CURDIR)/alacritty ~/.config/alacritty
	@chmod +x $(CURDIR)/awesome/autorun.sh
	@ln -sfT $(CURDIR)/awesome ~/.config/awesome
	@ln -sfT $(CURDIR)/nvim ~/.config/nvim
	@ln -sfT $(CURDIR)/fish ~/.config/fish

fonts:
	@yay -S --needed nerd-fonts-complete

git:
	@sudo pacman -S --needed git
	@git config --global user.name "karna"
	@git config --global user.email "harishgontu@gmail.com"
	@git config --global pull.rebase true

image:
	@sudo pacman -S --needed imagemagick

shell:
	@sudo pacman -S --needed fish tmux bash alacritty openssh inetutils

aur:
	@git clone https://aur.archlinux.org/yay.git ~/apps/yay
	@cd ~/apps/yay && makepkg -si

awesome: config
	@sudo pacman -S --needed awesome nitrogen picom alsa-utils mpc mpd scrot unclutter xsel slock

python: shell
	@bash install-conda.sh

neovim:	git config
	@bash build-neovim.sh

vscode:	git aur
	@yay -S --needed visual-studio-code-bin

scala:
	@bash install-coursier.sh

neofetch: shell
	@yay -S neofetch

node:
	@sudo pacman -S --needed nodejs npm

all:	git shell awesome python neovim scala aur image sdkman neofetch
