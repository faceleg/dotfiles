# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bira"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/opt/real/RealPlayer

# From http://monangik.wordpress.com/2011/04/21/install-zsh-shell-on-ubuntu/
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# From: http://askubuntu.com/questions/1577/moving-from-bash-to-zsh
autoload -U compinit
compinit

autoload -U zmv

for func in $^fpath.zwc(N-.r:); autoload -U -w $func

setopt completeinword

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

zstyle ':completion:*:killall:*' command 'ps -u $USER -o cmd'

autoload select-word-style
select-word-style shell

alias ll='ls -l'
alias la='ls -a'

HISTFILE=~/.zhistory
HISTSIZE=SAVEHIST=15000
setopt incappendhistory
setopt sharehistory
setopt extendedhistory

# superglobs
setopt extendedglob
unsetopt caseglob

setopt interactivecomments # pound sign in interactive prompt

setopt auto_cd

alias 'a=sudo aptitude'
alias 'ai=sudo aptitude install'
alias 'ar=sudo aptitude remove'
alias 'au=sudo aptitude update'
alias 'ag=sudo aptitude safe-upgrade'
alias 'as=apt-cache search'
alias 'aw=apt-cache show'
alias 'ad=sudo apt-get dist-upgrade'

function apt-list-packages {
  dpkg-query -W --showformat='${Installed-Size} ${Package} ${Status}\n' | grep -v deinstall | sort -n | awk '{print $1" "$2}'
}

# TMUX
if [[ $TERM == "screen" ]]; then
    # If inside tmux session then print MOTD
    MOTD=/etc/motd.tcl
    if [ -f $MOTD ]; then
        $MOTD
    fi
else
    # Attempt to discover a detached session and attach it, else create a new session
    CURRENT_USER=$(whoami)
    if tmux has-session -t $CURRENT_USER 2>/dev/null; then
        tmux attach-session -t $CURRENT_USER
    else
        tmux new-session -s $CURRENT_USER
    fi
fi
