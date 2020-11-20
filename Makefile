
all: install

install:
	./install.sh

uninstall:
	stow -v -t $(HOME) -D bash
	stow -v -t $(HOME) -D i3
	stow -v -t $(HOME) -D mpv
	stow -v -t $(HOME) -D neofetch
	stow -v -t $(HOME) -D newsboat
	stow -v -t $(HOME) -D ranger
