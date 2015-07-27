# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

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

# brew install grc
# grc_1.9.orig.tar.gz
Plugin 'grc'
Plugin 'tmux'

begin
    tmux has-session -t remote
    and tmux attach-session -t remote
end
or begin
    tmux new-session -s remote
    and kill %self
end

function nvm
    if test -e ~/.nvm/nvm.sh
      bass source ~/.nvm/nvm.sh ';' nvm $argv
    else
      bass source /usr/local/opt/nvm/nvm.sh ';' nvm $argv
    end
end

# Base16 Shell
eval sh $HOME/.config/base16-shell/base16-colors.dark.sh

# Aliases

################################
###  Program ShortCut
################################

# git related shortcut
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

fish_vi_mode
