#!/bin/bash


# Configurations
GHUSER=${GHUSER:-skatsuta}
REPO=${REPO:-ansible-osx}
DEST=${DEST:-${HOME}/src/github.com/${GHUSER}}


# Generate SSH Key
generate_ssh_key() {
  if [[ -f ~/.ssh/id_rsa ]]; then
    echo "SSH key is already generated."
    return
  fi

  echo "Generate SSH key..."
  ssh-keygen
}

# Prompt the confirmation of adding the SSH key to GitHub
prompt_confirmation() {
  echo "You should add the generated key to GitHub before proceeding."
  while true; do
    read -p "Are you sure to proceed? [Yn] " yn
    case $yn in
      [Yy]*|'')
        echo "Proceeding..."
        break
        ;;
      [Nn]*)
        echo "Stopped."
        exit 1
        ;;
    esac
  done
}

# Install Xcode
install_xcode() {
  if [[ -d /Library/Developer/CommandLineTools ]]; then
    echo "Xcode is already installed."
    return
  fi

  echo "Install Xcode..."
  echo "*** If a dialog is shown,\
    push 'Get Xcode' button to download Xcode before proceeding! ***"
  sudo xcodebuild -license
  xcode-select --install
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

  echo "Clone ${GHUSER}/${REPO}..."
  git clone git@github.com:${GHUSER}/${REPO}.git
}

# Provision
provision() {
  #cd ${DEST}/${REPO}
  #echo "Start provisioning..."
  #ansible-playbook site.yml

  local dir="${DEST}/${REPO}"
  echo "Initialization has completed successfully."
  echo "To start provisioning, run"
  echo
  echo "  \$ cd ~/repos/${REPO}"
  echo '  $ ansible-playbook site.yml'
}

# Run the above functions
run() {
  generate_ssh_key
  prompt_confirmation
  install_xcode
  install_homebrew
  install_packages_for_ansible
  clone_repo
  provision
}

run
