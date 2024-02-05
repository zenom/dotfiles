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
set -gx PATH "$HOME/.asdf:$PATH"
set -gx MANPATH "$HOMEBREW_REPOSITORY/share/man$MANPATH+:$MANPATH:";
set -gx INFOPATH "$HOMEBREW_REPOSITORY/share/info:$INFOPATH:-";
set -gx XDG_CONFIG_HOME "$HOME/.config";
set -gx XDG_DATA_HOME "$XDG_CONFIG_HOME/.local/share"
set -gx XDG_CACHE_HOME "$XDG_CONFIG_HOME/.cache"

# TokyoNight Color Palette
set -l foreground c8d3f5
set -l selection 2d3f76
set -l comment 636da6
set -l red ff757f
set -l orange ff966c
set -l yellow ffc777
set -l green c3e88d
set -l purple fca7ea
set -l cyan 86e1fc
set -l pink c099ff

# Syntax Highlighting Colors
set -g fish_color_normal $foreground
set -g fish_color_command $cyan
set -g fish_color_keyword $pink
set -g fish_color_quote $yellow
set -g fish_color_redirection $foreground
set -g fish_color_end $orange
set -g fish_color_error $red
set -g fish_color_param $purple
set -g fish_color_comment $comment
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $green
set -g fish_color_escape $pink
set -g fish_color_autosuggestion $comment

# Completion Pager Colors
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $cyan
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment
set -g fish_pager_color_selected_background --background=$selection

# setup asdf
# source $($BREW_PATH --prefix)/opt/asdf/libexec/asdf.fish

if test -f $HOME/.asdf/asdf.fish
  source $HOME/.asdf/asdf.fish
end

# starship
starship init fish | source

# local variables
if test -f $HOME/.local.fish
  source $HOME/.local.fish
end

function fish_greeting
  echo 'Would you like to play a game?'
end
