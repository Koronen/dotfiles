.PHONY: default submodules install copy

default: submodules

submodules:
	git submodule init
	git submodule update

install: submodules
	cd ~; \
	test ! -d .bash.d && ln -sf .dotfiles/bash.d .bash.d; \
	ln -sf .dotfiles/bash_profile .bash_profile; \
	ln -sf .dotfiles/bashrc .bashrc; \
	ln -sf .dotfiles/dircolors .dircolors; \
	ln -sf .dotfiles/gemrc .gemrc; \
	ln -sf .dotfiles/gitconfig .gitconfig; \
	ln -sf .dotfiles/gitignore .gitignore; \
	ln -sf .dotfiles/inputrc .inputrc; \
	ln -sf .dotfiles/irbrc .irbrc; \
	ln -sf .dotfiles/oh-my-zsh .oh-my-zsh; \
	ln -sf .dotfiles/pentadactylrc .pentadactylrc; \
	ln -sf .dotfiles/profile .profile; \
	ln -sf .dotfiles/rvmrc .rvmrc; \
	ln -sf .dotfiles/screenrc .screenrc; \
	mkdir -p .ssh; ln -sf ../.dotfiles/ssh/config .ssh/config; \
	mkdir -p .config/terminator; ln -sf ../../.dotfiles/terminator/config .config/terminator/config; \
	test ! -d .vim && ln -sf .dotfiles/vim .vim; \
	ln -sf .dotfiles/vimrc .vimrc; \
	test ! -d .zsh.d && ln -sf .dotfiles/zsh.d .zsh.d; \
	ln -sf .dotfiles/zshenv .zshenv; \
	ln -sf .dotfiles/zshrc .zshrc;

copy: submodules
	cd ~; \
	rm -f .bash.d; cp -r .dotfiles/bash.d .bash.d; \
	rm -f .bash_profile; cp .dotfiles/bash_profile .bash_profile; \
	rm -f .bashrc; cp .dotfiles/bashrc .bashrc; \
	rm -f .dircolors; cp .dotfiles/dircolors .dircolors; \
	rm -f .gemrc; cp .dotfiles/gemrc .gemrc; \
	rm -f .gitconfig; cp .dotfiles/gitconfig .gitconfig; \
	rm -f .gitignore; cp .dotfiles/gitignore .gitignore; \
	rm -f .inputrc; cp .dotfiles/inputrc .inputrc; \
	rm -f .irbrc; cp .dotfiles/irbrc .irbrc; \
	rm -f .oh-my-zsh; cp -r .dotfiles/oh-my-zsh .oh-my-zsh; \
	rm -f .pentadactylrc; cp .dotfiles/pentadactylrc .pentadactylrc; \
	rm -f .profile; cp .dotfiles/profile .profile; \
	rm -f .rvmrc; cp .dotfiles/rvmrc .rvmrc; \
	rm -f .screenrc; cp .dotfiles/screenrc .screenrc; \
	rm -f .ssh/config; cp .dotfiles/ssh/config .ssh/config; \
	rm -f .config/terminator/config; cp .dotfiles/terminator/config .config/terminator/config; \
	rm -f .vim; cp -r .dotfiles/vim .vim; \
	rm -f .vimrc; cp .dotfiles/vimrc .vimrc; \
	rm -f .zsh.d; cp -r .dotfiles/zsh.d .zsh.d; \
	rm -f .zshenv; cp .dotfiles/zshenv .zshenv; \
	rm -f .zshrc; cp .dotfiles/zshrc .zshrc;

