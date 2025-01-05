# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="robbyrussell"
ZSH_THEME="awesomepanda"
plugins=(
    git
    archlinux
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Check archlinux plugin commands here
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/archlinux

# Display Pokemon-colorscripts
# Project page: https://gitlab.com/phoneybadger/pokemon-colorscripts#on-other-distros-and-macos
# pokemon-colorscripts --no-title -s -r

# Set-up icons for files/folders in terminal
alias ls='eza -a --icons'
alias ll='eza -al --icons'
alias lt='eza -a --tree --level=1 --icons'
alias update='sudo pacman -Syu'
alias bye='systemctl poweroff'
alias hsearch='history | grep'
alias logs='sudo journalctl -xe'
alias myip="ip addr | grep 'inet ' | grep -v '127.0.0.1' | awk '{print \$2}' | cut -d/ -f1"
alias pingtest='ping -c 4 google.com'
alias disk='df -h'
alias cls='clear'
alias grubupdate='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias ollama='ollama run llama3.2'
alias x='exit'
alias bigfiles='du -ah . | sort -rh | head -n 10'
alias inspire='curl -s https://api.quotable.io/random | jq .content'
alias lg='lazygit'
alias ls='eza -a --icons'
alias hotspot='nmcli dev wifi hotspot ifname wlan0 ssid aksshay-arch password aksshay88'
alias graphicsstuff='glxinfo | grep "OpenGL renderer'
# Set-up FZF key bindings (CTRL R for fuzzy history finder)
source <(fzf --zsh)
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
eval "$(pyenv init -)"
eval "$(pyenv init -)"
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"
# zoxide
eval "$(zoxide init zsh)"
# Android SDK path
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
eval "$(pyenv init -)"
if [[ $- == *i* ]]; then
    fastfetch
fi

# bun completions
[ -s "/home/aksshay88/.bun/_bun" ] && source "/home/aksshay88/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PATH="$HOME/.local/bin:$PATH"
