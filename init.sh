# Install Xcode
echo "Install Xcode..."
xcode-select --install


# Install Homebrew
if [[ -f /usr/local/bin/brew ]]; then
  echo "Homebrew is already installed."
else
  echo "Install Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi


# Install apps for running Ansible playbook
echo "Install apps for running Ansible playbook..."
brew install python
brew install ansible
brew install git


# Clone my GitHub repository
DEST=~/Git
REPO=ansible-osx
USER=skatsuta
mkdir -p $DEST
cd $DEST
if [[ -d $DEST/$REPO ]]; then
  echo "Repository is already cloned."
else
  echo "Clone my GitHub repository..."
  git clone https://github.com/${USER}/${REPO}.git
fi


# Provision
cd $DEST/ansible-osx
echo "Provision my machine in `pwd`"
ansible-playbook site.yml --skip-tags=homebrew,ruby,vagrant

