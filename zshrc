export ZSH="/home/$USER/.oh-my-zsh"
export JUPYTERLAB_DIR=$HOME/.local/share/jupyter/lab
export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="agnoster"
ZSH_THEME="robbyrussell"

plugins=(
    git
    poetry
)

source $ZSH/oh-my-zsh.sh
source $HOME/.cargo/env

# if tmux is executable and not inside a tmux session, then try to attach.
# if attachment fails, start a new session
# [ -x "$(command -v tmux)" ] \
#   && [ -z "${TMUX}" ] \
#   && { tmux attach || tmux; } >/dev/null 2>&1

alias "la"="ls -lah"
alias hh="history"
alias clr="clear"
alias vi="vim"
alias su='sudo'
alias grep='grep --colour=auto'
alias lock='$HOME/code/Shell/lock.sh'
alias e='exit'
alias python='python3'
alias mosh='mosh --no-init'

export EDITOR='/usr/bin/nvim'
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/home/$USER/.local/bin:$PATH"
export PATH="$HOME/.poetry/bin:$PATH"
export PATH="/home/creator/.local/share/solana/install/active_release/bin:$PATH"

withenv () {
    env_file="$1"
    cmd="${@:2}"
    zsh -c "source $env_file && $cmd"
}
