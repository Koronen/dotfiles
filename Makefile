default: install

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
	ln -sf .dotfiles/tmux.conf .tmux.conf; \
	test ! -d .vim && ln -sf .dotfiles/vim .vim; \
	ln -sf .dotfiles/vimrc .vimrc; \
	test ! -d .zsh.d && ln -sf .dotfiles/zsh.d .zsh.d; \
	ln -sf .dotfiles/zshenv .zshenv; \
	ln -sf .dotfiles/zshrc .zshrc;

