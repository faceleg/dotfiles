# Ensure fisherman and plugins are installed
if not test -f $HOME/.config/fish/functions/fisher.fish
  echo "==> Fisherman not found.  Installing."
  curl -sLo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher
  fisher
end

function fish_mode_prompt; end

set -g fish_key_bindings fish_vi_key_bindings

alias gd='git diff'
alias gama='git commit --amend -a'

set POSTGRES_BIN_PATH_MACOS /Applications/Postgres.app/Contents/Versions/9.5/bin/
if test -d "$POSTGRES_BIN_PATH_MACOS"
    set PATH "$POSTGRES_BIN_PATH_MACOS" $PATH
end

function fish_greeting
    cat ~/.config/fish/logo.txt
end

if command -v tmux>/dev/null; and test -z $TMUX;
    # tmux has-session -t faceleg; and tmux attach-session -t faceleg; or tmux new-session -s faceleg; and kill %self
    tmux has-session -t faceleg; and tmux attach-session -t faceleg; or tmux new-session -s faceleg;
    echo "tmux failed to start; using plain fish shell"
end


# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/michaelrobinson/Work/Repositories/serverless/node_modules/tabtab/.completions/serverless.fish ]; and . /Users/michaelrobinson/Work/Repositories/serverless/node_modules/tabtab/.completions/serverless.fish
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /Users/michaelrobinson/Work/Repositories/serverless/node_modules/tabtab/.completions/sls.fish ]; and . /Users/michaelrobinson/Work/Repositories/serverless/node_modules/tabtab/.completions/sls.fish

set -x USER_BASE_PATH (python -m site --user-base)
set -gx PATH $USER_BASE_PATH/bin $PATH
set -x ANDROID_SDK /Users/michaelrobinson/Library/Android/sdk
set -gx PATH $ANDROID_SDK/platform-tools $PATH
set -x JAVA_HOME /Library/Java/JavaVirtualMachines/jdk1.8.0_181.jdk/Contents/Home  
set -x ANDROID_HOME  /Users/michaelrobinson/Library/Android/sdk 
