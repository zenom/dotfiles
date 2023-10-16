if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx EDITOR nvim
set -gx VISUAL nvim

switch (uname -m) 
  case arm64
    set -gx BREW_PATH '/opt/homebrew/bin/brew'
  case intel
    set -gx BREW_PATH '/usr/local/bin/brew'
  case '*'
    set -gx BREW_PATH '/usr/local/bin/brew'
end

set -gx HOMEBREW_REPOSITORY $($BREW_PATH --prefix)
set -gx HOMEBREW_CELLAR "$HOMEBREW_REPOSITORY/Cellar";
set -gx PATH "$HOME/.local/bin:$HOMEBREW_REPOSITORY/bin:$HOMEBREW_REPOSITORY/sbin$PATH+:$PATH";
set -gx MANPATH "$HOMEBREW_REPOSITORY/share/man$MANPATH+:$MANPATH:";
set -gx INFOPATH "$HOMEBREW_REPOSITORY/share/info:$INFOPATH:-";
set -gx PATH "$HOME/.asdf/bin:$HOME/.asdf/shims$PATH+:$PATH";
set -gx XDG_CONFIG_HOME "$HOME/.config";
set -gx XDG_DATA_HOME "$XDG_CONFIG_HOME/.local/share"
set -gx XDG_CACHE_HOME "$XDG_CONFIG_HOME/.cache"

# setup asdf
source $($BREW_PATH --prefix)/opt/asdf/libexec/asdf.fish

# starship
starship init fish | source

# local variables
if test -f $HOME/.local.fish
  source $HOME/.local.fish
end
