#! /bin/sh

# Install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Ansible
brew install ansible

# Run ansible dev env playbook
ansible-playbook ansible/provide_dev_env.yml -i ansible/hosts
