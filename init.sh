#!/bin/bash

############### README ###############
#
# Before running this script,
# you should do the following things:
#
# 1. run "ssh-keygen" to generate your SSH key
# 2. add the key to GitHub
#
######################################

# Variables
USER=skatsuta
REPO=ansible-osx
DEST=${HOME}/repos

# Install Xcode
install_xcode() {
  echo "Install Xcode..."
  echo "*** Please download Xcode before proceeding! ***"
  xcode-select --install
  sudo xcodebuild -license
}

# Install Homebrew
install_homebrew() {
  if [[ -f /usr/local/bin/brew ]]; then
    echo "Homebrew is already installed."
  else
    echo "Install Homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi

  brew doctor
}

# Install apps for running Ansible playbook
install_apps_for_ansible() {
  echo "Install apps for running Ansible..."
  brew install git python ansible
}

# Clone my GitHub repository
clone_repo() {
  mkdir -p $DEST
  cd $DEST

  if [[ -d $DEST/$REPO ]]; then
    echo "Repository is already cloned."
  else
    echo "Clone ${USER}/${REPO}..."
    git clone git@github.com:${USER}/${REPO}.git
  fi
}

# Provision
provision() {
  cd ${DEST}/${REPO}
  echo "Start provisioning..."
  ansible-playbook site.yml
}

# Run the above functions
run() {
  install_xcode
  install_homebrew
  install_apps_for_ansible
  clone_repo
  provision
}

run

