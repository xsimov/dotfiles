#! /bin/sh

# Run macOS terminal tweaks
sh ./macos/tweaks.sh

# Install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

ln -s $(pwd)/Brewfile ~/Brewfile

brew bundle install

# make zsh my default shell
chsh -s /bin/zsh Xavier

mkdir -p ~/.vim/colors ~/.vim/ftplugin

# link actual dotfiles
ln -s -f $(pwd)/ruby/rspec ~/.rspec
ln -s -f $(pwd)/vim/vimrc ~/.vimrc
ln -s -f $(pwd)/vim/angr.vim ~/.vim/colors/angr.vim
ln -s -f $(pwd)/vim/ftplugin ~/.vim/ftplugin
ln -s -f $(pwd)/zsh/zshrc ~/.zshrc
ln -s -f $(pwd)/tmux/tmux.conf ~/.tmux.conf
ln -s -f $(pwd)/global_gitignore ~/.gitignore

# install nvim plugins
nvim +PluginInstall +qall
