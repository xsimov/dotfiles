#! /bin/sh

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Run macOS terminal tweaks
sh ./macos/tweaks.sh

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

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
ln -s -f $(pwd)/lvim ~/.config/lvim

ln -s -f $(pwd)/zsh/avit_modified.zsh-theme ~/.oh-my-zsh/themes/avit_modified.zsh-theme
