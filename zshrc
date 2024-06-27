export TMUX_PROGRAM="/usr/bin/tmux"
export TMUX_CONF="$HOME/.tmux.conf"
export TMUX_CONF_LOCAL="$HOME/.tmux.conf.local"
export ZSH="$HOME/.oh-my-zsh"
export JUPYTERLAB_DIR=$HOME/.local/share/jupyter/lab
export FZF_DEFAULT_COMMAND="find -L"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent
export GPG_TTY="$(tty)"
gpg-connect-agent updatestartuptty /bye >/dev/null
# export TERM=xterm
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="agnoster"
ZSH_THEME="robbyrussell"

plugins=(
    git
    poetry
    poetry-env
    z
    zsh-autosuggestions
    mosh
    kubectl
    python
    you-should-use
		zsh-syntax-highlighting
)
zstyle ':omz:update' mode reminder

source $ZSH/oh-my-zsh.sh
source $HOME/.cargo/env

# if tmux is executable and not inside a tmux session, then try to attach.
# if attachment fails, start a new session
[ -x "$(command -v tmux)" ] \
  && [ -z "${TMUX}" ] \
  && { tmux attach || tmux; } >/dev/null 2>&1

alias v="vifm"
alias "la"="ls -lah"
alias hh="history"
alias clr="clear"
alias vi="vim"
alias su='sudo'
alias grep='grep --colour=auto'
alias lock='$HOME/code/Shell/lock.sh'
alias e='exit'
alias python='python3'
alias i="ipython3"
alias redis="iredis"
alias mosh='mosh --no-init'
alias ls='exa'
alias ll='exa -l'
alias la='exa -la'
alias cat="batcat"
alias gpg="gpg2"
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
alias pn=pnpm

export EDITOR='/usr/bin/nvim'
export GIT_EDITOR='/usr/bin/nvim'
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/share/solana/install/active_release/bin:$PATH"
export PATH="$PATH:/usr/local/go/bin"
export PATH="$HOME/go/bin:$PATH"
export PATH="$PATH:$HOME/.zokrates/bin"
export PATH="$HOME/.qlot/bin:$PATH"

withenv () {
    env_file="$1"
    cmd="${@:2}"
    zsh -c "source $env_file && $cmd"
}

NPM_PACKAGES="${HOME}/.npm-packages"
export PATH="$PATH:$NPM_PACKAGES/bin"
export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$PATH:$HOME/.foundry/bin"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# ngrok
if command -v ngrok &>/dev/null; then
  eval "$(ngrok completion)"
fi
# ngrok end
. "$HOME/.cargo/env"

function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

function htt() {
  httpyac $1 --json -a | jq -r ".requests[0].response.body" | jq | bat --language=json
}
