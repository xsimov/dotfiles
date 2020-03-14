#! /bin/sh

# Run macOS terminal tweaks
sh ./macos/tweaks.sh

# add an if to avoid installing it more than once
# Install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

ln -s $(pwd)/Brewfile ~/Brewfile

brew bundle install

mkdir -p ~/.vim/colors ~/.vim/ftplugin ~/.config/nvim/colors

# link actual dotfiles
ln -s -f $(pwd)/ruby/rspec ~/.rspec
ln -s -f $(pwd)/vim/vimrc ~/.vimrc
ln -s -f $(pwd)/vim/vimrc ~/.config/nvim/init.vim
ln -s -f $(pwd)/vim/angr.vim ~/.vim/colors/angr.vim
ln -s -f $(pwd)/vim/angr.vim ~/.config/nvim/colors/angr.vim
ln -s -f $(pwd)/vim/ftplugin ~/.vim/ftplugin
ln -s -f $(pwd)/zsh/zshrc ~/.zshrc
ln -s -f $(pwd)/tmux/tmux.conf ~/.tmux.conf
ln -s -f $(pwd)/global_gitignore ~/.gitignore
ln -s -f $(pwd)/gitconfig ~/.gitconfig

# install oh-my-zsh
# MISSING!

ln -s -f $(pwd)/zsh/avit_modified.zsh-theme ~/.oh-my-zsh/themes/avit_modified.zsh-theme

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# install nvim plugins
nvim +PluginInstall +qall
