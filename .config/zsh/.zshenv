#
# Defines environment variables.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ ( "$SHLVL" -eq 1 && ! -o LOGIN ) && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

export EDITOR="nvim"
export VISUAL="nvim"

if [[ $(uname -m) == 'arm64' ]]; then
  export BREW_PATH='/opt/homebrew/bin/brew'
else 
  export BREW_PATH='/usr/local/bin/brew'
fi

export HOMEBREW_REPOSITORY=$(${BREW_PATH} --prefix)
export HOMEBREW_CELLAR="${HOMEBREW_REPOSITORY}/Cellar";
export PATH="$HOME/.local/bin:$HOMEBREW_REPOSITORY/bin:$HOMEBREW_REPOSITORY/sbin${PATH+:$PATH}";
export PATH="$HOMEBREW_REPOSITORY/share/zsh/site-functions:${PATH+:$PATH}"
export MANPATH="$HOMEBREW_REPOSITORY/share/man${MANPATH+:$MANPATH}:";
export INFOPATH="$HOMEBREW_REPOSITORY/share/info:${INFOPATH:-}";
export PATH="$HOME/.asdf/bin:$HOME/.asdf/shims${PATH+:$PATH}"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$XDG_CONFIG_HOME/.local/share"
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/.cache"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$ZDOTDIR/.zhistory"    # History filepath
export HISTSIZE=10000                   # Maximum events for internal history
export SAVEHIST=10000                   # Maximum events in history file
export EDITOR="nvim"
export VISUAL="nvim"

. $(${BREW_PATH} --prefix)/opt/asdf/libexec/asdf.sh

if [[ -f "${HOME}/.zshrc.local" ]]; then
  source "${HOME}/.zshrc.local"
fi

if [[ -f "${ZDOTDIR}/.aliases" ]]; then
  source "${ZDOTDIR}/.aliases"
fi

if [[ -f "${ZDOTDIR}/.p10k.zsh" ]]; then
  source "${ZDOTDIR}/.p10k.zsh"
fi
