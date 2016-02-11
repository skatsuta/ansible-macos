# Ansible playbook for OS X

This playbook provides automatic installation of:

- dot files
- zsh
- Vim
- Go
- Homebrew packages
- Ruby
- Vagrant plugins
- fzf
- Node modules

on your OS X.

## Usage

### Setup

Just run

```sh
$ curl -fsSL https://raw.githubusercontent.com/skatsuta/ansible-osx/master/install | bash
```

Then you will be prompted like the following:

```sh
Copying your SSH public key into your clipboard...
Now you should add the generated key to GitHub before proceeding.
Are you sure you want to proceed? [Yn] 
```

Your public key is already copied in your clipboard, so add the key to GitHub before hitting the enter key.

After all the setup processes are done, you will see the following message:

```sh
Initialization has completed successfully.
To start provisioning, run

  $ cd /Users/skatsuta/src/github.com/skatsuta/ansible-osx
  $ ansible-playbook site.yml
```

Then go to the next step.

### Full Installation

If you want to install all the packages above, just run

```sh
$ ansible-playbook site.yml
```

### Partial Installation

If you want to install a paticular package, for example, `go`, run with `-t` option:

```sh
$ ansible-playbook site.yml -t go
```

This provisions only Go environment.