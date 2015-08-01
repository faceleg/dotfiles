# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish
set -x SHELL /usr/local/bin/fish
# eval "(docker-machine env local)" 

# Path to your custom folder (default path is ~/.oh-my-fish/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

# Custom plugins and themes may be added to ~/.oh-my-fish/custom
# Plugins and themes can be found at https://github.com/oh-my-fish/
# Theme 'jacaetevha'
Theme 'dangerous'
Plugin 'theme'
Plugin 'brew'
Plugin 'jump'
Plugin 'git-flow'
Plugin 'gi'
Plugin 'pbcopy'
Plugin 'rvm'
Plugin 'localhost'

# brew install grc
# grc_1.9.orig.tar.gz
Plugin 'grc'

# Tmux
Plugin 'tmux'
begin
  tmux has-session -t remote
  and tmux attach-session -t remote
end
or begin
  tmux new-session -s remote
  and kill %self
end

# NVM
function nvm
  if test -e ~/.nvm/nvm.sh
    bass source ~/.nvm/nvm.sh ';' nvm $argv
  else
    bass source /usr/local/opt/nvm/nvm.sh ';' nvm $argv
  end
end

# Base16 Shell
eval sh $HOME/.config/base16-shell/base16-colors.dark.sh

# Bash refugees
function sudo
  if test "$argv" = !!
    eval command sudo $history[1]
  else
    command sudo $argv
  end
end

function history_merge -e fish_postexec
  history --merge
end

# Aliases
alias takeover="tmux detach -a"

# git related shortcuts
alias undopush="git push -f origin HEAD^:master"
alias gd="git diff"
alias gdc="git diff --cached"
alias ga="git add"
alias gca="git commit -a -m"
alias gcm="git commit -m"
alias gbd="git branch -D"
alias gst="git status -sb --ignore-submodules"
alias gm="git merge --no-ff"
alias gpt="git push --tags"
alias gp="git push"
alias grs="git reset --soft"
alias grh="git reset --hard"
alias gb="git branch"
alias gcob="git checkout -b"
alias gco="git checkout"
alias gba="git branch -a"
alias gcp="git cherry-pick"
alias gl="git lg"
alias gpom="git pull origin master"
# turn on coloring on grep
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Quick check running state of a process
alias psef="ps -ef | grep "
alias top="top -o cpu"
alias ps="command ps -SAcr -o 'uid,pid,ppid,time,rss,command'"

if [ -d "$ANTIGEN/.git" ]; thenrgv; end
function tree2; tree --dirsfirst -ChFLQ 2 $argv; end
function tree3; tree --dirsfirst -ChFLQ 3 $argv; end
function tree4; tree --dirsfirst -ChFLQ 4 $argv; end
function tree5; tree --dirsfirst -ChFLQ 5 $argv; end
function tree6; tree --dirsfirst -ChFLQ 6 $argv; end

set -U fish_key_bindings fish_vi_key_bindings

set DOCKER_TLS_VERIFY "1"
set DOCKER_HOST "tcp://192.168.99.100:2376"
set DOCKER_CERT_PATH "/Users/faceleg/.docker/machine/machines/local"
set DOCKER_MACHINE_NAME "local"

