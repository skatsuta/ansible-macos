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


# Configurations
USER=skatsuta
REPO=ansible-osx
DEST=${HOME}/repos


# Install Xcode
install_xcode() {
  if [[ -d /Library/Developer/CommandLineTools ]]; then
    echo "Xcode is already installed."
    return
  fi

  echo "Install Xcode..."
  echo "*** If a dialog is shown,\
    push 'Get Xcode' button to download Xcode before proceeding! ***"
  xcode-select --install
  sudo xcodebuild -license
}

# Install Homebrew
install_homebrew() {
  if [[ -f /usr/local/bin/brew ]]; then
    echo "Homebrew is already installed."
    return
  fi

  echo "Install Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

  echo "Run 'brew doctor'..."
  brew doctor
}

# Install packages for running Ansible playbook
install_packages_for_ansible() {
  echo "Install packages for running Ansible..."
  brew install git python ansible
}

# Clone my GitHub repository
clone_repo() {
  if [[ -d ${DEST}/${REPO} ]]; then
    echo "Repository is already cloned."
    return
  fi

  mkdir -p $DEST
  cd $DEST

  echo "Clone ${USER}/${REPO}..."
  git clone git@github.com:${USER}/${REPO}.git
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
  install_packages_for_ansible
  clone_repo
  provision
}

run

