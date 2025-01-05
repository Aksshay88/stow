# Welcome to My Dotfiles Repository! 🎉

## WARNING: Proceed with Caution! ⚠️

You’ve stumbled upon my dotfiles repository, where I keep all my beloved configurations, setup scripts, and a few secret tricks (just kidding, it’s just configurations). 🧙‍♂️

Before you dive in, remember: **STOW responsibly!** This script has the potential to overwrite things. Only use this if you're comfortable with a little chaos (and possibly some late-night debugging). 😜

## Requirements 🚀

- **stow**: This is the magic tool that will create symlinks from the configurations in this repository to the appropriate locations in your home directory.
- **git**: Gotta clone this repo somehow, right?
- **bash**: I’m assuming you’re on a system that uses bash. If not, you probably already know what you’re doing anyway.
- **sudo/root**: If you want to install this for another user or if you’re feeling fancy with global changes, you might need some superpowers! 💪

### Install `stow` on your system (if you don’t have it already) 🛠️

#### For Arch Linux (because we like the good stuff):

```bash
sudo pacman -S stow
```

#### For Ubuntu/Debian:

```bash
sudo apt-get install stow
```

#### For Fedora:

```bash
sudo dnf install stow
```

#### For macOS (using Homebrew):

```bash
brew install stow
```

How to Use 🚀

1. Clone this Repo! 🚗💨

First, clone this repository to your machine (or clone it into the void, you know, wherever you want).

## Installation 🚀

1. Clone this repository to your home directory:

```bash
git clone https://github.com/aksshay88/stow.git
```

2. Change into the directory:

```bash
cd stow
```

3. Run the Installation Script 🏃‍♂️💨

Inside the cloned repo, you’ll find the install_dotfiles.sh script. It's your new best friend (until it starts overwriting things). Just run it!

```bash
sudo ./install_dotfiles.sh username
```

Don't worry if you forget the username; it'll default to your current user (but you might want to double-check before doing that). 😉

What Happens When You Run This? 🤔

    stow will create symbolic links for all your configuration files in your home directory. It’s like magic, but safer. 🎩✨
    You’ll be equipped with Neovim, kitty, tmux, and any other configuration wizardry I've deemed worthy.
    It’s fully customizable – tweak it as needed, and feel free to make it your own. 🤹‍♀️

How to Tweak It 🤔

You can customize things with the following:

    Add your own configurations: Got some cool setup files? Drop them in the appropriate directory (e.g., ~/.config/nvim/) and run the stow process again.
    Edit the scripts: If you want to change which configurations are stowed, just tweak the install_dotfiles.sh script to fit your needs. It’s all yours!

Troubleshooting 😱
Something’s not working? Here's the most common issues:

    stow is not installed: Did you follow the installation instructions above? If not, please do.
    Missing permissions: You might need to run the script with sudo if you’re installing for another user or making system-wide changes. Don’t panic, you’ve got this! 💪
    Overwritten files: If you accidentally overwrite something important, don’t panic! That’s what backups are for, right? If you didn’t backup, I recommend a nice, long talk with the backup gods. 😬

## License 📜

License 📜

This repository is open source and free to use, but if you somehow manage to break your system with it, I take no responsibility. Remember to always stow responsibly.

## Uninstallation 🗑️

If you want to remove the configurations, you can run the uninstall_dotfiles.sh script. It will remove all the symlinks created by stow.

```bash
sudo ./uninstall_dotfiles.sh username
```
