# Ensure fisherman and plugins are installed
if not test -f $HOME/.config/fish/functions/fisher.fish
  echo "==> Fisherman not found.  Installing."
  curl -sLo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher
  fisher
end

function fish_mode_prompt; end

set -g fish_key_bindings fish_vi_key_bindings

function fuck
    thefuck $history[2] | source
end

##----GIT------
alias g='git'
alias f='fuck'
alias gd='git diff'
alias gama='git commit --amend -a'

set POSTGRES_BIN_PATH_MACOS /Applications/Postgres.app/Contents/Versions/9.5/bin/
if test -d "$POSTGRES_BIN_PATH_MACOS"
    set PATH "$POSTGRES_BIN_PATH_MACOS" $PATH
end

function fish_greeting
    cat ~/.config/fish/logo.txt
end

# if command -v tmux>/dev/null; and test -z $TMUX;
#     # tmux has-session -t faceleg; and tmux attach-session -t faceleg; or tmux new-session -s faceleg; and kill %self
#     tmux has-session -t faceleg; and tmux attach-session -t faceleg; or tmux new-session -s faceleg;
#     echo "tmux failed to start; using plain fish shell"
# end

