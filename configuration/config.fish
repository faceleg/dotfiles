# Ensure fisherman and plugins are installed
if not test -f $HOME/.config/fish/functions/fisher.fish
  echo "==> Fisherman not found.  Installing."
  curl -sLo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher
  fisher
end

function fish_mode_prompt; end

set -g fish_key_bindings fish_vi_key_bindings

##----GIT------
alias gs='clear ;and git status'
alias gb='git branch'
alias gbranch='git rev-parse --abbrev-ref HEAD' #get current branch name
alias gl="clear ;and git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' b--abbrev-commit"
alias gt='git tag'
alias grm='git rm'
alias gps='git push'
alias gbi='git bisect'
alias gbg='git bisect good'
alias gbb='git bisect bad'
alias gco='git checkout'
alias gp='git pull'
alias gr='git rebase'
alias gri='git rebase -i'
alias gst='git status'
alias g='git'

function fish_greeting
    cat ~/.config/fish/logo.txt
end