
all: install

install:
	./install.sh

uninstall:
	stow -v -t $(HOME) -D config
	stow -v -t $(HOME) -D i3
	stow -v -t $(HOME) -D mpv
	stow -v -t $(HOME) -D neofetch
	stow -v -t $(HOME) -D neovim
	stow -v -t $(HOME) -D newsboat
	stow -v -t $(HOME) -D ranger
	stow -v -t $(HOME) -D rofi
	stow -v -t $(HOME) -D thunar
	stow -v -t $(HOME) -D vim
	stow -v -t $(HOME) -D X11
	stow -v -t $(HOME) -D zsh
