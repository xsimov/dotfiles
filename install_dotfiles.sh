#! /bin/sh

# Add custom theme
# mkdir -p ~/.oh-my-zsh/custom/themes
# cp zsh/avit_modified.zsh-theme ~/.oh-my-zsh/custom/themes/avit_modified.zsh-theme

# Add custom ZSHrc
ln -s ~/dotfiles/zsh/zshrc ~/.zshrc

# Add VImrc
ln -s ~/dotfiles/vim/vimrc ~/.vimrc

# Add tmux.conf
ln -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf

# Add global gitignore
ln -s ~/dotfiles/global_gitignore ~/.gitignore
